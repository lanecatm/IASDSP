package cn.edu.sjtu.iasdsp.dto.xml;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月27日 下午1:19:47
* @version 
* Introduction
*/
public class MxRoot {
	
	private List<MxCell> mxCell;
	private List<MxObject> MxObject;
	private List<MxObject> algorithmNodeList;
	private List<MxObject> startNodeList;
	private List<MxObject> endNodeList;
	private List<MxObject> edgeList;

    @XmlElement(name="mxCell")
	public List<MxCell> getMxCell() {
		return mxCell;
	}

	public void setMxCell(List<MxCell> mxCell) {
		this.mxCell = mxCell;
	}
	
	
	
	
    @XmlElement(name="StartNode")
    public List<MxObject> getStartNodeList() {
		return startNodeList;
	}

	public void setStartNodeList(List<MxObject> startNodeList) {
		this.startNodeList = startNodeList;
	}

    @XmlElement(name="EndNode")
	public List<MxObject> getEndNodeList() {
		return endNodeList;
	}

	public void setEndNodeList(List<MxObject> endNodeList) {
		this.endNodeList = endNodeList;
	}

    @XmlElement(name="Edge")
	public List<MxObject> getEdgeList() {
		return edgeList;
	}

	public void setEdgeList(List<MxObject> edgeList) {
		this.edgeList = edgeList;
	}

	@XmlElement(name="object")
	public List<MxObject> getMxObject() {
		return MxObject;
	}

	public void setMxObject(List<MxObject> mxObject) {
		MxObject = mxObject;
	}
	
    @XmlElement(name="AlgorithmNode")
	public List<MxObject> getAlgorithmNodeList() {
		return algorithmNodeList;
	}

	public void setAlgorithmNodeList(List<MxObject> algorithmNodeList) {
		this.algorithmNodeList = algorithmNodeList;
	}

	public String toString() {
		return "MxRoot [mxCell=" + mxCell + ", MxObject=" + MxObject + ", algorithmNodeList=" + algorithmNodeList
				+ ", startNodeList=" + startNodeList + ", endNodeList=" + endNodeList + ", edgeList=" + edgeList + "]";
	}






}
