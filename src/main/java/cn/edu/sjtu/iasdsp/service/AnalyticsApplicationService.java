package cn.edu.sjtu.iasdsp.service;

import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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

	@Transactional
	public EditApplicationDto create() {
		logger.debug("Create EditApplicationDto for show");
		EditApplicationDto editApplicationDto = new EditApplicationDto();
		return editApplicationDto;
	}

	@Transactional
	public ShowApplicationDto create(EditApplicationDto editApplicationDto) {
		logger.debug("Create EditApplicationDto");
		// 创建WikiPage
		WikiPage wikiPage = new WikiPage(new Date(), new Date());
		WikiReference wikiReference = new WikiReference();

		ShowApplicationDto returnShowApplicationDto = new ShowApplicationDto();

		return returnShowApplicationDto;
	}

	public ShowApplicationDto show(String wikiPath) {
		logger.debug("Into AnalyticsApplicationService Show Function");
		return find(wikiPath);

	}

	public EditApplicationDto edit(String wikiPath) {
		logger.debug("Into AnalyticsApplicationService edit Function");
		ShowApplicationDto showApplicationDto = find(wikiPath);
		EditApplicationDto editApplicationDto = new EditApplicationDto(showApplicationDto.getTitle(),
				showApplicationDto.getIntroduction(), showApplicationDto.getReferenceList(),
				showApplicationDto.getRelatedWikiPageList(), showApplicationDto);
		return editApplicationDto;
	}

	public void update(EditApplicationDto editApplicationDto) {
		logger.debug("Into AnalyticsApplicationService update Function");
		// TODO 获取当前用户
		User user = userHome.findById(1);
		String path = changeTitleIntoPath(editApplicationDto.getTitle());
		WikiPage wikiPage = new WikiPage(user, user, path, editApplicationDto.getTitle(),
				editApplicationDto.getIntroduction(), new Date(), new Date());
		create(wikiPage);

	}

	public void delete() {

	}

	@Transactional
	public void create(WikiPage wikiPage) {
		wikiPageHome.persist(wikiPage);
		// wikiPage.setContent("hello");
		// wikiPage = wikiPagesHome.merge(wikiPage);

	}

	@Transactional
	private ShowApplicationDto find(String wikiPath) {
		logger.info("ShowApplicationDto find by wikiPath " + wikiPath);
		WikiPage wikiPageExample = new WikiPage();
		wikiPageExample.setPath(wikiPath);
		List<WikiPage> wikiPageList = wikiPageHome.findByExample(wikiPageExample);
		logger.info("ShowApplicationDto find wikiPageList size " + wikiPageList.size());

		if (wikiPageList.size() == 0) {
			return new ShowApplicationDto();
		} else {
			WikiPage wikiPage = wikiPageList.get(0);
			String userName = wikiPage.getUserByCreatorId() == null ? "Author"
					: wikiPage.getUserByCreatorId().getUserName();
			ShowApplicationDto showApplicationDto = new ShowApplicationDto(wikiPage.getTitle(), wikiPage.getCreatedAt(),
					userName, wikiPage.getContent(), wikiPage.getWikiReferences(), wikiPage.getWorkflowInformations(),
					wikiPage.getRelatedWikiPages());
			// ShowApplicationDto showApplicationParams = new
			// ShowApplicationDto();
			return showApplicationDto;
		}
	}

	@Transactional
	public void remove(WikiPage wikiPage) {
		wikiPage = wikiPageHome.merge(wikiPage);
		wikiPageHome.delete(wikiPage);
	}

	private String changeTitleIntoPath(String title) {
		logger.debug("generate path from title " + title);
		String path = title.toLowerCase().replaceAll("[^a-zA-Z\\s]", "_");
		logger.debug("to " + path);
		return path;

	}

}
