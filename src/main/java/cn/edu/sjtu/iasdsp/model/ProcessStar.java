package cn.edu.sjtu.iasdsp.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月21日 下午9:46:46
* @version 
* Introduction
*/
@Entity
@Table(name = "process_stars", catalog = "isdsp_dev")
public class ProcessStar implements java.io.Serializable{

	private Integer id;
//	private SharedProcessRecord sharedProcessRecord;
	private ProcessInformation processInformation;
//	private WorkflowInformation workflowInformation;
//	private WorkflowVersion workflowVersion;
	
	private Integer rate;
	private User user;
	
	private Date createdAt;
	private Date updatedAt;
	
	public ProcessStar() {
	}
	
	public ProcessStar(ProcessInformation processInformation, Integer rate, User user, Date createdAt, Date updatedAt) {
		this.processInformation = processInformation;
		this.rate = rate;
		this.user = user;
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
	
	
	@Column(name = "rate")
	public Integer getRate() {
		return rate;
	}
	public void setRate(Integer rate) {
		this.rate = rate;
	}
	
	
	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "shared_process_record_id")
//	public SharedProcessRecord getSharedProcessRecord() {
//		return sharedProcessRecord;
//	}
//	public void setSharedProcessRecord(SharedProcessRecord sharedProcessRecord) {
//		this.sharedProcessRecord = sharedProcessRecord;
//	}
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "process_information_id")
	public ProcessInformation getProcessInformation() {
		return processInformation;
	}
	public void setProcessInformation(ProcessInformation processInformation) {
		this.processInformation = processInformation;
	}
	
	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "workflow_information_id")
//	public WorkflowInformation getWorkflowInformation() {
//		return workflowInformation;
//	}
//	public void setWorkflowInformation(WorkflowInformation workflowInformation) {
//		this.workflowInformation = workflowInformation;
//	}
//	
	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "workflow_version_id")
//	public WorkflowVersion getWorkflowVersion() {
//		return workflowVersion;
//	}
//	public void setWorkflowVersion(WorkflowVersion workflowVersion) {
//		this.workflowVersion = workflowVersion;
//	}
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at", nullable = false, length = 19)	
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updated_at", nullable = false, length = 19)	
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}


	
	

}
