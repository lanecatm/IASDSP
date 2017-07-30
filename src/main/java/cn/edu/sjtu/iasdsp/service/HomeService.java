package cn.edu.sjtu.iasdsp.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dao.WikiReferenceHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowInformationHome;
import cn.edu.sjtu.iasdsp.dto.ShowHomePageDto;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月16日 下午1:52:35
* @version 
* Introduction
*/
@Service
public class HomeService {

	private static final Log logger = LogFactory.getLog(HomeService.class);

	@Autowired
	private WikiPageHome wikiPageHome;
	
	@Autowired
	private UserHome userHome;
	
	@Autowired
	private WorkflowInformationHome workflowInformationHome;
	
	@Transactional
	public ShowHomePageDto show(){
		logger.debug("into show function");
		ShowHomePageDto showHomePageDto = new ShowHomePageDto();
		showHomePageDto.getPopularWikiPageList().add(wikiPageHome.findById(33));
		showHomePageDto.getPopularWikiPageList().add(wikiPageHome.findById(35));
		showHomePageDto.getPopularWikiPageList().add(wikiPageHome.findById(36));
		showHomePageDto.getPopularWikiPageList().add(wikiPageHome.findById(37));
		
		showHomePageDto.getPopularWikiPageImageUrlList().add("/resources/image/cpu.png");
		showHomePageDto.getPopularWikiPageImageUrlList().add("/resources/image/memory.jpg");
		showHomePageDto.getPopularWikiPageImageUrlList().add("/resources/image/stock.png");
		showHomePageDto.getPopularWikiPageImageUrlList().add("/resources/image/user.jpg");
		
		showHomePageDto.getLatestWikiPageList().add(wikiPageHome.findById(33));
		showHomePageDto.getLatestWikiPageList().add(wikiPageHome.findById(35));
		showHomePageDto.getLatestWikiPageList().add(wikiPageHome.findById(36));
		showHomePageDto.getLatestWikiPageList().add(wikiPageHome.findById(37));
		
		showHomePageDto.getLatestWikiPageImageUrlList().add("/resources/image/cpu.png");
		showHomePageDto.getLatestWikiPageImageUrlList().add("/resources/image/memory.jpg");
		showHomePageDto.getLatestWikiPageImageUrlList().add("/resources/image/stock.png");
		showHomePageDto.getLatestWikiPageImageUrlList().add("/resources/image/user.jpg");
		
		showHomePageDto.getPopularWorkflowInformationList().add(workflowInformationHome.findById(3));
		showHomePageDto.getPopularWorkflowInformationList().add(workflowInformationHome.findById(3));
		showHomePageDto.getPopularWorkflowInformationList().add(workflowInformationHome.findById(3));
		
		showHomePageDto.getPopularWorkflowInformationImageUrlList().add("/resources/image/Example1.png");
		showHomePageDto.getPopularWorkflowInformationImageUrlList().add("/resources/image/Example1.png");
		showHomePageDto.getPopularWorkflowInformationImageUrlList().add("/resources/image/Example1.png");
		
		showHomePageDto.getLatestWorkflowInformationList().add(workflowInformationHome.findById(74));
		showHomePageDto.getLatestWorkflowInformationList().add(workflowInformationHome.findById(70));
		showHomePageDto.getLatestWorkflowInformationList().add(workflowInformationHome.findById(20));
		
		
		showHomePageDto.getLatestWorkflowInformationImageUrlList().add("/resources/image/Example1.png");
		showHomePageDto.getLatestWorkflowInformationImageUrlList().add("/resources/image/Example1.png");
		showHomePageDto.getLatestWorkflowInformationImageUrlList().add("/resources/image/Example1.png");
		
		logger.debug("show succ, return" + showHomePageDto);
		return showHomePageDto;
	}

}