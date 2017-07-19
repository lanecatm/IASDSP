package cn.edu.sjtu.iasdsp.dto;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月19日 下午5:55:08
 * @version Introduction
 */
public class EditPerformanceDto {

	private String performance;
	private Integer workflowInformationId;
	private Integer wikiPageId;

	public EditPerformanceDto() {
	}

	public EditPerformanceDto(String performance, Integer workflowInformationId, Integer wikiPageId) {
		super();
		this.performance = performance;
		this.workflowInformationId = workflowInformationId;
		this.wikiPageId = wikiPageId;
	}

	public Integer getWikiPageId() {
		return wikiPageId;
	}

	public void setWikiPageId(Integer wikiPageId) {
		this.wikiPageId = wikiPageId;
	}

	public String getPerformance() {
		return performance;
	}

	public void setPerformance(String performance) {
		this.performance = performance;
	}

	public Integer getWorkflowInformationId() {
		return workflowInformationId;
	}

	public void setWorkflowInformationId(Integer workflowInformationId) {
		this.workflowInformationId = workflowInformationId;
	}

	public String toString() {
		return "EditPerformanceDto [performance=" + performance + ", workflowInformationId=" + workflowInformationId
				+ ", wikiPageId=" + wikiPageId + "]";
	}


}
