package cn.edu.sjtu.iasdsp.dto;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import cn.edu.sjtu.iasdsp.model.User;

public class EditModelDto {
	
	
	//Basic information
	private String title;
	private String introduction;
	private String detailedInformation;
	private String category;
	
	private Map<Integer,String> categoryList = new HashMap<Integer,String>(0);
	private Map<Integer,String> allApplicationList = new HashMap<Integer,String>(0);
	private Map<Integer,String> choosenApplicationList = new HashMap<Integer,String>(0);

	
	//Authorization
	private User author;
	private User lastEditor;
	
	private String editUserGroup;
	
	private String deleteUserGroup;
	private Map<Integer,String> departementList = new HashMap<Integer,String>(0);
	
	private String exectuteUserGroup;
	
	private String activePage;
	
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
	
	private String tagsinput;
	
	

	public EditModelDto() {
		

	}



	public Map<Integer, String> getDepartementList() {
		return departementList;
	}



	public void setDepartementList(Map<Integer, String> departementList) {
		this.departementList = departementList;
	}



	public Map<Integer, String> getCategoryList() {
		return categoryList;
	}



	public void setCategoryList(Map<Integer, String> categoryList) {
		this.categoryList = categoryList;
	}



	public Map<Integer, String> getAllApplicationList() {
		return allApplicationList;
	}



	public void setAllApplicationList(Map<Integer, String> allApplicationList) {
		this.allApplicationList = allApplicationList;
	}



	public Map<Integer, String> getChoosenApplicationList() {
		return choosenApplicationList;
	}



	public void setChoosenApplicationList(Map<Integer, String> choosenApplicationList) {
		this.choosenApplicationList = choosenApplicationList;
	}



	public String getTagsinput() {
		return tagsinput;
	}



	public void setTagsinput(String tagsinput) {
		this.tagsinput = tagsinput;
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


	public String getDetailedInformation() {
		return detailedInformation;
	}


	public void setDetailedInformation(String detailedInformation) {
		this.detailedInformation = detailedInformation;
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


	public void setAuthor(User author) {
		this.author = author;
	}


	public User getLastEditor() {
		return lastEditor;
	}


	public void setLastEditor(User lastEditor) {
		this.lastEditor = lastEditor;
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


	public String getVersionDescription() {
		return versionDescription;
	}


	public void setVersionDescription(String versionDescription) {
		this.versionDescription = versionDescription;
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


	public Set<String> getApplication() {
		return application;
	}


	public void setApplication(Set<String> application) {
		this.application = application;
	}


	public String getXml() {
		return xml;
	}


	public void setXml(String xml) {
		this.xml = xml;
	}


	public String getActivePage() {
		return activePage;
	}


	public void setActivePage(String activePage) {
		this.activePage = activePage;
	}
	


}
