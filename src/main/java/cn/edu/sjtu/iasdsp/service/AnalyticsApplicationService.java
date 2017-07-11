package cn.edu.sjtu.iasdsp.service;

import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
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


	public EditApplicationDto create() {
		logger.debug("Create EditApplicationDto for show");
		EditApplicationDto editApplicationDto = new EditApplicationDto();
		return editApplicationDto;
	}


	public ShowApplicationDto create(EditApplicationDto editApplicationDto) {
		logger.debug("Create EditApplicationDto");
		// 创建WikiPage
		WikiPage wikiPage = new WikiPage(new Date(), new Date());
		WikiReference wikiReference = new WikiReference();

		ShowApplicationDto returnShowApplicationDto = new ShowApplicationDto();

		return returnShowApplicationDto;
	}
	@Transactional
	public ShowApplicationDto show(String wikiPath) {
		logger.debug("Into AnalyticsApplicationService Show Function");
		WikiPage wikiPage = find(wikiPath);
		return wikiPageToShowApplicationDto(wikiPage);

	}

	@Transactional
	public EditApplicationDto edit(String wikiPath) {
		logger.debug("Into AnalyticsApplicationService edit Function");
		WikiPage wikiPage = find(wikiPath);

		ShowApplicationDto showApplicationDto = wikiPageToShowApplicationDto(wikiPage);
		EditApplicationDto editApplicationDto = new EditApplicationDto(showApplicationDto.getTitle(),
				showApplicationDto.getIntroduction(), showApplicationDto.getReferenceList(),
				showApplicationDto.getRelatedWikiPageList(), showApplicationDto);
		editApplicationDto.setWikiPageId(wikiPage.getId());
		return editApplicationDto;
	}

	@Transactional
	public void update(EditApplicationDto editApplicationDto) {
		logger.debug("Into AnalyticsApplicationService update Function");
		// TODO 获取当前用户
		User user = userHome.findById(1);
		
		
		//sString path = changeTitleIntoPath(editApplicationDto.getTitle());
		WikiPage wikiPage = wikiPageHome.findById(editApplicationDto.getWikiPageId());
		logger.debug("wikiPage id" + wikiPage.getId().toString());
		wikiPage.setUserByUpdatorId(user);
		wikiPage.setContent(editApplicationDto.getIntroduction());
		logger.debug("wikiPage introduction:" + wikiPage.getContent());
		wikiPage.setUpdatedAt(new Date());
		
		wikiPageHome.attachDirty(wikiPage);
		
		
	}

	public void delete() {

	}

	public void create(WikiPage wikiPage) {
		wikiPageHome.persist(wikiPage);
		// wikiPage.setContent("hello");
		// wikiPage = wikiPagesHome.merge(wikiPage);

	}

	@Transactional
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

	private ShowApplicationDto wikiPageToShowApplicationDto(WikiPage wikiPage) {
		if(wikiPage == null){
			return new ShowApplicationDto();
		}
		String userName = wikiPage.getUserByCreatorId() == null ? "Author"
				: wikiPage.getUserByCreatorId().getUserName();
		ShowApplicationDto showApplicationDto = new ShowApplicationDto(wikiPage.getTitle(), wikiPage.getCreatedAt(),
				userName, wikiPage.getContent(), wikiPage.getWikiReferences(), wikiPage.getWorkflowInformations(),
				wikiPage.getRelatedWikiPages());
		// ShowApplicationDto showApplicationParams = new
		// ShowApplicationDto();
		return showApplicationDto;
	}


	public void remove(WikiPage wikiPage) {
		wikiPage = wikiPageHome.merge(wikiPage);
		wikiPageHome.delete(wikiPage);
	}

	private String changeTitleIntoPath(String title) {
		logger.info("generate path from title " + title);
		String path = title.replaceAll("[^a-zA-Z\\s]", "_");
		logger.info("to " + path);
		return path;

	}

}
