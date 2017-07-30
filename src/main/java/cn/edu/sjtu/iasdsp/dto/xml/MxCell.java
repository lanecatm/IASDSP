package cn.edu.sjtu.iasdsp.dto.xml;

import java.util.List;
import java.util.Map;

import javax.xml.bind.annotation.XmlAnyAttribute;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.namespace.QName;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月27日 下午3:09:07
* @version 
* Introduction
*/
public class MxCell {

	private Integer id;
	private String value;
	//TODO 默认一个还是多个？
	//private geometry
	private String style;
	private Boolean vertex = false;
	private Boolean edge = false;
	private Boolean connectable = true;
	private Boolean visible = true;
	private Boolean collapsed = false;
	private String source;
	private String target;
	private String parent;
	
	private Map<QName, String> extendAttributes;
	private List<MxGeometry> mxGeometryList;
	
	@XmlAttribute(name="id")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@XmlAttribute(name="value")
	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@XmlAttribute(name="style")
	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	@XmlAttribute(name="vertex")
	public Boolean getVertex() {
		return vertex;
	}

	public void setVertex(Boolean vertex) {
		this.vertex = vertex;
	}

	@XmlAttribute(name="edge")
	public Boolean getEdge() {
		return edge;
	}

	public void setEdge(Boolean edge) {
		this.edge = edge;
	}

	@XmlAttribute(name="connectable")
	public Boolean getConnectable() {
		return connectable;
	}

	public void setConnectable(Boolean connectable) {
		this.connectable = connectable;
	}

	@XmlAttribute(name="visible")
	public Boolean getVisible() {
		return visible;
	}

	public void setVisible(Boolean visible) {
		this.visible = visible;
	}
	
	@XmlAttribute(name="collapsed")
	public Boolean getCollapsed() {
		return collapsed;
	}

	public void setCollapsed(Boolean collapsed) {
		this.collapsed = collapsed;
	}
	
	@XmlAttribute(name="source")
	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	@XmlAttribute(name="target")
	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}
	
	@XmlAttribute(name="parent")
	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}

	@XmlAnyAttribute
	public Map<QName, String> getExtendAttributes() {
		return extendAttributes;
	}

	public void setExtendAttributes(Map<QName, String> extendAttributes) {
		this.extendAttributes = extendAttributes;
	}

	@XmlElement
	public List<MxGeometry> getMxGeometryList() {
		return mxGeometryList;
	}

	public void setMxGeometryList(List<MxGeometry> mxGeometryList) {
		this.mxGeometryList = mxGeometryList;
	}

	public String toString() {
		return "MxCell [id=" + id + ", value=" + value + ", style=" + style + ", vertex=" + vertex + ", edge=" + edge
				+ ", connectable=" + connectable + ", visible=" + visible + ", collapsed=" + collapsed + ", source="
				+ source + ", target=" + target + ", parent=" + parent + ", extendAttributes=" + extendAttributes
				+ ", mxGeometryList=" + mxGeometryList + "]";
	}
	
}
