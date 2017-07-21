package cn.edu.sjtu.iasdsp.dto;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月20日 下午12:05:35
* @version 
* Introduction
*/
public class PanelGraphDto {
	private Integer id;
	private String xml;
	
	public PanelGraphDto(Integer id, String xml) {
		this.id = id;
		this.xml = xml;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getXml() {
		return xml;
	}
	public void setXml(String xml) {
		this.xml = xml;
	}
}
