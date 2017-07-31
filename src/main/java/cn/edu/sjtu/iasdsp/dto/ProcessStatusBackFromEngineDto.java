package cn.edu.sjtu.iasdsp.dto;

import com.fasterxml.jackson.annotation.JsonGetter;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月30日 下午3:05:27
* @version 
* Introduction
*/
public class ProcessStatusBackFromEngineDto {
	private Integer cnt;
	private String event;
	private String processID;
	private String eventReprestion;
	private String status;
	
	
	@JsonGetter("cnt")
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	
	@JsonGetter("Event")
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	
	
	@JsonGetter("ProcessID")
	public String getProcessID() {
		return processID;
	}
	public void setProcessID(String processID) {
		this.processID = processID;
	}
	@JsonGetter("EventReprestion")
	public String getEventReprestion() {
		return eventReprestion;
	}
	public void setEventReprestion(String eventReprestion) {
		this.eventReprestion = eventReprestion;
	}
	@JsonGetter("status")
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String toString() {
		return "ProcessStatusBackFromEngineDto [cnt=" + cnt + ", Event=" + event + ", ProcessID=" + processID
				+ ", EventReprestion=" + eventReprestion + ", status=" + status + "]";
	}

	

}

