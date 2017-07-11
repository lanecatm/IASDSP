package cn.edu.sjtu.iasdsp.dto;

import java.util.Date;
import java.util.Map;

import cn.edu.sjtu.iasdsp.model.User;

public class ShowModelDto {
	
	//Basic information
	private String title;
	private String introduction;
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
	
	//application
	private Map<String, String> application;
	

	public ShowModelDto(String title, String introduction, String category, User author, User lastEditor,
			String editUserGroup, String deleteUserGroup, String exectuteUserGroup, String versionName,
			String versionDescription, Date creationTime, Date updateTime, Map<String, String> application) {
		super();
		this.title = title;
		this.introduction = introduction;
		this.category = category;
		this.author = author;
		this.lastEditor = lastEditor;
		this.editUserGroup = editUserGroup;
		this.deleteUserGroup = deleteUserGroup;
		this.exectuteUserGroup = exectuteUserGroup;
		this.versionName = versionName;
		this.versionDescription = versionDescription;
		this.creationTime = creationTime;
		this.updateTime = updateTime;
		this.application = application;
	}
	
	public ShowModelDto() {

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

	public Map<String, String> getApplication() {
		return application;
	}

	public void setApplication(Map<String, String> application) {
		this.application = application;
	}
	
	






	

}
