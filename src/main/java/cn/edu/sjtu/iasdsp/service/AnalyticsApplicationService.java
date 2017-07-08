package cn.edu.sjtu.iasdsp.service;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.WikiPagesHome;
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
@Component
public class AnalyticsApplicationService {
	
	private static final Log log = LogFactory.getLog(AnalyticsApplicationService.class);
	@Autowired
	private WikiPagesHome wikiPagesHome;
	
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
	public void create(WikiPage wikiPage){
		wikiPagesHome.persist(wikiPage);
		//wikiPage.setContent("hello");
		//wikiPage = wikiPagesHome.merge(wikiPage);

	}
	
	@Transactional
	public void remove(WikiPage wikiPage){
		wikiPage = wikiPagesHome.merge(wikiPage);
		wikiPagesHome.remove(wikiPage);
	}
	
	public ShowApplicationDto show(){
		ShowApplicationDto showApplicationParams = new ShowApplicationDto();
		
		return showApplicationParams;
		
	}
	
	public void edit(){
		
	}
	
	public void update(){
		
	}
	
	public void delete(){
		
	}

}
