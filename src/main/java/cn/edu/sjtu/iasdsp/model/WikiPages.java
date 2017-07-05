package cn.edu.sjtu.iasdsp.model;
// Generated 2017-6-26 3:55:41 by Hibernate Tools 5.2.3.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * WikiPages generated by hbm2java
 */
public class WikiPages implements java.io.Serializable {

	private Integer id;
	private Users creator;
	private Users updator;
	private String path;
	private String title;
	private String content;
	private Date createdAt;
	private Date updatedAt;
	private Set wikiAndWorkflowInformations = new HashSet(0);
	private Set taskPerformances = new HashSet(0);
	private Set wikiRelationships = new HashSet(0);
	private Set wikiReferences = new HashSet(0);
	
	public WikiPages() {
	}
	
	
	public WikiPages(Date createdAt, Date updatedAt) {
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}


	public WikiPages(Users creator, Users updator, String path, String title, String content, Date createdAt,
			Date updatedAt) {
		super();
		this.creator = creator;
		this.updator = updator;
		this.path = path;
		this.title = title;
		this.content = content;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}


	public WikiPages(Users creator, Users updator, String path, String title, String content,
			Date createdAt, Date updatedAt, Set wikiAndWorkflowInformations, Set taskPerformances,
			Set wikiRelationships, Set wikiReferences) {

		this.creator = creator;
		this.updator = updator;
		this.path = path;
		this.title = title;
		this.content = content;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.wikiAndWorkflowInformations = wikiAndWorkflowInformations;
		this.taskPerformances = taskPerformances;
		this.wikiRelationships = wikiRelationships;
		this.wikiReferences = wikiReferences;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Users getCreator() {
		return creator;
	}
	public void setCreator(Users creator) {
		this.creator = creator;
	}
	public Users getUpdator() {
		return updator;
	}
	public void setUpdator(Users updator) {
		this.updator = updator;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
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
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public Set getWikiAndWorkflowInformations() {
		return wikiAndWorkflowInformations;
	}
	public void setWikiAndWorkflowInformations(Set wikiAndWorkflowInformations) {
		this.wikiAndWorkflowInformations = wikiAndWorkflowInformations;
	}
	public Set getTaskPerformances() {
		return taskPerformances;
	}
	public void setTaskPerformances(Set taskPerformances) {
		this.taskPerformances = taskPerformances;
	}
	public Set getWikiRelationships() {
		return wikiRelationships;
	}
	public void setWikiRelationships(Set wikiRelationships) {
		this.wikiRelationships = wikiRelationships;
	}
	
	public Set getWikiReferences() {
		return wikiReferences;
	}
	public void setWikiReferences(Set wikiReferences) {
		this.wikiReferences = wikiReferences;
	}
	

	

}
