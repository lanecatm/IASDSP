package cn.edu.sjtu.iasdsp.dto;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import cn.edu.sjtu.iasdsp.model.SharedProcessRecord;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WikiReference;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月2日 下午8:10:17
* @version 
* Introduction
*/
public class ShowApplicationDto {
	
	
	private Integer wikiPageId;
	private String title;
	private Date time;
	private String authorName;
	private String introduction;
	private String path;
	private Set<WikiReference> referenceList;
	private Set<WorkflowInformation> workflowInformationList;
	private Set<WikiPage> relatedWikiPageList;
	private Map<Integer, String> performanceMap = new HashMap<Integer, String>();
	private Map<Integer, List<SharedProcessRecord>> shareRecordMap = new HashMap<Integer, List<SharedProcessRecord>>(0);
	


	public ShowApplicationDto() {
	}


	public ShowApplicationDto(Integer wikiPageId, String title, Date time, String authorName, String introduction, String path,
			Set<WikiReference> referenceList, Set<WorkflowInformation> workflowInformationList,
			Set<WikiPage> relatedWikiPageList) {
		this.wikiPageId = wikiPageId;
		this.title = title;
		this.time = time;
		this.authorName = authorName;
		this.introduction = introduction;
		this.path = path;
		this.referenceList = referenceList;
		this.workflowInformationList = workflowInformationList;
		this.relatedWikiPageList = relatedWikiPageList;
	}

	
	

	public Map<Integer, String> getPerformanceMap() {
		return performanceMap;
	}


	public void setPerformanceMap(Map<Integer, String> performanceMap) {
		this.performanceMap = performanceMap;
	}


	public Integer getWikiPageId() {
		return wikiPageId;
	}


	public void setWikiPageId(Integer wikiPageId) {
		this.wikiPageId = wikiPageId;
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
	
	public Set<WorkflowInformation> getWorkflowInformationList() {
		return workflowInformationList;
	}
	public void setWorkflowInformationList(Set<WorkflowInformation> workflowInformationList) {
		this.workflowInformationList = workflowInformationList;
	}

	public Set<WikiPage> getRelatedWikiPageList() {
		return relatedWikiPageList;
	}

	public void setRelatedWikiPageList(Set<WikiPage> relatedWikiPageList) {
		this.relatedWikiPageList = relatedWikiPageList;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
	
	

	public Map<Integer, List<SharedProcessRecord>> getShareRecordMap() {
		return shareRecordMap;
	}


	public void setShareRecordMap(Map<Integer, List<SharedProcessRecord>> shareRecordMap) {
		this.shareRecordMap = shareRecordMap;
	}


	public String toString() {
		return "ShowApplicationDto [title=" + title + ", time=" + time + ", authorName=" + authorName
				+ ", introduction=" + introduction + ", path=" + path + ", referenceList=" + referenceList
				+ ", workflowInformationList=" + workflowInformationList + ", relatedWikiPageList="
				+ relatedWikiPageList + "]";
	}

	


}
