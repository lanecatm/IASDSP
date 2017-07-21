package cn.edu.sjtu.iasdsp.dto;

import java.util.HashSet;
import java.util.Set;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月20日 上午10:08:29
 * @version Introduction
 */
public class PanelAllAlgorithmDto {

	
	private Set<PanelCategory> panelCategoryList = new HashSet<PanelCategory>(0);
	
	
	
	public PanelAllAlgorithmDto() {
	}

	public Set<PanelCategory> getPanelCategoryList() {
		return panelCategoryList;
	}

	public void setPanelCategoryList(Set<PanelCategory> panelCategoryList) {
		this.panelCategoryList = panelCategoryList;
	}
	
	public void addPanelCategory(PanelCategory panelCategory){
		panelCategoryList.add(panelCategory);
	}

	public class PanelCategory {
		private String categoryName;
		private Integer categoryId;
		Set<PanelAlgorithm> algorithmList = new HashSet<PanelAlgorithm>(0);

		
		
		public PanelCategory(String categoryName, Integer categoryId) {
			super();
			this.categoryName = categoryName;
			this.categoryId = categoryId;
		}

		public void addPanelAlgorithm(String algorithmName, Integer algorithmId, String description) {
			PanelAlgorithm panelAlgorithm = new PanelAlgorithm(algorithmName, algorithmId, description);
			algorithmList.add(panelAlgorithm);
		}

		public String getCategoryName() {
			return categoryName;
		}

		public void setCategoryName(String categoryName) {
			this.categoryName = categoryName;
		}

		public Integer getCategoryId() {
			return categoryId;
		}

		public void setCategoryId(Integer categoryId) {
			this.categoryId = categoryId;
		}

		public Set<PanelAlgorithm> getAlgorithmList() {
			return algorithmList;
		}

		public void setAlgorithmList(Set<PanelAlgorithm> algorithmList) {
			this.algorithmList = algorithmList;
		}
		
		
		
	}

	public class PanelAlgorithm {
		private String algorithmName;
		private Integer algorithmId;
		private String description;

		public PanelAlgorithm(String algorithmName, Integer algorithmId, String description) {
			super();
			this.algorithmName = algorithmName;
			this.algorithmId = algorithmId;
			this.description = description;
		}

		public String getAlgorithmName() {
			return algorithmName;
		}

		public void setAlgorithmName(String algorithmName) {
			this.algorithmName = algorithmName;
		}

		public Integer getAlgorithmId() {
			return algorithmId;
		}

		public void setAlgorithmId(Integer algorithmId) {
			this.algorithmId = algorithmId;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

	}

}
