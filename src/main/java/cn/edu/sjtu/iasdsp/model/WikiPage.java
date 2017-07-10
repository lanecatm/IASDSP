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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 * WikiPages generated by hbm2java
 */
@Entity
@Table(name = "wiki_pages", catalog = "isdsp_dev", uniqueConstraints = @UniqueConstraint(columnNames = "path"))
public class WikiPage implements java.io.Serializable {

	private Integer id;
	private User userByCreatorId;
	private User userByUpdatorId;

	private String path;
	private String title;
	private String content;
	private Date createdAt;
	private Date updatedAt;
	// private Set<TaskPerformance> taskPerformances = new
	// HashSet<TaskPerformance>(0);
	private Set<WorkflowInformation> workflowInformations = new HashSet<WorkflowInformation>(0);

	// private Set<XWikiAndWorkflowInformation> xWikiAndWorkflowInformations =
	// new HashSet<XWikiAndWorkflowInformation>(0);
	private Set<WikiReference> wikiReferences = new HashSet<WikiReference>(0);
	private Set<WikiPage> relatedWikiPages = new HashSet<WikiPage>(0);
	//private Set<WikiPage> relatedByWikiPages = new HashSet<WikiPage>(0);

	//private Set<WikiRelationship> wikiRelationships = new HashSet<WikiRelationship>(0);

	private Set<WorkflowPerformance> workflowPerformances = new HashSet<WorkflowPerformance>(0);

	private WikiCategory wikiCategory;

	public WikiPage() {
	}

	public WikiPage(User userByCreatorId, User userByUpdatorId, String path, String title, String content,
			Date createdAt, Date updatedAt) {
		super();
		this.userByCreatorId = userByCreatorId;
		this.userByUpdatorId = userByUpdatorId;
		this.path = path;
		this.title = title;
		this.content = content;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public WikiPage(User userByUpdatorId, User userByCreatorId, String path, String title, String content,
			Date createdAt, Date updatedAt, Set<WikiReference> wikiReferences, 
			WikiCategory wikiCategory) {
		this.userByUpdatorId = userByUpdatorId;
		this.userByCreatorId = userByCreatorId;
		this.path = path;
		this.title = title;
		this.content = content;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		// this.taskPerformances = taskPerformances;
		// this.xWikiAndWorkflowInformations = xWikiAndWorkflowInformations;
		this.wikiReferences = wikiReferences;
		
		this.wikiCategory = wikiCategory;
	}


	public WikiPage(Date createdAt, Date updatedAt) {
		super();
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
	@JoinColumn(name = "updator_id")
	public User getUserByUpdatorId() {
		return this.userByUpdatorId;
	}

	public void setUserByUpdatorId(User usersByUpdatorId) {
		this.userByUpdatorId = usersByUpdatorId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "creator_id")
	public User getUserByCreatorId() {
		return this.userByCreatorId;
	}

	public void setUserByCreatorId(User usersByCreatorId) {
		this.userByCreatorId = usersByCreatorId;
	}

	@Column(name = "path", unique = true)
	public String getPath() {
		return this.path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	@Column(name = "title")
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "content")
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "wiki_category_id")
	public WikiCategory getWikiCategory() {
		return wikiCategory;
	}

	public void setWikiCategory(WikiCategory wikiCategory) {
		this.wikiCategory = wikiCategory;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at", length = 19)
	public Date getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updated_at", length = 19)
	public Date getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "wikiPage")
	@Cascade(CascadeType.DELETE)
	public Set<WikiReference> getWikiReferences() {
		return this.wikiReferences;
	}

	public void setWikiReferences(Set<WikiReference> wikiReferences) {
		this.wikiReferences = wikiReferences;
	}

//	@OneToMany(fetch = FetchType.LAZY, mappedBy = "wikiPage")
//	@Cascade(CascadeType.DELETE)
//	public Set<WikiRelationship> getWikiRelationships() {
//		return this.wikiRelationships;
//	}
//
//	public void setWikiRelationships(Set<WikiRelationship> wikiRelationship) {
//		this.wikiRelationships = wikiRelationship;
//	}
//	
	
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "wiki_page_and_related_wiki_page", joinColumns = {
			@JoinColumn(referencedColumnName = "id") }, inverseJoinColumns = {
					@JoinColumn(referencedColumnName = "id") })	
	public Set<WikiPage> getRelatedWikiPages() {
		return relatedWikiPages;
	}

	public void setRelatedWikiPages(Set<WikiPage> relatedWikiPages) {
		this.relatedWikiPages = relatedWikiPages;
	}
	
//	
//	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "relatedWikiPages")
//	public Set<WikiPage> getRelatedByWikiPages() {
//		return relatedByWikiPages;
//	}
//
//	public void setRelatedByWikiPages(Set<WikiPage> relatedByWikiPages) {
//		this.relatedByWikiPages = relatedByWikiPages;
//	}

	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "wikiPages")
	public Set<WorkflowInformation> getWorkflowInformations() {
		return workflowInformations;
	}

	public void setWorkflowInformations(Set<WorkflowInformation> workflowInformations) {
		this.workflowInformations = workflowInformations;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "wikiPage")
	public Set<WorkflowPerformance> getWorkflowPerformances() {
		return workflowPerformances;
	}

	public void setWorkflowPerformances(Set<WorkflowPerformance> workflowPerformances) {
		this.workflowPerformances = workflowPerformances;
	}

}
