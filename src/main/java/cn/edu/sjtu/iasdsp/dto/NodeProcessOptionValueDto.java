package cn.edu.sjtu.iasdsp.dto;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年8月2日 上午12:48:27
* @version 
* Introduction
*/

public class NodeProcessOptionValueDto {
	private Integer nodeOptionId;
	private String value;

	public Integer getNodeOptionId() {
		return nodeOptionId;
	}

	public void setNodeOptionId(Integer nodeOptionId) {
		this.nodeOptionId = nodeOptionId;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "NodeProcessOptionValueDto [nodeOptionId=" + nodeOptionId + ", value=" + value + "]";
	}

}
