package cn.edu.sjtu.iasdsp.dto;

import java.util.ArrayList;
import java.util.List;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年8月2日 上午12:47:30
* @version 
* Introduction
*/
public class NodeProcessInformationDto {
	
	private Integer nodeFunctionId;
	private String name;
	private List<NodeProcessOptionValueDto> nodeProcessOptionValues = new ArrayList<NodeProcessOptionValueDto>(0);

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getNodeFunctionId() {
		return nodeFunctionId;
	}

	public void setNodeFunctionId(Integer nodeFunctionId) {
		this.nodeFunctionId = nodeFunctionId;
	}

	public List<NodeProcessOptionValueDto> getNodeProcessOptionValues() {
		return nodeProcessOptionValues;
	}

	public void setNodeProcessOptionValues(List<NodeProcessOptionValueDto> nodeProcessOptionValueDtos) {
		this.nodeProcessOptionValues = nodeProcessOptionValueDtos;
	}

	public String toString() {
		return "NodeProcessInformationDto [nodeFunctionId=" + nodeFunctionId + ", name=" + name
				+ ", nodeProcessOptionValues=" + nodeProcessOptionValues + "]";
	}





}
