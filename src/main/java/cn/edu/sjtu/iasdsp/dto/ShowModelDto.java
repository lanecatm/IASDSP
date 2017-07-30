package cn.edu.sjtu.iasdsp.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import cn.edu.sjtu.iasdsp.model.SharedProcessRecord;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;
import cn.edu.sjtu.iasdsp.model.WorkflowTag;
import cn.edu.sjtu.iasdsp.model.WorkflowVersion;

public class ShowModelDto {
	
	private WorkflowInformation workflowInformation;
	//Basic information
	private String title;
	private String introduction;
	private String detailedInformation;
	private String category;
	private Integer workflowInformationId;
	
	//Authorization
	private User author;
	private User lastEditor;
	private String editUserGroup;
	private String deleteUserGroup;
	private String exectuteUserGroup;
	
	//Version
	
	private String versionName;
	private String versionDescription;
	private Date creationTime;
	private Date updateTime;
	
	//application test
	//private Map<String, String> application;
	private Set<String> application;
	private List<WorkflowTag> workflowTags = new ArrayList<WorkflowTag>(0);
	private List<WorkflowVersion> workflowVersions = new ArrayList<WorkflowVersion>(0);
	
	private List<WikiPage> wikiPages = new ArrayList<WikiPage>(0);
	private Map<Integer, List<SharedProcessRecord>> sharedProcessRecordMap = new HashMap<Integer, List<SharedProcessRecord>>(0);

	//diagram
	private String xml;
	
	private String versionLabelListStr;
	private String versionStarListStr;
	private String versionTimeListStr;
	

	public ShowModelDto() {
		
	//	application.add("Mon application");
	//	application.add("Mon applicatifon");

	}


	public WorkflowInformation getWorkflowInformation() {
		return workflowInformation;
	}


	public void setWorkflowInformation(WorkflowInformation workflowInformation) {
		this.workflowInformation = workflowInformation;
	}


	public Integer getWorkflowInformationId() {
		return workflowInformationId;
	}


	public void setWorkflowInformationId(Integer workflowInformationId) {
		this.workflowInformationId = workflowInformationId;
	}


	public List<WorkflowVersion> getWorkflowVersions() {
		return workflowVersions;
	}

	public void setWorkflowVersions(List<WorkflowVersion> workflowVersions) {
		this.workflowVersions = workflowVersions;
	}

	public List<WorkflowTag> getWorkflowTags() {
		return workflowTags;
	}

	public void setWorkflowTags(List<WorkflowTag> workflowTags) {
		this.workflowTags = workflowTags;
	}




	public String getXml() {
		return xml;
	}


	public void setXml(String xml) {
		this.xml = xml;
	}
	
	public Set<String> getApplication() {
		return application;
	}

	public void setApplication(Set<String> application) {
		this.application = application;
	}


	public String getDetailedInformation() {
		return detailedInformation;
	}

	public void setDetailedInformation(String detailedInformation) {
		this.detailedInformation = detailedInformation;
	}



	public String getVersionDescription() {
		return versionDescription;
	}

	public void setVersionDescription(String versionDescription) {
		this.versionDescription = versionDescription;
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

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public User getAuthor() {
		return author;
	}

	public void setAuthor(User user) {
		this.author = user;
	}

	public User getLastEditor() {
		return lastEditor;
	}

	public void setLastEditor(User user) {
		this.lastEditor = user;
	}

	public String getEditUserGroup() {
		return editUserGroup;
	}

	public void setEditUserGroup(String editUserGroup) {
		this.editUserGroup = editUserGroup;
	}

	public String getDeleteUserGroup() {
		return deleteUserGroup;
	}

	public void setDeleteUserGroup(String deleteUserGroup) {
		this.deleteUserGroup = deleteUserGroup;
	}

	public String getExectuteUserGroup() {
		return exectuteUserGroup;
	}

	public void setExectuteUserGroup(String exectuteUserGroup) {
		this.exectuteUserGroup = exectuteUserGroup;
	}

	public String getVersionName() {
		return versionName;
	}

	public void setVersionName(String versionName) {
		this.versionName = versionName;
	}

	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}


	public List<WikiPage> getWikiPages() {
		return wikiPages;
	}


	public void setWikiPages(List<WikiPage> wikiPages) {
		this.wikiPages = wikiPages;
	}


	public Map<Integer, List<SharedProcessRecord>> getSharedProcessRecordMap() {
		return sharedProcessRecordMap;
	}


	public void setSharedProcessRecordMap(Map<Integer, List<SharedProcessRecord>> sharedProcessRecordMap) {
		this.sharedProcessRecordMap = sharedProcessRecordMap;
	}

	



	public String getVersionLabelListStr() {
		return versionLabelListStr;
	}


	public void setVersionLabelListStr(String versionLabelListStr) {
		this.versionLabelListStr = versionLabelListStr;
	}


	public String getVersionStarListStr() {
		return versionStarListStr;
	}


	public void setVersionStarListStr(String versionStarListStr) {
		this.versionStarListStr = versionStarListStr;
	}


	public String getVersionTimeListStr() {
		return versionTimeListStr;
	}


	public void setVersionTimeListStr(String versionTimeListStr) {
		this.versionTimeListStr = versionTimeListStr;
	}


	public String toString() {
		return "ShowModelDto [title=" + title + ", introduction=" + introduction + ", detailedInformation="
				+ detailedInformation + ", category=" + category + ", author=" + author + ", lastEditor=" + lastEditor
				+ ", editUserGroup=" + editUserGroup + ", deleteUserGroup=" + deleteUserGroup + ", exectuteUserGroup="
				+ exectuteUserGroup + ", versionName=" + versionName + ", versionDescription=" + versionDescription
				+ ", creationTime=" + creationTime + ", updateTime=" + updateTime + ", application=" + application
				+ ", workflowTags=" + workflowTags + ", workflowVersions=" + workflowVersions + ", wikiPages="
				+ wikiPages + ", sharedProcessRecordMap=" + sharedProcessRecordMap + ", xml=" + xml + "]";
	}




	

}
