package cn.edu.sjtu.iasdsp.dto;

import java.util.ArrayList;
import java.util.List;

import cn.edu.sjtu.iasdsp.model.WikiPage;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月16日 下午4:36:55
* @version 
* Introduction
*/
public class SearchApplicationResultDto {

	private List<WikiPage> wikiPageList = new ArrayList<WikiPage>(0);

	public List<WikiPage> getWikiPageList() {
		return wikiPageList;
	}

	public void setWikiPageList(List<WikiPage> wikiPageList) {
		this.wikiPageList = wikiPageList;
	}

	public String toString() {
		return "SearchApplicationResultDto [wikiPageList=" + wikiPageList + "]";
	}
	
	
	
}
