package cn.edu.sjtu.iasdsp.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowInformationHome;
import cn.edu.sjtu.iasdsp.dto.SearchApplicationResultDto;
import cn.edu.sjtu.iasdsp.dto.SearchModelResultDto;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月2日 下午6:29:56
* @version 
* @Introduction 处理所有的搜索事务
*/
@Service
public class SearchService {
	private static final Logger logger = LoggerFactory.getLogger(SearchService.class);
	
	@Autowired
	private WikiPageHome wikiPageHome;
	
	@Autowired
	private WorkflowInformationHome workflowInformationHome;
	
	@Transactional
	public SearchApplicationResultDto searchAllApplication(){
		logger.debug("Into searchAllApplication");
		SearchApplicationResultDto searchApplicationResultDto = new SearchApplicationResultDto();
		searchApplicationResultDto.setWikiPageList(wikiPageHome.findByExample(new WikiPage()));
		logger.debug("Finish searchAllApplication succ, return:" + searchApplicationResultDto);
		return searchApplicationResultDto;
	}
	
	@Transactional
	public SearchModelResultDto searchAllModel(){
		logger.debug("Into searchAllModel");
		SearchModelResultDto searchModelResultDto = new SearchModelResultDto();
		searchModelResultDto.setWorkflowInformationList(workflowInformationHome.findByExample(new WorkflowInformation()));
		logger.debug("Finish searchAllModel succ, return:" + searchModelResultDto);
		return searchModelResultDto;
	}
	
	@Transactional
	public SearchApplicationResultDto searchApplication(String searchContent){
		logger.debug("Into searchApplication, param:" +  searchContent);
		SearchApplicationResultDto searchApplicationResultDto = new SearchApplicationResultDto();
		WikiPage wikiPage= new WikiPage();
		wikiPage.setTitle("%" + searchContent + "%");
		searchApplicationResultDto.setWikiPageList(wikiPageHome.findByExampleEnableLike(wikiPage));

		logger.debug("Finish searchApplication succ, return:" + searchApplicationResultDto);
		return searchApplicationResultDto;
	}
	
	@Transactional
	public SearchModelResultDto searchModel(String searchContent){
		logger.debug("Into searchModel, param:" +  searchContent);
		SearchModelResultDto searchModelResultDto = new SearchModelResultDto();
		WorkflowInformation workflowInformation = new WorkflowInformation();
		workflowInformation.setName("%" + searchContent + "%");
		searchModelResultDto.setWorkflowInformationList(workflowInformationHome.findByExampleEnableLike(workflowInformation));
		logger.debug("Finish searchModel succ, return:" + searchModelResultDto);
		return searchModelResultDto;
	}
	

}
