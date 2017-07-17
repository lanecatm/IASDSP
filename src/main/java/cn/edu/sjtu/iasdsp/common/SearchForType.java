package cn.edu.sjtu.iasdsp.common;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月16日 下午9:17:34
* @version 
* Introduction
*/
public enum SearchForType {
	MODEL("Model", 0), APPLICATION("Application", 1), PROCESS("Process", 2);
	private String name;
	private int index;
	
	SearchForType(String name, int index){
		this.index = index;
		this.name= name;
	}
	
	public int getIndex(){
		return this.index;
	}
	
	public String getName(){
		return this.name;
	}
	
	public static SearchForType get(int index){
		for (SearchForType e : values()) {  
			if(e.getIndex() == index){
				return e;
			}
		}
		return null;
	}
	
	public static SearchForType get(String value){
		for (SearchForType e : values()) {  
			if(e.getName().equals(value)){
				return e;
			}
		}
		return null;
	}
	

}
