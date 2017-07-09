package cn.edu.sjtu.iasdsp.dto;

import java.util.Date;
import java.util.Set;

import cn.edu.sjtu.iasdsp.model.WikiReference;
import cn.edu.sjtu.iasdsp.model.WikiRelationship;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月2日 下午8:10:17
* @version 
* Introduction
*/
public class ShowApplicationDto {
	
	
	private String title;
	private Date time;
	private String authorName;
	private String introduction;
	private Set<WikiReference> referenceList;
	private Set<WikiRelationship> relatedPageList;
	private Set<WorkflowInformation> workflowInformationList;
	


	public ShowApplicationDto() {
	}

	public ShowApplicationDto(String title, Date time, String authorName, String introduction,
			Set<WikiReference> referenceList, Set<WikiRelationship> relatedPageList,
			Set<WorkflowInformation> workflowInformationList) {
		super();
		this.title = title;
		this.time = time;
		this.authorName = authorName;
		this.introduction = introduction;
		this.referenceList = referenceList;
		this.relatedPageList = relatedPageList;
		this.workflowInformationList = workflowInformationList;
	}
	
	public ShowApplicationDto(String title, Date time, String authorName, String introduction,
			Set<WikiReference> referenceList, Set<WikiRelationship> relatedPageList) {
		super();
		this.title = title;
		this.time = time;
		this.authorName = authorName;
		this.introduction = introduction;
		this.referenceList = referenceList;
		this.relatedPageList = relatedPageList;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	public Set<WikiReference> getReferenceList() {
		return referenceList;
	}
	public void setReferenceList(Set<WikiReference> referenceList) {
		this.referenceList = referenceList;
	}
	public Set<WikiRelationship> getRelatedPageList() {
		return relatedPageList;
	}
	public void setRelatedPageList(Set<WikiRelationship> relatedPageList) {
		this.relatedPageList = relatedPageList;
	}
	public Set<WorkflowInformation> getWorkflowInformationList() {
		return workflowInformationList;
	}
	public void setWorkflowInformationList(Set<WorkflowInformation> workflowInformationList) {
		this.workflowInformationList = workflowInformationList;
	}
	

}
