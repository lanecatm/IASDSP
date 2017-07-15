package cn.edu.sjtu.iasdsp.dto;

import java.util.Date;
import java.util.Map;
import java.util.Set;

import cn.edu.sjtu.iasdsp.model.User;

public class ShowModelDto {
	
	//Basic information
	private String title;
	private String introduction;
	private String detailedInformation;
	private String category;
	
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
	

	//diagram
	private String xml;
	

	public ShowModelDto() {
		
	//	application.add("Mon application");
	//	application.add("Mon applicatifon");

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


	

}
