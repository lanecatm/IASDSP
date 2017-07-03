package cn.edu.sjtu.iasdsp.dto;

import java.util.Date;
import java.util.List;
import java.util.Map;

import cn.edu.sjtu.iasdsp.model.WorkflowInformations;

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
	private Map<String, String> referenceList;
	private List<String> relatedPageList;
	private List<WorkflowInformations> workflowInformationList;
	


	public ShowApplicationDto(String title, Date time, String authorName, String introduction,
			Map<String, String> referenceList, List<String> relatedPageList,
			List<WorkflowInformations> workflowInformationList) {
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
			Map<String, String> referenceList, List<String> relatedPageList) {
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
	
	public Map<String, String> getReferenceList() {
		return referenceList;
	}
	public void setReferenceList(Map<String, String> referenceList) {
		this.referenceList = referenceList;
	}
	public List<String> getRelatedPageList() {
		return relatedPageList;
	}
	public void setRelatedPageList(List<String> relatedPageList) {
		this.relatedPageList = relatedPageList;
	}
	public List<WorkflowInformations> getWorkflowInformationList() {
		return workflowInformationList;
	}
	public void setWorkflowInformationList(List<WorkflowInformations> workflowInformationList) {
		this.workflowInformationList = workflowInformationList;
	}
	

}
