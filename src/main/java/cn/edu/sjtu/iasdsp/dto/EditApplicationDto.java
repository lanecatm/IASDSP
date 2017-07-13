package cn.edu.sjtu.iasdsp.dto;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WikiReference;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月2日 下午10:47:19
 * @version Introduction
 */
public class EditApplicationDto {
	int wikiPageId;
	String title;
	String introduction;
	List<WikiReference> referenceList = new ArrayList<WikiReference>(0);
	List<WikiPage> relatedPageIdList = new ArrayList<WikiPage>(0);

	public EditApplicationDto() {
	}

	public EditApplicationDto(int wikiPageId, String title, String introduction, Set<WikiReference> referenceList,
			Set<WikiPage> relatedPageIdList) {
		this.wikiPageId = wikiPageId;
		this.title = title;
		this.introduction = introduction;
		this.referenceList = new ArrayList<WikiReference>(referenceList);
		this.relatedPageIdList = new ArrayList<WikiPage>(relatedPageIdList);
	}

	public int getWikiPageId() {
		return wikiPageId;
	}

	public void setWikiPageId(int wikiPageId) {
		this.wikiPageId = wikiPageId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String content) {
		this.introduction = content;
	}


	public void setRelatedPageIdList(Set<WikiPage> relatedPageIdList) {
		this.relatedPageIdList = new ArrayList<WikiPage>(relatedPageIdList);
	}

	public void setReferenceList(Set<WikiReference> referenceList) {
		this.referenceList =  new ArrayList<WikiReference>(referenceList);
	}

	
	public List<WikiReference> getReferenceList() {
		return referenceList;
	}

	public void setReferenceList(List<WikiReference> referenceList) {
		this.referenceList = referenceList;
	}

	public List<WikiPage> getRelatedPageIdList() {
		return relatedPageIdList;
	}

	public void setRelatedPageIdList(List<WikiPage> relatedPageIdList) {
		this.relatedPageIdList = relatedPageIdList;
	}

	public String toString() {
		return "EditApplicationDto [title=" + title + ", introduction=" + introduction + ", referenceList="
				+ referenceList + ", relatedPageIdList=" + relatedPageIdList + ", wikiPageId=" + wikiPageId + "]";
	}

}
