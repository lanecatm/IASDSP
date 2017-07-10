package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Workflowcondition generated by hbm2java
 */
@Entity
@Table(name = "workflowcondition", catalog = "isdsp_dev")
public class EngineWorkflowcondition implements java.io.Serializable {

	private Integer id;
	private int workflowId;
	private int conditionId;
	private String conditionRepresentation;
	private String conditionName;

	public EngineWorkflowcondition() {
	}

	public EngineWorkflowcondition(int workflowId, int conditionId) {
		this.workflowId = workflowId;
		this.conditionId = conditionId;
	}

	public EngineWorkflowcondition(int workflowId, int conditionId, String conditionRepresentation, String conditionName) {
		this.workflowId = workflowId;
		this.conditionId = conditionId;
		this.conditionRepresentation = conditionRepresentation;
		this.conditionName = conditionName;
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

	@Column(name = "ConditionID", nullable = false)
	public int getConditionId() {
		return this.conditionId;
	}

	public void setConditionId(int conditionId) {
		this.conditionId = conditionId;
	}

	@Column(name = "ConditionRepresentation", length = 200)
	public String getConditionRepresentation() {
		return this.conditionRepresentation;
	}

	public void setConditionRepresentation(String conditionRepresentation) {
		this.conditionRepresentation = conditionRepresentation;
	}

	@Column(name = "ConditionName", length = 50)
	public String getConditionName() {
		return this.conditionName;
	}

	public void setConditionName(String conditionName) {
		this.conditionName = conditionName;
	}

}