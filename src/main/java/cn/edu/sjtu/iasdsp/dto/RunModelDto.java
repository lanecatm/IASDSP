package cn.edu.sjtu.iasdsp.dto;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月22日 下午9:34:08
* @version 
* Introduction
*/
public class RunModelDto {
	
	private Integer workflowVersionId;
	
	private Integer sharedProcessRecordId;

	
	
	
	public RunModelDto() {
	}

	public RunModelDto(Integer workflowVersionId) {
		this.workflowVersionId = workflowVersionId;
	}

	public Integer getWorkflowVersionId() {
		return workflowVersionId;
	}

	public void setWorkflowVersionId(Integer workflowVersionId) {
		this.workflowVersionId = workflowVersionId;
	}

	public Integer getSharedProcessRecordId() {
		return sharedProcessRecordId;
	}

	public void setSharedProcessRecordId(Integer sharedProcessRecordId) {
		this.sharedProcessRecordId = sharedProcessRecordId;
	}
	
	

}
