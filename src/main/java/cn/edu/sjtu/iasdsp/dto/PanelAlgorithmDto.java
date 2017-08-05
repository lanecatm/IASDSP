package cn.edu.sjtu.iasdsp.dto;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月19日 下午4:05:31
* @version 
* Introduction
*/
public class PanelAlgorithmDto {
		
	private Integer algorithmId;
	private String name;
	private String description;
	private Set<PanelOption> panelOptions = new HashSet<PanelOption>(0);
	
	public PanelAlgorithmDto(Integer algorithmId, String name, String description) {
		this.algorithmId = algorithmId;
		this.name = name;
		this.description = description;
	}
	
	public class PanelOption{
		private Integer nodeId;
		private Integer nodeIndex;
		private String name;
		private String label;
		private String description;
		private String defaultValue;
		private String nodeOptionTypeName;
		private List<PanelChoice> panelChoices = new ArrayList<PanelChoice>(0);
		
		public PanelOption(Integer nodeId, Integer nodeIndex, String name, String label, String description, String defaultValue,
				String nodeOptionTypeName, List<PanelChoice> panelChoices) {
			this.nodeId = nodeId;
			this.nodeIndex = nodeIndex;
			this.name = name;
			this.label = label;
			this.description = description;
			this.defaultValue = defaultValue;
			this.nodeOptionTypeName = nodeOptionTypeName;
			this.panelChoices = panelChoices;
		}
		
		
		
		
		public Integer getNodeId() {
			return nodeId;
		}

		public void setNodeId(Integer nodeId) {
			this.nodeId = nodeId;
		}

		public Integer getNodeIndex() {
			return nodeIndex;
		}
		public void setNodeIndex(Integer nodeIndex) {
			this.nodeIndex = nodeIndex;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getLabel() {
			return label;
		}
		public void setLabel(String label) {
			this.label = label;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getDefaultValue() {
			return defaultValue;
		}
		public void setDefaultValue(String defaultValue) {
			this.defaultValue = defaultValue;
		}
		public String getNodeOptionTypeName() {
			return nodeOptionTypeName;
		}
		public void setNodeOptionTypeName(String nodeOptionTypeName) {
			this.nodeOptionTypeName = nodeOptionTypeName;
		}
		public List<PanelChoice> getPanelChoices() {
			return panelChoices;
		}
		public void setPanelChoices(List<PanelChoice> panelChoices) {
			this.panelChoices = panelChoices;
		}
		
	}
	
	public class PanelChoice{
		Integer id;
		String name;
		String value;
		
		
		
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getValue() {
			return value;
		}
		public void setValue(String value) {
			this.value = value;
		}
		public PanelChoice(Integer id, String name, String value) {
			this.id = id;
			this.name = name;
			this.value = value;
		}
	}

	public Integer getAlgorithmId() {
		return algorithmId;
	}
	public void setAlgorithmId(Integer algorithmId) {
		this.algorithmId = algorithmId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Set<PanelOption> getPanelOptions() {
		return panelOptions;
	}
	public void setPanelOptions(Set<PanelOption> panelOptions) {
		this.panelOptions = panelOptions;
	}
	
	
}
