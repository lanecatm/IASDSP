package cn.edu.sjtu.iasdsp.dto;

import java.util.List;
import java.util.Set;

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
	String content;
	Set<WikiReference> referenceList;
	Set<String> relatedPageList;
	
	
	public EditApplicationDto() {
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Set<String> getRelatedPageList() {
		return relatedPageList;
	}
	public void setRelatedPageList(Set<String> relatedPageList) {
		this.relatedPageList = relatedPageList;
	}

	public Set<WikiReference> getReferenceList() {
		return referenceList;
	}

	public void setReferenceList(Set<WikiReference> referenceList) {
		this.referenceList = referenceList;
	}
	
	

}
