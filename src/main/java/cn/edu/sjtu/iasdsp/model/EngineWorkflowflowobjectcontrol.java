package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Workflowflowobjectcontrol generated by hbm2java
 */
@Entity
@Table(name = "workflowflowobjectcontrol", catalog = "isdsp_dev")
public class EngineWorkflowflowobjectcontrol implements java.io.Serializable {

	private Integer id;
	private int workflowId;
	private int flowId;
	private short objectId;
	private Short privilege;
	private Integer objectType;

	public EngineWorkflowflowobjectcontrol() {
	}

	public EngineWorkflowflowobjectcontrol(int workflowId, int flowId, short objectId) {
		this.workflowId = workflowId;
		this.flowId = flowId;
		this.objectId = objectId;
	}

	public EngineWorkflowflowobjectcontrol(int workflowId, int flowId, short objectId, Short privilege, Integer objectType) {
		this.workflowId = workflowId;
		this.flowId = flowId;
		this.objectId = objectId;
		this.privilege = privilege;
		this.objectType = objectType;
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

	@Column(name = "WorkflowID", nullable = false)
	public int getWorkflowId() {
		return this.workflowId;
	}

	public void setWorkflowId(int workflowId) {
		this.workflowId = workflowId;
	}

	@Column(name = "FlowID", nullable = false)
	public int getFlowId() {
		return this.flowId;
	}

	public void setFlowId(int flowId) {
		this.flowId = flowId;
	}

	@Column(name = "ObjectID", nullable = false)
	public short getObjectId() {
		return this.objectId;
	}

	public void setObjectId(short objectId) {
		this.objectId = objectId;
	}

	@Column(name = "Privilege")
	public Short getPrivilege() {
		return this.privilege;
	}

	public void setPrivilege(Short privilege) {
		this.privilege = privilege;
	}

	@Column(name = "ObjectType")
	public Integer getObjectType() {
		return this.objectType;
	}

	public void setObjectType(Integer objectType) {
		this.objectType = objectType;
	}

}
