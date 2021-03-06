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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 * ProcessInformations generated by hbm2java
 */
@Entity
@Table(name = "process_informations", catalog = "isdsp_dev")
public class ProcessInformation implements java.io.Serializable {

	private Integer id;
	// private WorkflowInformation workflowInformation;
	private WorkflowVersion workflowVersion;
//	private WikiPage wikiPage;

	private String name;
	private String description;
	private String engineProcessId;

	private User user;
	private Boolean isShared;

	// 一对一关系,如果这个process是被分享的就有这个字段
	private SharedProcessRecord sharedProcessRecord;
	// 多对一关系,执行多次sharedProcessRecord得到多个
	private SharedProcessRecord parentSharedProcessRecord;

	private Integer parentCaseId;
	private Boolean persistent;
	private String state;
	private Integer caseType;
	private Date createdAt;
	private Date updatedAt;
	private String processType;
	private Integer processId;
	private Set<DownloadFile> downloadFiles = new HashSet<DownloadFile>(0);
	private Set<ProcessResult> processResults = new HashSet<ProcessResult>(0);
	private Set<ProcessFile> processFiles = new HashSet<ProcessFile>(0);
	
	private NodeProcessInformation nodeProcessInformation = new NodeProcessInformation();

	private ProcessStar processStar;
	
	private UploadFile uploadFile;
	private String downloadFilePath;

	public ProcessInformation() {
	}

	public ProcessInformation(Date createdAt, Date updatedAt) {
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

	// @ManyToOne(fetch = FetchType.LAZY)
	// @JoinColumn(name = "workflow_information_id")
	// public WorkflowInformation getWorkflowInformation() {
	// return workflowInformation;
	// }
	//
	// public void setWorkflowInformation(WorkflowInformation
	// workflowInformation) {
	// this.workflowInformation = workflowInformation;
	// }

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "workflow_version_id")
	public WorkflowVersion getWorkflowVersion() {
		return workflowVersion;
	}

	public void setWorkflowVersion(WorkflowVersion workflowVersion) {
		this.workflowVersion = workflowVersion;
	}

//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "wiki_page_id")
//	public WikiPage getWikiPage() {
//		return wikiPage;
//	}
//
//	public void setWikiPage(WikiPage wikiPage) {
//		this.wikiPage = wikiPage;
//	}

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "shared_process_record_id")
	public SharedProcessRecord getSharedProcessRecord() {
		return sharedProcessRecord;
	}

	public void setSharedProcessRecord(SharedProcessRecord sharedProcessRecord) {
		this.sharedProcessRecord = sharedProcessRecord;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "parent_shared_process_record_id")
	public SharedProcessRecord getParentSharedProcessRecord() {
		return parentSharedProcessRecord;
	}

	public void setParentSharedProcessRecord(SharedProcessRecord parentSharedProcessRecord) {
		this.parentSharedProcessRecord = parentSharedProcessRecord;
	}

	@Column(name = "name")
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "description", length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	

	@Column(name = "download_file_path", length = 65535)
	public String getDownloadFilePath() {
		return downloadFilePath;
	}

	public void setDownloadFilePath(String downloadFilePath) {
		this.downloadFilePath = downloadFilePath;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "is_shared")
	public Boolean getIsShared() {
		return this.isShared;
	}

	public void setIsShared(Boolean isShared) {
		this.isShared = isShared;
	}

	@Column(name = "parent_case_id")
	public Integer getParentCaseId() {
		return this.parentCaseId;
	}

	public void setParentCaseId(Integer parentCaseId) {
		this.parentCaseId = parentCaseId;
	}

	@Column(name = "persistent")
	public Boolean getPersistent() {
		return this.persistent;
	}

	public void setPersistent(Boolean persistent) {
		this.persistent = persistent;
	}

	@Column(name = "state", length = 65535)
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "case_type")
	public Integer getCaseType() {
		return this.caseType;
	}

	public void setCaseType(Integer caseType) {
		this.caseType = caseType;
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

	@Column(name = "process_type")
	public String getProcessType() {
		return this.processType;
	}

	public void setProcessType(String processType) {
		this.processType = processType;
	}

	@Column(name = "process_id")
	public Integer getProcessId() {
		return this.processId;
	}

	public void setProcessId(Integer processId) {
		this.processId = processId;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "processInformations")
	public Set<DownloadFile> getDownloadFiles() {
		return this.downloadFiles;
	}

	public void setDownloadFiles(Set<DownloadFile> downloadFileses) {
		this.downloadFiles = downloadFileses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "processInformations")
	public Set<ProcessResult> getProcessResults() {
		return this.processResults;
	}

	public void setProcessResults(Set<ProcessResult> processResultses) {
		this.processResults = processResultses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "processInformations")
	public Set<ProcessFile> getProcessFiles() {
		return this.processFiles;
	}

	public void setProcessFiles(Set<ProcessFile> processFileses) {
		this.processFiles = processFileses;
	}



	@OneToOne(fetch = FetchType.LAZY, mappedBy = "processInformation")
	@Cascade(CascadeType.DELETE)
	public ProcessStar getProcessStar() {
		return processStar;
	}

	public void setProcessStar(ProcessStar processStar) {
		this.processStar = processStar;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "processInformation")
	@Cascade(CascadeType.DELETE)
	public UploadFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(UploadFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	@Column(name = "engine_process_id")
	public String getEngineProcessId() {
		return engineProcessId;
	}

	public void setEngineProcessId(String engineProcessId) {
		this.engineProcessId = engineProcessId;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "processInformation")
	@Cascade(CascadeType.DELETE)
	public NodeProcessInformation getNodeProcessInformation() {
		return nodeProcessInformation;
	}

	public void setNodeProcessInformation(NodeProcessInformation nodeProcessInformation) {
		this.nodeProcessInformation = nodeProcessInformation;
	}




	
	
	

}
