package cn.edu.sjtu.iasdsp.dto;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月30日 下午2:37:12
* @version 
* Introduction
*/
public class ReturnReceiveProcessDto {

	private String result;
	private String processStr;
	
	
	
	public ReturnReceiveProcessDto(String result, String processStr) {
		super();
		this.result = result;
		this.processStr = processStr;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getProcessStr() {
		return processStr;
	}
	public void setProcessStr(String processStr) {
		this.processStr = processStr;
	}
	
	
}
