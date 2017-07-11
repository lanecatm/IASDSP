package cn.edu.sjtu.iasdsp.dto;

import java.util.Set;

import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WikiReference;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月2日 下午10:47:19
* @version 
* Introduction
*/
public class EditApplicationDto {
	String title;
	String introduction;
	Set<WikiReference> referenceList;
	Set<WikiPage> relatedPageIdList;
	ShowApplicationDto showApplicationDto;
	int wikiPageId;
	
	
	public EditApplicationDto() {
	}


	public EditApplicationDto(String title, String introduction, Set<WikiReference> referenceList,
			Set<WikiPage> relatedPageIdList, ShowApplicationDto showApplicationDto) {
		super();
		this.title = title;
		this.introduction = introduction;
		this.referenceList = referenceList;
		this.relatedPageIdList = relatedPageIdList;
		this.showApplicationDto = showApplicationDto;
	}


	public int getWikiPageId() {
		return wikiPageId;
	}


	public void setWikiPageId(int wikiPageId) {
		this.wikiPageId = wikiPageId;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getIntroduction() {
		return introduction;
	}


	public void setIntroduction(String content) {
		this.introduction = content;
	}



	public Set<WikiPage> getRelatedPageIdList() {
		return relatedPageIdList;
	}


	public void setRelatedPageIdList(Set<WikiPage> relatedPageIdList) {
		this.relatedPageIdList = relatedPageIdList;
	}


	public Set<WikiReference> getReferenceList() {
		return referenceList;
	}

	public void setReferenceList(Set<WikiReference> referenceList) {
		this.referenceList = referenceList;
	}


	public ShowApplicationDto getShowApplicationDto() {
		return showApplicationDto;
	}


	public void setShowApplicationDto(ShowApplicationDto showApplicationDto) {
		this.showApplicationDto = showApplicationDto;
	}
	
	

}
