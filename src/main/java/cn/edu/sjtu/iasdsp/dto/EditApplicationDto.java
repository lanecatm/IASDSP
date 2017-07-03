package cn.edu.sjtu.iasdsp.dto;

import java.util.List;
import java.util.Map;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月2日 下午10:47:19
* @version 
* Introduction
*/
public class EditApplicationDto {
	String introduction;
	Map<String, String> referenceList;
	List<String> relatedPageList;
	
	
	public EditApplicationDto() {
		super();
	}
	public EditApplicationDto(String introduction, Map<String, String> referenceList, List<String> relatedPageList) {
		super();
		this.introduction = introduction;
		this.referenceList = referenceList;
		this.relatedPageList = relatedPageList;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public Map<String, String> getReferenceList() {
		return referenceList;
	}
	public void setReferenceList(Map<String, String> referenceList) {
		this.referenceList = referenceList;
	}
	public List<String> getRelatedPageList() {
		return relatedPageList;
	}
	public void setRelatedPageList(List<String> relatedPageList) {
		this.relatedPageList = relatedPageList;
	}
	
	

}
