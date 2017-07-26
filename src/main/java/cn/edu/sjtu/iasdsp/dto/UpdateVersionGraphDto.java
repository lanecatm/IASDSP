package cn.edu.sjtu.iasdsp.dto;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月21日 上午9:41:27
* @version 
* Introduction
*/
public class UpdateVersionGraphDto {
	private String graph_xml;
	private String graph_svg;

	public String getGraph_xml() {
		return graph_xml;
	}

	public void setGraph_xml(String xml) {
		this.graph_xml = xml;
	}

	public String getGraph_svg() {
		return graph_svg;
	}

	public void setGraph_svg(String graph_svg) {
		this.graph_svg = graph_svg;
	}

	@Override
	public String toString() {
		return "UpdateVersionGraphDto [graph_xml=" + graph_xml + ", graph_svg=" + graph_svg + "]";
	}


	

}
