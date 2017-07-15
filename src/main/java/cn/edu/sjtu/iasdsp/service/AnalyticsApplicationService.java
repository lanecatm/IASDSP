package cn.edu.sjtu.iasdsp.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dao.WikiReferenceHome;
import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WikiReference;

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

	public EditApplicationDto create() {
		logger.debug("Into create service");
		EditApplicationDto editApplicationDto = new EditApplicationDto();
		List<WikiPage> allWikiPages = wikiPageHome.findByExample(new WikiPage());
		editApplicationDto = addAllWikiPageChoices(editApplicationDto, allWikiPages);
		return editApplicationDto;
	}

	@Transactional
	public ShowApplicationDto save(EditApplicationDto editApplicationDto) {
		logger.debug("Into save service, param:" + editApplicationDto);
		// 创建WikiPage
		WikiPage wikiPage = new WikiPage(new Date(), new Date());
		WikiReference wikiReference = new WikiReference();

		ShowApplicationDto returnShowApplicationDto = new ShowApplicationDto();

		return returnShowApplicationDto;
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
	public void update(EditApplicationDto editApplicationDto) {
		logger.debug("Into update service, param:" + editApplicationDto);
		// TODO 获取当前用户
		User user = userHome.findById(1);

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

		wikiPageHome.attachDirty(wikiPage);

	}

	public void delete() {

	}

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
		String userName = wikiPage.getUserByCreatorId() == null ? "Author"
				: wikiPage.getUserByCreatorId().getUserName();
		ShowApplicationDto showApplicationDto = new ShowApplicationDto(wikiPage.getTitle(), wikiPage.getCreatedAt(),
				userName, wikiPage.getContent(), wikiPage.getPath(), wikiPage.getWikiReferences(),
				wikiPage.getWorkflowInformations(), wikiPage.getRelatedWikiPages());

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
		String path = title.replaceAll("[^a-zA-Z\\s]", "_");
		logger.info("to " + path);
		return path;

	}

}
