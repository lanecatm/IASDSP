package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Workflowinherentvariable generated by hbm2java
 */
@Entity
@Table(name = "workflowinherentvariable", catalog = "isdsp_dev")
public class EngineWorkflowinherentvariable implements java.io.Serializable {

	private Integer id;
	private int workflowId;
	private int objectId;
	private String objectName;
	private String description;
	private Short valueType;
	private String initialValue;

	public EngineWorkflowinherentvariable() {
	}

	public EngineWorkflowinherentvariable(int workflowId, int objectId) {
		this.workflowId = workflowId;
		this.objectId = objectId;
	}

	public EngineWorkflowinherentvariable(int workflowId, int objectId, String objectName, String description,
			Short valueType, String initialValue) {
		this.workflowId = workflowId;
		this.objectId = objectId;
		this.objectName = objectName;
		this.description = description;
		this.valueType = valueType;
		this.initialValue = initialValue;
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

	@Column(name = "ObjectID", nullable = false)
	public int getObjectId() {
		return this.objectId;
	}

	public void setObjectId(int objectId) {
		this.objectId = objectId;
	}

	@Column(name = "ObjectName", length = 50)
	public String getObjectName() {
		return this.objectName;
	}

	public void setObjectName(String objectName) {
		this.objectName = objectName;
	}

	@Column(name = "Description", length = 50)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "ValueType")
	public Short getValueType() {
		return this.valueType;
	}

	public void setValueType(Short valueType) {
		this.valueType = valueType;
	}

	@Column(name = "InitialValue", length = 50)
	public String getInitialValue() {
		return this.initialValue;
	}

	public void setInitialValue(String initialValue) {
		this.initialValue = initialValue;
	}

}
