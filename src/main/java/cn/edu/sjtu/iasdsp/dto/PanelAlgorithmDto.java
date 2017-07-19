package cn.edu.sjtu.iasdsp.dto;

import java.util.HashSet;
import java.util.Set;

import cn.edu.sjtu.iasdsp.model.NodeOption;
import cn.edu.sjtu.iasdsp.model.NodeOptionChoice;
import cn.edu.sjtu.iasdsp.model.NodeOptionType;
import cn.edu.sjtu.iasdsp.model.NodeOptionValue;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月19日 下午4:05:31
* @version 
* Introduction
*/
public class PanelAlgorithmDto {
	
	public class PanelOption{
		private Integer nodeIndex;
		private String name;
		private String label;
		private String description;
		private String defaultValue;
		private String nodeOptionTypeName;
		private Set<PanelChoice> panelChoices = new HashSet<PanelChoice>(0);
		
		public PanelOption(Integer nodeIndex, String name, String label, String description, String defaultValue,
				String nodeOptionTypeName, Set<PanelChoice> panelChoices) {
			this.nodeIndex = nodeIndex;
			this.name = name;
			this.label = label;
			this.description = description;
			this.defaultValue = defaultValue;
			this.nodeOptionTypeName = nodeOptionTypeName;
			this.panelChoices = panelChoices;
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
		public Set<PanelChoice> getPanelChoices() {
			return panelChoices;
		}
		public void setPanelChoices(Set<PanelChoice> panelChoices) {
			this.panelChoices = panelChoices;
		}
		
	}
	
	public class PanelChoice{
		String name;
		String value;
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
		public PanelChoice(String name, String value) {
			this.name = name;
			this.value = value;
		}
	}
	
	private String name;
	private String description;
	private Set<PanelOption> panelOptions = new HashSet<PanelOption>(0);
	
	
	
	
	public PanelAlgorithmDto(String name, String description) {
		super();
		this.name = name;
		this.description = description;
		this.panelOptions = panelOptions;
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
