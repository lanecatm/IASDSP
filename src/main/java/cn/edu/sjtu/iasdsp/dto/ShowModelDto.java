package cn.edu.sjtu.iasdsp.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import cn.edu.sjtu.iasdsp.model.SharedProcessRecord;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;
import cn.edu.sjtu.iasdsp.model.WorkflowTag;
import cn.edu.sjtu.iasdsp.model.WorkflowVersion;

public class ShowModelDto {
	
	private WorkflowInformation workflowInformation;

	private Map<Integer, List<SharedProcessRecord>> sharedProcessRecordMap = new HashMap<Integer, List<SharedProcessRecord>>(0);

	//diagram
	private String xml;
	
	private String versionLabelListStr;
	private String versionStarListStr;
	private String versionTimeListStr;
	

	public ShowModelDto() {
	}


	public WorkflowInformation getWorkflowInformation() {
		return workflowInformation;
	}


	public void setWorkflowInformation(WorkflowInformation workflowInformation) {
		this.workflowInformation = workflowInformation;
	}


	public String getXml() {
		return xml;
	}


	public void setXml(String xml) {
		this.xml = xml;
	}
	
	public Map<Integer, List<SharedProcessRecord>> getSharedProcessRecordMap() {
		return sharedProcessRecordMap;
	}


	public void setSharedProcessRecordMap(Map<Integer, List<SharedProcessRecord>> sharedProcessRecordMap) {
		this.sharedProcessRecordMap = sharedProcessRecordMap;
	}


	public String getVersionLabelListStr() {
		return versionLabelListStr;
	}


	public void setVersionLabelListStr(String versionLabelListStr) {
		this.versionLabelListStr = versionLabelListStr;
	}


	public String getVersionStarListStr() {
		return versionStarListStr;
	}


	public void setVersionStarListStr(String versionStarListStr) {
		this.versionStarListStr = versionStarListStr;
	}


	public String getVersionTimeListStr() {
		return versionTimeListStr;
	}


	public void setVersionTimeListStr(String versionTimeListStr) {
		this.versionTimeListStr = versionTimeListStr;
	}


	public String toString() {
		return "ShowModelDto [workflowInformation=" + workflowInformation + ", sharedProcessRecordMap="
				+ sharedProcessRecordMap + ", xml=" + xml + ", versionLabelListStr=" + versionLabelListStr
				+ ", versionStarListStr=" + versionStarListStr + ", versionTimeListStr=" + versionTimeListStr + "]";
	}


}
