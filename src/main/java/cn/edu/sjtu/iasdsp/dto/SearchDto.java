package cn.edu.sjtu.iasdsp.dto;

import cn.edu.sjtu.iasdsp.common.SearchForType;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月2日 下午6:29:35
* @version 
* Introduction
*/
public class SearchDto {
	
	private SearchForType searchFor;
	private String searchContent;
	

	public String getSearchContent() {
		return searchContent;
	}

	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}

	public SearchForType getSearchFor() {
		return searchFor;
	}

	public void setSearchFor(SearchForType searchFor) {
		this.searchFor = searchFor;
	}
	

	

}
