package cn.edu.sjtu.iasdsp.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dao.WikiReferenceHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowInformationHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowPerformanceHome;
import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.EditPerformanceDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.model.SharedProcessRecord;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WikiReference;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;
import cn.edu.sjtu.iasdsp.model.WorkflowPerformance;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月2日 下午10:45:17
 * @version Introduction
 */

@Service
public class AnalyticsApplicationService {

	private static final Log logger = LogFactory.getLog(AnalyticsApplicationService.class);

	@Autowired
	private WikiPageHome wikiPageHome;
	@Autowired
	private UserHome userHome;
	@Autowired
	private WikiReferenceHome wikiReferenceHome;
	@Autowired
	private WorkflowInformationHome workflowInformationHome;
	@Autowired
	private WorkflowPerformanceHome workflowPerformanceHome;
	@Autowired
	private DeleteService deleteService;

	@Transactional
	public EditApplicationDto create() {
		logger.debug("Into create service");
		EditApplicationDto editApplicationDto = new EditApplicationDto();
		List<WikiPage> allWikiPages = wikiPageHome.findByExample(new WikiPage());
		editApplicationDto = addAllWikiPageChoices(editApplicationDto, allWikiPages);
		return editApplicationDto;
	}

	// return whether have same name page or not
	@Transactional
	public String save(EditApplicationDto editApplicationDto, User user) throws Exception {
		logger.debug("Into save service, param:" + editApplicationDto);
		try {
			// 创建WikiPage
			if (editApplicationDto.getTitle() == null || editApplicationDto.getTitle().equals("")) {
				logger.debug("Save service, cannot create wikiPage because of title:" + editApplicationDto.getTitle());
				return null;
			}
			String path = changeTitleIntoPath(editApplicationDto.getTitle());
			WikiPage wikiPage = new WikiPage();
			wikiPage.setPath(path);
			List<WikiPage> wikiPageList = wikiPageHome.findByExample(wikiPage);
			if (wikiPageList.size() != 0) {
				logger.debug("Save service, cannot create wikiPage because of path exist, editApplicationDto:"
						+ editApplicationDto + " find wikiPageList:" + wikiPageList);
				return null;
			}
			logger.debug("Save service, set param");
			wikiPage.setTitle(editApplicationDto.getTitle());
			wikiPage.setContent(editApplicationDto.getIntroduction());
			wikiPage.setCreatedAt(new Date());
			wikiPage.setUpdatedAt(new Date());

			wikiPage.setUserByCreatorId(user);
			wikiPage.setUserByUpdatorId(user);
			wikiPage.getContributors().add(user);

			// TODO 增加wikiCategory
			// wikiPage.setWikiCategory(wikiCategory);
			logger.debug("Save service, add related wikiPage:" + editApplicationDto.getRelatedWikiPageList());
			for (WikiPage relatedWikiPage : editApplicationDto.getRelatedWikiPageList()) {
				if (relatedWikiPage.getId() != null) {
					WikiPage addWikiPage = wikiPageHome.findById(relatedWikiPage.getId());
					if (addWikiPage != null) {
						wikiPage.getRelatedWikiPages().add(addWikiPage);
						logger.debug("Save service, add related wikiPage:" + addWikiPage);
					} else {
						logger.error("Save service, cannot find related wikiPage:" + relatedWikiPage);
					}
				}
			}
			logger.debug("Save service, persist wikiPage");
			wikiPageHome.persist(wikiPage);
			logger.debug("Save service, persist wikiPage succ");

			logger.debug("Save service, add reference:" + editApplicationDto.getReferenceList());
			for (WikiReference reference : editApplicationDto.getReferenceList()) {
				if (reference.getId() != null) {
					reference.setId(null);
					reference.setUpdatedAt(new Date());
					reference.setCreatedAt(new Date());
					reference.setWikiPage(wikiPage);
					wikiReferenceHome.persist(reference);
				}
			}

			logger.debug("Save service succ");
			return path;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug("Save service failed");
			throw e;
		}
	}

	@Transactional
	public ShowApplicationDto show(String wikiPath) {
		logger.debug("Into show service, param:" + wikiPath);
		WikiPage wikiPage = find(wikiPath);
		return wikiPageToShowApplicationDto(wikiPage);

	}

	@Transactional
	public EditApplicationDto edit(String wikiPath) {
		logger.debug("Into edit service, param:" + wikiPath);
		WikiPage wikiPage = find(wikiPath);
		List<WikiPage> allWikiPages = wikiPageHome.findByExample(new WikiPage());
		EditApplicationDto editApplicationDto = wikiPageToEditApplicationDto(wikiPage);
		editApplicationDto = addAllWikiPageChoices(editApplicationDto, allWikiPages);
		return editApplicationDto;
	}

	@Transactional
	public void update(EditApplicationDto editApplicationDto, User user) {
		logger.debug("Into update service, param:" + editApplicationDto);
		WikiPage wikiPage = wikiPageHome.findById(editApplicationDto.getWikiPageId());
		if (wikiPage == null) {
			logger.error("Can not find a wikiPage id:" + editApplicationDto.getWikiPageId());
			throw new NullPointerException("Can not find a wikiPage id:" + editApplicationDto.getWikiPageId());
		}

		wikiPage.setUserByUpdatorId(user);
		wikiPage.setContent(editApplicationDto.getIntroduction());
		wikiPage.setUpdatedAt(new Date());

		saveReferencelist(wikiPage, editApplicationDto.getReferenceList());
		saveRelatedPageList(wikiPage, editApplicationDto.getRelatedWikiPageList());
		addContributor(user, wikiPage);
		wikiPageHome.attachDirty(wikiPage);

	}

	@Transactional
	public boolean delete(String wikiPath) {
		logger.debug("Into delete service, param:" + wikiPath);
		WikiPage wikiPage = find(wikiPath);

		if (wikiPage == null) {
			return false;
		} else {
			deleteService.deleteWikiPage(wikiPage);
			return true;
		}
	}

	@Transactional
	public EditPerformanceDto editPerformance(EditPerformanceDto editPerformanceDto, User user) {
		logger.debug("Into editPerformance service, param:" + editPerformanceDto);

		WorkflowInformation workflowInformation = workflowInformationHome
				.findById(editPerformanceDto.getWorkflowInformationId());
		WikiPage wikiPage = wikiPageHome.findById(editPerformanceDto.getWikiPageId());
		if (workflowInformation == null) {
			logger.error("can not find workflow information:" + editPerformanceDto.getWorkflowInformationId());
			throw (new NullPointerException(
					"can not find workflow information:" + editPerformanceDto.getWorkflowInformationId()));
		}
		if (wikiPage == null) {
			logger.error("can not find wikiPage:" + editPerformanceDto.getWikiPageId());
			throw (new NullPointerException("can not find wikiPage:" + editPerformanceDto.getWikiPageId()));
		}

		addContributor(user, wikiPage);

		List<WorkflowPerformance> workflowPerformanceList = workflowPerformanceHome
				.findByWikiPageIdAndWorkflowInformationId(wikiPage.getId(), workflowInformation.getId());
		WorkflowPerformance workflowPerformance = null;
		if (workflowPerformanceList.size() > 0) {
			workflowPerformance = workflowPerformanceList.get(0);
			logger.debug("use origin workflowPerformance, id:" + workflowPerformance.getId());
			workflowPerformance.setUpdatedAt(new Date());
			workflowPerformance.setContent(editPerformanceDto.getPerformance());
			workflowPerformanceHome.attachDirty(workflowPerformance);
		} else {
			logger.debug("create new workflowPerformance");
			workflowPerformance = new WorkflowPerformance();
			workflowPerformance.setUpdatedAt(new Date());
			workflowPerformance.setCreatedAt(new Date());
			workflowPerformance.setContent(editPerformanceDto.getPerformance());
			workflowPerformance.setWikiPage(wikiPage);
			workflowPerformance.setWorkflowInformation(workflowInformation);
			logger.debug("Try to Persist Performance, " + workflowPerformance);
			workflowPerformanceHome.persist(workflowPerformance);
		}
		logger.debug("EditPerformance succ, " + workflowPerformance);
		return editPerformanceDto;
	}

	@Transactional
	public void create(WikiPage wikiPage) {
		wikiPageHome.persist(wikiPage);
		// wikiPage.setContent("hello");
		// wikiPage = wikiPagesHome.merge(wikiPage);

	}

	private void saveRelatedPageList(WikiPage wikiPage, List<WikiPage> newWikiPageList) {
		logger.debug("update service, wikiPageList:" + newWikiPageList);

		List<WikiPage> relatedWikiPageList = new ArrayList<WikiPage>(wikiPage.getRelatedWikiPages());
		logger.debug("update service, origin wikiPageList:" + relatedWikiPageList);

		logger.debug("delete unused wikiPages");
		for (int i = relatedWikiPageList.size() - 1; i >= 0; --i) {
			WikiPage relatedWikiPage = relatedWikiPageList.get(i);

			boolean isFound = false;
			for (WikiPage wikiPageTmp : newWikiPageList) {
				if (wikiPageTmp.getId() == null || wikiPageTmp.getId() == wikiPage.getId()) {
					continue;
				}
				if (relatedWikiPage.getId() == wikiPageTmp.getId()) {
					isFound = true;
				}
			}
			if (!isFound) {
				logger.debug("delete wikiPage: " + relatedWikiPage);
				relatedWikiPageList.remove(i);
			}
		}
		logger.debug("insert new wikiPages");

		for (WikiPage wikiPageTmp : newWikiPageList) {
			if (wikiPageTmp.getId() == null || wikiPageTmp.getId() == wikiPage.getId()) {
				continue;
			}
			boolean isFound = false;
			for (WikiPage existedWikiPage : relatedWikiPageList) {
				if (existedWikiPage.getId() == wikiPageTmp.getId()) {
					isFound = true;
					continue;
				}
			}
			if (!isFound) {
				wikiPageTmp = wikiPageHome.findById(wikiPageTmp.getId());
				logger.debug("find from data base, try to insert wikiPage:" + wikiPageTmp);
				relatedWikiPageList.add(wikiPageTmp);
			}
		}

		wikiPage.setRelatedWikiPages(new HashSet<WikiPage>(relatedWikiPageList));
	}

	private void saveReferencelist(WikiPage wikiPage, List<WikiReference> newReferenceList) {
		logger.debug("update service, referenceList:" + newReferenceList);
		logger.debug("start to delete and update wiki references");
		for (WikiReference reference : wikiPage.getWikiReferences()) {
			logger.debug("now old reference:" + reference);
			int referneceId = reference.getId();
			boolean isFound = false;
			for (WikiReference referenceNew : newReferenceList) {
				logger.debug("now new reference:" + referenceNew);
				if (referenceNew.getId() == null) {
					continue;
				}
				if (referenceNew.getId() == referneceId) {
					logger.debug("try to update wiki references:" + reference);
					isFound = true;
					reference.setUpdatedAt(new Date());
					reference.setContent(referenceNew.getContent());
					reference.setUrl(referenceNew.getUrl());
					wikiReferenceHome.attachDirty(reference);
					logger.debug("update succ");
					break;
				}
			}
			if (!isFound) {
				logger.debug("try to delete wiki references:" + reference);
				wikiReferenceHome.delete(reference);
				logger.debug("delete succ");
			}
		}
		for (WikiReference reference : newReferenceList) {
			if (reference.getId() == null) {
				continue;
			}
			reference.setWikiPage(wikiPage);
			reference.setCreatedAt(new Date());
			reference.setUpdatedAt(new Date());

			if (reference.getId() < 0) {
				reference.setId(null);
				wikiReferenceHome.persist(reference);
			}
		}
	}

	private WikiPage find(String wikiPath) {
		logger.info("ShowApplicationDto find by wikiPath " + wikiPath);
		WikiPage wikiPageExample = new WikiPage();
		wikiPageExample.setPath(wikiPath);
		List<WikiPage> wikiPageList = wikiPageHome.findByExample(wikiPageExample);
		logger.info("ShowApplicationDto find wikiPageList size " + wikiPageList.size());

		if (wikiPageList.size() == 0) {
			return null;
		} else {
			return wikiPageList.get(0);
		}
	}

	public void remove(WikiPage wikiPage) {
		wikiPage = wikiPageHome.merge(wikiPage);
		wikiPageHome.delete(wikiPage);
	}

	private ShowApplicationDto wikiPageToShowApplicationDto(WikiPage wikiPage) {
		if (wikiPage == null) {
			return new ShowApplicationDto();
		}
		// String userName = wikiPage.getUserByCreatorId() == null ? "Author"
		// : wikiPage.getUserByCreatorId().getUserName();
		ShowApplicationDto showApplicationDto = new ShowApplicationDto();
		for (WorkflowPerformance workflowPerformance : wikiPage.getWorkflowPerformances()) {
			if (workflowPerformance.getWorkflowInformation() == null) {
				logger.error("Can not find workflowPerformance belongs to which workflowinformation, "
						+ workflowPerformance);
				continue;
			}
			showApplicationDto.getPerformanceMap().put(workflowPerformance.getWorkflowInformation().getId(),
					workflowPerformance.getContent());
		}
		for (SharedProcessRecord sharedProcessRecord : wikiPage.getSharedProcessRecords()) {
			int workflowInformationId = sharedProcessRecord.getWorkflowInformation().getId();
			if (!showApplicationDto.getShareRecordMap().containsKey(workflowInformationId)) {
				showApplicationDto.getShareRecordMap().put(workflowInformationId, new ArrayList<SharedProcessRecord>());
			}
			showApplicationDto.getShareRecordMap().get(workflowInformationId).add(sharedProcessRecord);
		}
		showApplicationDto.setWikiPage(wikiPage);
		return showApplicationDto;
	}

	private EditApplicationDto wikiPageToEditApplicationDto(WikiPage wikiPage) {
		logger.debug("Into wikiPageToEditApplicationDto param:" + wikiPage);
		EditApplicationDto editApplicationDto = new EditApplicationDto(wikiPage.getId(), wikiPage.getTitle(),
				wikiPage.getContent(), wikiPage.getWikiReferences(), wikiPage.getRelatedWikiPages());

		logger.debug("wikiPageToEditApplicationDto return:" + editApplicationDto);
		return editApplicationDto;
	}

	private EditApplicationDto addAllWikiPageChoices(EditApplicationDto editApplicationDto,
			List<WikiPage> allWikiPages) {
		logger.debug("Into addAllWikiPageChoices param:" + editApplicationDto);

		for (WikiPage wikiPageTmp : allWikiPages) {
			editApplicationDto.getAllWikiPageList().put(wikiPageTmp.getId(), wikiPageTmp.getTitle());
		}
		logger.debug("addAllWikiPageChoices return:" + editApplicationDto);
		return editApplicationDto;
	}

	// 在创建新的wikiPage时使用
	private String changeTitleIntoPath(String title) {
		logger.info("generate path from title " + title);
		String path = title.replaceAll("[^a-zA-Z0-9]", "_");
		logger.info("to " + path);
		return path;

	}

	private void addContributor(User user, WikiPage wikiPage) {
		Set<User> contributors = wikiPage.getContributors();
		boolean isFound = false;
		for (User contributor : contributors) {
			if (user.getId() == contributor.getId()) {
				isFound = true;
				break;
			}
		}
		if (!isFound) {
			wikiPage.getContributors().add(user);
		}
	}

}
