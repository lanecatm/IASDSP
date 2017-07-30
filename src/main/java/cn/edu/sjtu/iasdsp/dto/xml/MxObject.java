package cn.edu.sjtu.iasdsp.dto.xml;

import java.util.Map;

import javax.xml.bind.annotation.XmlAnyAttribute;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.namespace.QName;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月27日 下午4:16:50
* @version 
* Introduction
*/
public class MxObject {
	private Integer id;
	private String label;
	private Map<QName, String> extendAttributes;
	private MxCell mxCell;

	
	@XmlAttribute
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	@XmlElement
	public MxCell getMxCell() {
		return mxCell;
	}
	public void setMxCell(MxCell mxCell) {
		this.mxCell = mxCell;
	}
	
	@XmlAttribute
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	
	@XmlAnyAttribute
	public Map<QName, String> getExtendAttributes() {
		return extendAttributes;
	}
	public void setExtendAttributes(Map<QName, String> extendAttributes) {
		this.extendAttributes = extendAttributes;
	}
}
