package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Workflowevent generated by hbm2java
 */
@Entity
@Table(name = "workflowevent", catalog = "isdsp_dev")
public class EngineWorkflowevent implements java.io.Serializable {

	private Integer id;
	private int workflowId;
	private int eventId;
	private String eventName;
	private String description;
	private String eventRepresentation;
	private Short eventType;
	private Short logicType;
	private Integer activityId;

	public EngineWorkflowevent() {
	}

	public EngineWorkflowevent(int workflowId, int eventId) {
		this.workflowId = workflowId;
		this.eventId = eventId;
	}

	public EngineWorkflowevent(int workflowId, int eventId, String eventName, String description, String eventRepresentation,
			Short eventType, Short logicType, Integer activityId) {
		this.workflowId = workflowId;
		this.eventId = eventId;
		this.eventName = eventName;
		this.description = description;
		this.eventRepresentation = eventRepresentation;
		this.eventType = eventType;
		this.logicType = logicType;
		this.activityId = activityId;
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

	@Column(name = "EventID", nullable = false)
	public int getEventId() {
		return this.eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	@Column(name = "EventName", length = 50)
	public String getEventName() {
		return this.eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	@Column(name = "Description", length = 100)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "EventRepresentation")
	public String getEventRepresentation() {
		return this.eventRepresentation;
	}

	public void setEventRepresentation(String eventRepresentation) {
		this.eventRepresentation = eventRepresentation;
	}

	@Column(name = "EventType")
	public Short getEventType() {
		return this.eventType;
	}

	public void setEventType(Short eventType) {
		this.eventType = eventType;
	}

	@Column(name = "LogicType")
	public Short getLogicType() {
		return this.logicType;
	}

	public void setLogicType(Short logicType) {
		this.logicType = logicType;
	}

	@Column(name = "ActivityID")
	public Integer getActivityId() {
		return this.activityId;
	}

	public void setActivityId(Integer activityId) {
		this.activityId = activityId;
	}

}