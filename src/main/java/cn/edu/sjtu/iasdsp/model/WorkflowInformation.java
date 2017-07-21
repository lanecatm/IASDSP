package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 * WorkflowInformations generated by hbm2java
 */
@Entity
@Table(name = "workflow_informations", catalog = "isdsp_dev")
public class WorkflowInformation implements java.io.Serializable {

	private Integer id;
	private User author;
	private User updator;
	private WorkflowCategory workflowCategory;

	private String name;
	private String introduction;
	private String detailDescription;
	private String versionDescription;

	private WorkflowPrivilege workflowPrivilege;

	private String versionName;
	// private Integer tagId;
	private Integer status;

	private Date validFrom;
	private Date validTo;
	private Boolean persistent;
	private Integer priority;
	private Integer mostPossibleDuration;
	private Integer minimalDuration;
	private Integer maximalDuration;

	private Date createdAt;
	private Date updatedAt;

	private String xml;
	// private Set<XWikiAndWorkflowInformation> xWikiAndWorkflowInformations =
	// new HashSet<XWikiAndWorkflowInformation>(
	// 0);
	private Set<NodeInformation> nodeInformations = new HashSet<NodeInformation>(0);
	private Set<WikiPage> wikiPages = new HashSet<WikiPage>(0);
	private Set<WorkflowPerformance> workflowPerformances = new HashSet<WorkflowPerformance>(0);
	private Set<WorkflowTag> workflowTags = new HashSet<WorkflowTag>(0);
	private Set<WorkflowVersion> workflowVersions = new HashSet<WorkflowVersion>(0);

	public WorkflowInformation() {
	}

	public WorkflowInformation(Date createdAt, Date updatedAt) {
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
	


	public WorkflowInformation(String name, String introduction, Date createdAt, Date updatedAt) {
		this.name = name;
		this.introduction = introduction;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "author_id")
	public User getAuthor() {
		return this.author;
	}

	public void setAuthor(User users) {
		this.author = users;
	}

	@Column(name = "name")
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "introduction", length = 65535)
	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	@Column(name = "detial_description", length = 65535)
	public String getDetailDescription() {
		return this.detailDescription;
	}

	public void setDetailDescription(String detialDescription) {
		this.detailDescription = detialDescription;
	}

	@Column(name = "version_description", length = 65535)
	public String getVersionDescription() {
		return versionDescription;
	}

	public void setVersionDescription(String versionDescription) {
		this.versionDescription = versionDescription;
	}

	@Column(name = "version_name", length = 65535)
	public String getVersionName() {
		return this.versionName;
	}

	public void setVersionName(String versionName) {
		this.versionName = versionName;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id")
	public WorkflowCategory getWorkflowCategory() {
		return workflowCategory;
	}

	public void setWorkflowCategory(WorkflowCategory workflowCategory) {
		this.workflowCategory = workflowCategory;
	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "workflow_information_tag", joinColumns = {
			@JoinColumn(referencedColumnName = "id") }, inverseJoinColumns = {
					@JoinColumn(referencedColumnName = "id") })
	public Set<WorkflowTag> getWorkflowTags() {
		return workflowTags;
	}

	public void setWorkflowTags(Set<WorkflowTag> workflowTags) {
		this.workflowTags = workflowTags;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "last_editor_id")
	public User getUpdator() {
		return updator;
	}

	public void setUpdator(User updator) {
		this.updator = updator;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "valid_from", length = 19)
	public Date getValidFrom() {
		return this.validFrom;
	}

	public void setValidFrom(Date validFrom) {
		this.validFrom = validFrom;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "valid_to", length = 19)
	public Date getValidTo() {
		return this.validTo;
	}

	public void setValidTo(Date validTo) {
		this.validTo = validTo;
	}

	@Column(name = "persistent")
	public Boolean getPersistent() {
		return this.persistent;
	}

	public void setPersistent(Boolean persistent) {
		this.persistent = persistent;
	}

	@Column(name = "priority")
	public Integer getPriority() {
		return this.priority;
	}

	public void setPriority(Integer priority) {
		this.priority = priority;
	}

	@Column(name = "most_possible_duration")
	public Integer getMostPossibleDuration() {
		return this.mostPossibleDuration;
	}

	public void setMostPossibleDuration(Integer mostPossibleDuration) {
		this.mostPossibleDuration = mostPossibleDuration;
	}

	@Column(name = "minimal_duration")
	public Integer getMinimalDuration() {
		return this.minimalDuration;
	}

	public void setMinimalDuration(Integer minimalDuration) {
		this.minimalDuration = minimalDuration;
	}

	@Column(name = "maximal_duration")
	public Integer getMaximalDuration() {
		return this.maximalDuration;
	}

	public void setMaximalDuration(Integer maximalDuration) {
		this.maximalDuration = maximalDuration;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at", nullable = false, length = 19)
	public Date getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updated_at", nullable = false, length = 19)
	public Date getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	@Column(name = "xml", length = 65535)
	public String getXml() {
		return this.xml;
	}

	public void setXml(String xml) {
		this.xml = xml;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "workflowInformation")
	@Cascade(CascadeType.DELETE)
	public Set<NodeInformation> getNodeInformations() {
		return this.nodeInformations;
	}

	public void setNodeInformations(Set<NodeInformation> nodeInformationses) {
		this.nodeInformations = nodeInformationses;
	}
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "workflowInformation")
	@Cascade(CascadeType.DELETE)
	public Set<WorkflowVersion> getWorkflowVersions() {
		return workflowVersions;
	}
	public void setWorkflowVersions(Set<WorkflowVersion> workflowVersions) {
		this.workflowVersions = workflowVersions;
	}
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "wiki_page_workflow_information", joinColumns = {
			@JoinColumn(referencedColumnName = "id") }, inverseJoinColumns = {
					@JoinColumn(referencedColumnName = "id") })
	public Set<WikiPage> getWikiPages() {
		return wikiPages;
	}

	

	public void setWikiPages(Set<WikiPage> wikiPages) {
		this.wikiPages = wikiPages;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "workflowInformation")
	@Cascade(CascadeType.DELETE)
	public Set<WorkflowPerformance> getWorkflowPerformances() {
		return workflowPerformances;
	}

	public void setWorkflowPerformances(Set<WorkflowPerformance> workflowPerformances) {
		this.workflowPerformances = workflowPerformances;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "workflowInformation")
	@Cascade(CascadeType.DELETE)
	public WorkflowPrivilege getWorkflowPrivilege() {
		return workflowPrivilege;
	}

	public void setWorkflowPrivilege(WorkflowPrivilege workflowPrivilege) {
		this.workflowPrivilege = workflowPrivilege;
	}

}
