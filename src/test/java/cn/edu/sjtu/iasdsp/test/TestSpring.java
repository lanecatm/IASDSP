package cn.edu.sjtu.iasdsp.test;

import org.junit.Test;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.sjtu.iasdsp.Spring.TestModel;

public class TestSpring {

	private BeanFactory beanFactory = new ClassPathXmlApplicationContext("TestBean.xml");
	public void testGetModel() {
		try {
			TestModel testModel = beanFactory.getBean("testModel", TestModel.class);
			testModel.print();
		} catch (BeansException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void testGetInput() {
		try {
			TestModel testModel = beanFactory.getBean("testModel", TestModel.class);
			testModel.getTestInput().print();
		} catch (BeansException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void testGetInput1() {
		try {
			TestModel testModel = beanFactory.getBean("testModel", TestModel.class);
			testModel.getTestInput1().print();
		} catch (BeansException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void testGetModelValue() {
		try {
			TestModel testModel = beanFactory.getBean("testModel", TestModel.class);
			System.out.println(testModel.getId());
			System.out.println(testModel.getContent());
			System.out.println(testModel.getList());
		} catch (BeansException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
