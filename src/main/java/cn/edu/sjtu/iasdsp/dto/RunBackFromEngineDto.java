package cn.edu.sjtu.iasdsp.dto;

import java.util.Map;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月30日 上午11:51:01
* @version 
* Introduction
*/
public class RunBackFromEngineDto {

	private String processID;
	private String procedure;
	private Map<String, String> detail;
	private String status;
	public String getProcessID() {
		return processID;
	}
	public void setProcessID(String processID) {
		this.processID = processID;
	}
	public String getProcedure() {
		return procedure;
	}
	public void setProcedure(String procedure) {
		this.procedure = procedure;
	}
	public Map<String, String> getDetail() {
		return detail;
	}
	public void setDetail(Map<String, String> detail) {
		this.detail = detail;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String toString() {
		return "RunBackFromEngineDto [processID=" + processID + ", procedure=" + procedure + ", detail=" + detail
				+ ", status=" + status + "]";
	}
	
	

}
