package cn.edu.sjtu.iasdsp.dto;

import java.util.HashMap;
import java.util.Map;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月23日 下午2:11:47
* @version 
* Introduction
*/
public class ShareExecuteDto {
	private Integer star;
	private Boolean hasApplication;
	private Boolean isShare;
	private String runningCaseName;
	private Integer applicationId;
	private Integer defaultApplicationId;

	private Integer departmentInformationId;
	private Boolean shareInputFile;
	private Integer processInformationId;
	
	private Map<Integer, String> departmentList = new HashMap<Integer, String>(0);
	private Map<Integer, String> applicationList = new HashMap<Integer, String>(0);
	
	
	

	public Integer getStar() {
		return star;
	}
	public void setStar(Integer star) {
		this.star = star;
	}
	public Boolean getHasApplication() {
		return hasApplication;
	}
	public void setHasApplication(Boolean hasApplication) {
		this.hasApplication = hasApplication;
	}
	public Boolean getIsShare() {
		return isShare;
	}
	public void setIsShare(Boolean isShare) {
		this.isShare = isShare;
	}
	public String getRunningCaseName() {
		return runningCaseName;
	}
	public void setRunningCaseName(String runningCaseName) {
		this.runningCaseName = runningCaseName;
	}
	public Integer getApplicationId() {
		return applicationId;
	}
	public void setApplicationId(Integer applicationId) {
		this.applicationId = applicationId;
	}
	public Integer getDepartmentInformationId() {
		return departmentInformationId;
	}
	public void setDepartmentInformationId(Integer departmentInformation) {
		this.departmentInformationId = departmentInformation;
	}
	public Boolean getShareInputFile() {
		return shareInputFile;
	}
	public void setShareInputFile(Boolean shareInputFile) {
		this.shareInputFile = shareInputFile;
	}
	public Map<Integer, String> getDepartmentList() {
		return departmentList;
	}
	public void setDepartmentList(Map<Integer, String> departmentList) {
		this.departmentList = departmentList;
	}
	public Map<Integer, String> getApplicationList() {
		return applicationList;
	}
	public void setApplicationList(Map<Integer, String> applicationList) {
		this.applicationList = applicationList;
	}
	
	public Integer getProcessInformationId() {
		return processInformationId;
	}
	public void setProcessInformationId(Integer processInformationId) {
		this.processInformationId = processInformationId;
	}
	
	
	
	
	public Integer getDefaultApplicationId() {
		return defaultApplicationId;
	}
	public void setDefaultApplicationId(Integer defaultApplicationId) {
		this.defaultApplicationId = defaultApplicationId;
	}
	public String toString() {
		return "ShareExecuteDto [star=" + star + ", hasApplication=" + hasApplication + ", isShare=" + isShare
				+ ", runningCaseName=" + runningCaseName + ", applicationId=" + applicationId
				+ ", departmentInformationId=" + departmentInformationId + ", shareInputFile=" + shareInputFile
				+ ", processInformationId=" + processInformationId + ", departmentList=" + departmentList
				+ ", applicationList=" + applicationList + "]";
	}


	
	
	
}
