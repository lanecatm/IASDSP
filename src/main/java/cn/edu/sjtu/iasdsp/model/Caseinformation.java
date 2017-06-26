package cn.edu.sjtu.iasdsp.model;
// Generated 2017-6-26 3:55:41 by Hibernate Tools 5.2.3.Final

import java.util.Date;

/**
 * Caseinformation generated by hbm2java
 */
public class Caseinformation implements java.io.Serializable {

	private Integer id;
	private String processId;
	private int workflowId;
	private String caseName;
	private String keyWords;
	private Integer initiatorId;
	private Date initiatorDate;

	public Caseinformation() {
	}

	public Caseinformation(String processId, int workflowId) {
		this.processId = processId;
		this.workflowId = workflowId;
	}

	public Caseinformation(String processId, int workflowId, String caseName, String keyWords, Integer initiatorId,
			Date initiatorDate) {
		this.processId = processId;
		this.workflowId = workflowId;
		this.caseName = caseName;
		this.keyWords = keyWords;
		this.initiatorId = initiatorId;
		this.initiatorDate = initiatorDate;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProcessId() {
		return this.processId;
	}

	public void setProcessId(String processId) {
		this.processId = processId;
	}

	public int getWorkflowId() {
		return this.workflowId;
	}

	public void setWorkflowId(int workflowId) {
		this.workflowId = workflowId;
	}

	public String getCaseName() {
		return this.caseName;
	}

	public void setCaseName(String caseName) {
		this.caseName = caseName;
	}

	public String getKeyWords() {
		return this.keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}

	public Integer getInitiatorId() {
		return this.initiatorId;
	}

	public void setInitiatorId(Integer initiatorId) {
		this.initiatorId = initiatorId;
	}

	public Date getInitiatorDate() {
		return this.initiatorDate;
	}

	public void setInitiatorDate(Date initiatorDate) {
		this.initiatorDate = initiatorDate;
	}

}
