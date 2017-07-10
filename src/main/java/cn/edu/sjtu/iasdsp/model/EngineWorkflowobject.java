package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Workflowobject generated by hbm2java
 */
@Entity
@Table(name = "workflowobject", catalog = "isdsp_dev")
public class EngineWorkflowobject implements java.io.Serializable {

	private Integer id;
	private String workflowId;
	private Integer objectId;
	private String objectName;
	private Boolean isinput;
	private Boolean isoutput;
	private Boolean isvisible;
	private Short objectType;
	private Short scope;
	private Short packageObjectId;

	public EngineWorkflowobject() {
	}

	public EngineWorkflowobject(String workflowId, Integer objectId, String objectName, Boolean isinput, Boolean isoutput,
			Boolean isvisible, Short objectType, Short scope, Short packageObjectId) {
		this.workflowId = workflowId;
		this.objectId = objectId;
		this.objectName = objectName;
		this.isinput = isinput;
		this.isoutput = isoutput;
		this.isvisible = isvisible;
		this.objectType = objectType;
		this.scope = scope;
		this.packageObjectId = packageObjectId;
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

	@Column(name = "WorkflowID", length = 50)
	public String getWorkflowId() {
		return this.workflowId;
	}

	public void setWorkflowId(String workflowId) {
		this.workflowId = workflowId;
	}

	@Column(name = "ObjectID")
	public Integer getObjectId() {
		return this.objectId;
	}

	public void setObjectId(Integer objectId) {
		this.objectId = objectId;
	}

	@Column(name = "ObjectName", length = 100)
	public String getObjectName() {
		return this.objectName;
	}

	public void setObjectName(String objectName) {
		this.objectName = objectName;
	}

	@Column(name = "ISInput")
	public Boolean getIsinput() {
		return this.isinput;
	}

	public void setIsinput(Boolean isinput) {
		this.isinput = isinput;
	}

	@Column(name = "ISOutput")
	public Boolean getIsoutput() {
		return this.isoutput;
	}

	public void setIsoutput(Boolean isoutput) {
		this.isoutput = isoutput;
	}

	@Column(name = "ISVisible")
	public Boolean getIsvisible() {
		return this.isvisible;
	}

	public void setIsvisible(Boolean isvisible) {
		this.isvisible = isvisible;
	}

	@Column(name = "ObjectType")
	public Short getObjectType() {
		return this.objectType;
	}

	public void setObjectType(Short objectType) {
		this.objectType = objectType;
	}

	@Column(name = "Scope")
	public Short getScope() {
		return this.scope;
	}

	public void setScope(Short scope) {
		this.scope = scope;
	}

	@Column(name = "PackageObjectID")
	public Short getPackageObjectId() {
		return this.packageObjectId;
	}

	public void setPackageObjectId(Short packageObjectId) {
		this.packageObjectId = packageObjectId;
	}

}