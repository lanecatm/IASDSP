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

    @XmlElement(name="mxCell")
	public List<MxCell> getMxCell() {
		return mxCell;
	}

	public void setMxCell(List<MxCell> mxCell) {
		this.mxCell = mxCell;
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
		return "MxRoot [mxCell=" + mxCell + ", MxObject=" + MxObject + "]";
	}




}
