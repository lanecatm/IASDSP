package cn.edu.sjtu.iasdsp.Spring;

import java.util.List;

public class TestModel {
	private int id;
	private String content;
	private List<String> list;
	
	public List<String> getList() {
		return list;
	}

	public void setList(List<String> list) {
		this.list = list;
	}

	private TestInput testInput;
	private TestInput testInput1;
	
	
	
	
	public TestInput getTestInput1() {
		return testInput1;
	}

	public void setTestInput1(TestInput testInput1) {
		this.testInput1 = testInput1;
	}

	public TestModel(TestInput testInput1) {
		super();
		this.testInput1 = testInput1;
	}
	
	public TestModel(){
		super();
	}
	
	public TestInput getTestInput() {
		return testInput;
	}
	public void setTestInput(TestInput testInput) {
		this.testInput = testInput;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public void print(){
		System.out.println("print Test Model");
	}

}
