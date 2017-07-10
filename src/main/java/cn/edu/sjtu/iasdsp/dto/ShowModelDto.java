package cn.edu.sjtu.iasdsp.dto;

import java.util.Date;
import java.util.Map;

public class ShowModelDto {
	
	private String title;
	private String authorName;
	private Date time;
	private Map<String, String> application;
	private String modelInformation;
		


	public ShowModelDto(String title, String authorName, Date time, Map<String, String> application,
			String modelInformation) {
		super();
		this.title = title;
		this.authorName = authorName;
		this.time = time;
		this.application = application;
		this.modelInformation = modelInformation;
	}


	public String getModelInformation() {
		return modelInformation;
	}


	public void setModelInformation(String modelInformation) {
		this.modelInformation = modelInformation;
	}


	public Map<String, String> getApplication() {
		return application;
	}


	public void setApplication(Map<String, String> application) {
		this.application = application;
	}


	public Date getTime() {
		return time;
	}


	public void setTime(Date time) {
		this.time = time;
	}


	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	

}
