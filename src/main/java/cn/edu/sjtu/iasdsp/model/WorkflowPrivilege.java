package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

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
 * WorkflowPrivileges generated by hbm2java
 */
@Entity
@Table(name = "workflow_privileges", catalog = "isdsp_dev")
public class WorkflowPrivilege implements java.io.Serializable {

	private Integer id;
	private WorkflowInformation workflowInformation;
	private DepartmentInformation editDepartment;
	private DepartmentInformation executeDepartment;
	private DepartmentInformation deleteDepartment;
	private DepartmentInformation showDepartment;
	private Date createdAt;
	private Date updatedAt;

	public WorkflowPrivilege() {
	}

	public WorkflowPrivilege(Date createdAt, Date updatedAt) {
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

	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "workflow_information_id")
	public WorkflowInformation getWorkflowInformation() {
		return workflowInformation;
	}

	public void setWorkflowInformation(WorkflowInformation workflowInformation) {
		this.workflowInformation = workflowInformation;
	}


	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "edit_department_id")
	public DepartmentInformation getEditDepartment() {
		return editDepartment;
	}

	public void setEditDepartment(DepartmentInformation editDepartment) {
		this.editDepartment = editDepartment;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "execute_department_id")
	public DepartmentInformation getExecuteDepartment() {
		return executeDepartment;
	}

	public void setExecuteDepartment(DepartmentInformation executeDepartment) {
		this.executeDepartment = executeDepartment;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "delete_department_id")
	public DepartmentInformation getDeleteDepartment() {
		return deleteDepartment;
	}

	public void setDeleteDepartment(DepartmentInformation deleteDepartment) {
		this.deleteDepartment = deleteDepartment;
	}



	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at", nullable = false, length = 19)
	public Date getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "show_department_id")
	public DepartmentInformation getShowDepartment() {
		return showDepartment;
	}

	public void setShowDepartment(DepartmentInformation showDepartment) {
		this.showDepartment = showDepartment;
	}


	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updated_at", nullable = false, length = 19)
	public Date getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	@Override
	public String toString() {
		return "WorkflowPrivilege [id=" + id + ", workflowInformation=" + workflowInformation + ", editDepartment="
				+ editDepartment + ", executeDepartment=" + executeDepartment + ", deleteDepartment=" + deleteDepartment
				+ ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	
	

}
