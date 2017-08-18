package cn.edu.sjtu.iasdsp.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

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
import cn.edu.sjtu.iasdsp.model.NodeOption;
import cn.edu.sjtu.iasdsp.model.WikiPage;
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
		
		
		
		List<WikiPage> wikiPageList = wikiPageHome.findByExample(new WikiPage());
		Collections.sort(wikiPageList, new Comparator<WikiPage>() {
			public int compare(WikiPage p1, WikiPage p2) {
				return p2.getId().compareTo(p1.getId());
			}
		});
		
		int wikiPageIndex = 0;
		for(WikiPage wikiPage: wikiPageList){
			showHomePageDto.getPopularWikiPageList().add(wikiPage);
			showHomePageDto.getLatestWikiPageList().add(wikiPage);

			++wikiPageIndex;
			if(wikiPageIndex >= 4){
				break;
			}
		}
	
		List<WorkflowInformation> workflowInformationList = workflowInformationHome.findByExample(new WorkflowInformation());
		Collections.sort(workflowInformationList, new Comparator<WorkflowInformation>() {
			public int compare(WorkflowInformation p1, WorkflowInformation p2) {
				return p2.getId().compareTo(p1.getId());
			}
		});
		
		int workflowInfromationIndex = 0;
		for(WorkflowInformation workflowInformation: workflowInformationList){
			showHomePageDto.getPopularWorkflowInformationList().add(workflowInformation);
			showHomePageDto.getLatestWorkflowInformationList().add(workflowInformation);

			++workflowInfromationIndex;
			if(workflowInfromationIndex >= 4){
				break;
			}
		}
		
		
		logger.debug("show succ, return" + showHomePageDto);
		return showHomePageDto;
	}

}