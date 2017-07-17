package cn.edu.sjtu.iasdsp.dto;

import java.util.ArrayList;
import java.util.List;

import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月16日 下午1:46:49
* @version 
* Introduction
*/
public class ShowHomePageDto {
	private List<WikiPage> popularWikiPageList = new ArrayList<WikiPage>(0);
	private List<WikiPage> latestWikiPageList = new ArrayList<WikiPage>(0);
	private List<WorkflowInformation> popularWorkflowInformationList = new ArrayList<WorkflowInformation>(0);
	private List<WorkflowInformation> latestWorkflowInformationList = new ArrayList<WorkflowInformation>(0);
	
	private List<String> popularWikiPageImageUrlList = new ArrayList<String>(0);
	private List<String> latestWikiPageImageUrlList = new ArrayList<String>(0);
	private List<String> popularWorkflowInformationImageUrlList = new ArrayList<String>(0);
	private List<String> latestWorkflowInformationImageUrlList = new ArrayList<String>(0);
	
	
	public ShowHomePageDto() {
	}


	public List<WikiPage> getPopularWikiPageList() {
		return popularWikiPageList;
	}


	public void setPopularWikiPageList(List<WikiPage> popularWikiPageList) {
		this.popularWikiPageList = popularWikiPageList;
	}


	public List<WikiPage> getLatestWikiPageList() {
		return latestWikiPageList;
	}


	public void setLatestWikiPageList(List<WikiPage> latestWikiPageList) {
		this.latestWikiPageList = latestWikiPageList;
	}


	public List<WorkflowInformation> getPopularWorkflowInformationList() {
		return popularWorkflowInformationList;
	}


	public void setPopularWorkflowInformationList(List<WorkflowInformation> popularWorkflowInformationList) {
		this.popularWorkflowInformationList = popularWorkflowInformationList;
	}


	public List<WorkflowInformation> getLatestWorkflowInformationList() {
		return latestWorkflowInformationList;
	}


	public void setLatestWorkflowInformationList(List<WorkflowInformation> latestWorkflowInformationList) {
		this.latestWorkflowInformationList = latestWorkflowInformationList;
	}


	public List<String> getPopularWikiPageImageUrlList() {
		return popularWikiPageImageUrlList;
	}


	public void setPopularWikiPageImageUrlList(List<String> popularWikiPageImageUrlList) {
		this.popularWikiPageImageUrlList = popularWikiPageImageUrlList;
	}


	public List<String> getLatestWikiPageImageUrlList() {
		return latestWikiPageImageUrlList;
	}


	public void setLatestWikiPageImageUrlList(List<String> latestWikiPageImageUrlList) {
		this.latestWikiPageImageUrlList = latestWikiPageImageUrlList;
	}


	public List<String> getPopularWorkflowInformationImageUrlList() {
		return popularWorkflowInformationImageUrlList;
	}


	public void setPopularWorkflowInformationImageUrlList(List<String> popularWorkflowInformationImageUrlList) {
		this.popularWorkflowInformationImageUrlList = popularWorkflowInformationImageUrlList;
	}


	public List<String> getLatestWorkflowInformationImageUrlList() {
		return latestWorkflowInformationImageUrlList;
	}


	public void setLatestWorkflowInformationImageUrlList(List<String> latestWorkflowInformationUrlList) {
		this.latestWorkflowInformationImageUrlList = latestWorkflowInformationUrlList;
	}


	@Override
	public String toString() {
		return "ShowHomePageDto [popularWikiPageList=" + popularWikiPageList + ", latestWikiPageList="
				+ latestWikiPageList + ", popularWorkflowInformationList=" + popularWorkflowInformationList
				+ ", latestWorkflowInformationList=" + latestWorkflowInformationList + ", popularWikiPageImageUrlList="
				+ popularWikiPageImageUrlList + ", latestWikiPageImageUrlList=" + latestWikiPageImageUrlList
				+ ", popularWorkflowInformationImageUrlList=" + popularWorkflowInformationImageUrlList
				+ ", latestWorkflowInformationUrlList=" + latestWorkflowInformationImageUrlList + "]";
	}

	
	
	

}
