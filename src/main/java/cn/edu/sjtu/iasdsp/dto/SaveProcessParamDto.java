package cn.edu.sjtu.iasdsp.dto;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年8月1日 下午9:23:16
* @version 
* Introduction
*/

import java.util.ArrayList;
import java.util.List;

public class SaveProcessParamDto {

	private List<NodeProcessInformationDto> nodeProcessInformations = new ArrayList<NodeProcessInformationDto>(0);

	public List<NodeProcessInformationDto> getNodeProcessInformations() {
		return nodeProcessInformations;
	}

	public void setNodeProcessInformations(List<NodeProcessInformationDto> nodeProcessInformationDtos) {
		this.nodeProcessInformations = nodeProcessInformationDtos;
	}

	public String toString() {
		return "SaveProcessParamDto [nodeProcessInformations=" + nodeProcessInformations + "]";
	}

}

