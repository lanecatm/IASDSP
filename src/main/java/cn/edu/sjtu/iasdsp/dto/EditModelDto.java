package cn.edu.sjtu.iasdsp.dto;

import java.util.Map;

public class EditModelDto {
	
	
	String name;
	String introduction;
	private Map<String, String> application;
	
	public EditModelDto(String name, String introduction, Map<String, String> application) {
		super();
		this.name = name;
		this.introduction = introduction;
		this.application = application;
	}
	
	public Map<String, String> getApplication() {
		return application;
	}
	public void setApplication(Map<String, String> application) {
		this.application = application;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

}
