package cn.edu.sjtu.iasdsp.dto;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月30日 下午4:59:16
* @version 
* Introduction
*/
public class DownloadFileDto {

	private Integer processId;

	public Integer getProcessId() {
		return processId;
	}

	public void setProcessId(Integer processId) {
		this.processId = processId;
	}

	@Override
	public String toString() {
		return "DownloadFileDto [processId=" + processId + "]";
	}
	
	
	
}
