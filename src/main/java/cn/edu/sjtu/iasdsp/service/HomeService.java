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
		showHomePageDto.getPopularWikiPageList().add(wikiPageHome.findById(249));
		showHomePageDto.getPopularWikiPageList().add(wikiPageHome.findById(37));
		

		
		showHomePageDto.getLatestWikiPageList().add(wikiPageHome.findById(33));
		showHomePageDto.getLatestWikiPageList().add(wikiPageHome.findById(35));
		showHomePageDto.getLatestWikiPageList().add(wikiPageHome.findById(249));
		showHomePageDto.getLatestWikiPageList().add(wikiPageHome.findById(37));
		

		
		showHomePageDto.getPopularWorkflowInformationList().add(workflowInformationHome.findById(3));
		showHomePageDto.getPopularWorkflowInformationList().add(workflowInformationHome.findById(3));
		showHomePageDto.getPopularWorkflowInformationList().add(workflowInformationHome.findById(3));

		
		showHomePageDto.getLatestWorkflowInformationList().add(workflowInformationHome.findById(74));
		showHomePageDto.getLatestWorkflowInformationList().add(workflowInformationHome.findById(70));
		showHomePageDto.getLatestWorkflowInformationList().add(workflowInformationHome.findById(20));
		

		
		logger.debug("show succ, return" + showHomePageDto);
		return showHomePageDto;
	}

}