package cn.edu.sjtu.iasdsp.service;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WikiReference;
import cn.edu.sjtu.iasdsp.model.WikiRelationship;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月2日 下午10:45:17
* @version 
* Introduction
*/

@Service
public class AnalyticsApplicationService {
	
	private static final Log log = LogFactory.getLog(AnalyticsApplicationService.class);

	@Autowired
	private WikiPageHome wikiPageHome;
	
	@Transactional
	public EditApplicationDto create(){
		log.debug("Create EditApplicationDto for show");
		EditApplicationDto editApplicationDto = new EditApplicationDto();
		return editApplicationDto;
	}
	
	@Transactional
	public ShowApplicationDto create(EditApplicationDto editApplicationDto){
		log.debug("Create EditApplicationDto");
		//创建WikiPage
		WikiPage wikiPage = new WikiPage(new Date(), new Date());
		WikiReference wikiReference = new WikiReference();
		WikiRelationship wikiRelationship = new WikiRelationship();
		ShowApplicationDto returnShowApplicationDto = new ShowApplicationDto();
		
		return returnShowApplicationDto;
	}
	
	@Transactional
	public ShowApplicationDto show(String wikiPath){
		WikiPage wikiPage = wikiPageHome.findById(33);
		String userName = wikiPage.getUserByCreatorId() == null ? "Author" : wikiPage.getUserByCreatorId().getUserName();
		ShowApplicationDto showApplicationDto = new ShowApplicationDto(
				wikiPage.getTitle(),
				wikiPage.getCreatedAt(),
				userName,
				wikiPage.getContent(),
				wikiPage.getWikiReferences(),
				wikiPage.getWikiRelationships(),
				wikiPage.getWorkflowInformations()
				);
		//ShowApplicationDto showApplicationParams = new ShowApplicationDto();
		return showApplicationDto;
		
	}
	
	public void edit(){
		
	}
	
	public void update(){
		
	}
	
	public void delete(){
		
	}
	
	@Transactional
	public void create(WikiPage wikiPage){
		wikiPageHome.persist(wikiPage);
		//wikiPage.setContent("hello");
		//wikiPage = wikiPagesHome.merge(wikiPage);

	}
	
//	@Transactional
//	public ShowApplicationDto find(String wikiPath){
//		WikiPage wikiPage = wikiPageHome.findByWikiPath(wikiPath);
//		ShowApplicationDto showApplicationDto = new ShowApplicationDto();
//		return showApplicationDto;
//	}
	
	@Transactional
	public void remove(WikiPage wikiPage){
		wikiPage = wikiPageHome.merge(wikiPage);
		wikiPageHome.delete(wikiPage);
	}
	
}
