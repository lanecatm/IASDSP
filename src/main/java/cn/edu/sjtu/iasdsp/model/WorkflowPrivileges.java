package cn.edu.sjtu.iasdsp.model;
// Generated 2017-6-26 3:55:41 by Hibernate Tools 5.2.3.Final

import java.util.Date;

/**
 * WorkflowPrivileges generated by hbm2java
 */
public class WorkflowPrivileges implements java.io.Serializable {

	private Integer id;
	private Integer workflowInformationId;
	private Integer editDepartmentId;
	private Integer executeDepartmentId;
	private Integer deleteDepartmentId;
	private Date createdAt;
	private Date updatedAt;

	public WorkflowPrivileges() {
	}

	public WorkflowPrivileges(Date createdAt, Date updatedAt) {
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public WorkflowPrivileges(Integer workflowInformationId, Integer editDepartmentId, Integer executeDepartmentId,
			Integer deleteDepartmentId, Date createdAt, Date updatedAt) {
		this.workflowInformationId = workflowInformationId;
		this.editDepartmentId = editDepartmentId;
		this.executeDepartmentId = executeDepartmentId;
		this.deleteDepartmentId = deleteDepartmentId;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getWorkflowInformationId() {
		return this.workflowInformationId;
	}

	public void setWorkflowInformationId(Integer workflowInformationId) {
		this.workflowInformationId = workflowInformationId;
	}

	public Integer getEditDepartmentId() {
		return this.editDepartmentId;
	}

	public void setEditDepartmentId(Integer editDepartmentId) {
		this.editDepartmentId = editDepartmentId;
	}

	public Integer getExecuteDepartmentId() {
		return this.executeDepartmentId;
	}

	public void setExecuteDepartmentId(Integer executeDepartmentId) {
		this.executeDepartmentId = executeDepartmentId;
	}

	public Integer getDeleteDepartmentId() {
		return this.deleteDepartmentId;
	}

	public void setDeleteDepartmentId(Integer deleteDepartmentId) {
		this.deleteDepartmentId = deleteDepartmentId;
	}

	public Date getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

}
