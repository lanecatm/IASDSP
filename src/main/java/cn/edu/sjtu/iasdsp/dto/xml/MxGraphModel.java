package cn.edu.sjtu.iasdsp.dto.xml;

import java.util.Map;

import javax.xml.bind.annotation.XmlAnyAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.namespace.QName;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月27日 下午4:47:14
* @version 
* Introduction
*/
@XmlRootElement(name="mxGraphModel")
public class MxGraphModel {


	private Map<QName, String> extendAttributes;
	private MxRoot mxRoot;
	
	@XmlAnyAttribute
	public Map<QName, String> getExtendAttributes() {
		return extendAttributes;
	}
	public void setExtendAttributes(Map<QName, String> extendAttributes) {
		this.extendAttributes = extendAttributes;
	}
	
    @XmlElement(name="root")
	public MxRoot getMxRoot() {
		return mxRoot;
	}
	public void setMxRoot(MxRoot mxRoot) {
		this.mxRoot = mxRoot;
	}
	
	
	public String toString() {
		return "MxGraphModel [extendAttributes=" + extendAttributes + ", mxRoot=" + mxRoot + "]";
	}
	
}
