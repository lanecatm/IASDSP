package cn.edu.sjtu.iasdsp.dto;



public class CreateModelDto {
	
	
	private String name;
	private String introduction;
	
	public CreateModelDto() {

	}
	
	public CreateModelDto(String name, String introduction) {
		super();
		this.name = name;
		this.introduction = introduction;
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
