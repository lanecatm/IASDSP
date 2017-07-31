package cn.edu.sjtu.iasdsp.dto;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月30日 下午2:46:45
* @version 
* Introduction
*/
public class ResultBackFromEngineDto {
	public class Detail{
		private String resultFileName;
		private String summary;
		private String modelFileName;
		public String getResultFileName() {
			return resultFileName;
		}
		public void setResultFileName(String resultFileName) {
			this.resultFileName = resultFileName;
		}
		public String getSummary() {
			return summary;
		}
		public void setSummary(String finalClusterCentroids) {
			this.summary = finalClusterCentroids;
		}
		public String getModelFileName() {
			return modelFileName;
		}
		public void setModelFileName(String modelFileName) {
			this.modelFileName = modelFileName;
		}
		public String toString() {
			return "Detail [resultFileName=" + resultFileName + ", finalClusterCentroids=" + summary
					+ ", modelFileName=" + modelFileName + "]";
		}
		
		
	}
	private String processID;
	private String procedure;
	private Detail detail;
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
	public Detail getDetail() {
		return detail;
	}
	public void setDetail(Detail detail) {
		this.detail = detail;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String toString() {
		return "ResultBackFromEngineDto [processID=" + processID + ", procedure=" + procedure + ", detail=" + detail
				+ ", status=" + status + "]";
	} 
	
	
	
}
