package cn.edu.sjtu.iasdsp.test;

import org.junit.Test;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.sjtu.iasdsp.Aop.PermissionOut;

public class TestAOPAnnotation {

	private BeanFactory aopBeanFactory = new ClassPathXmlApplicationContext("TestAOPAnnotation.xml");

	@Test
	public void testAOP() {
		try {
			PermissionOut permissionOut = aopBeanFactory.getBean("permissionOut", PermissionOut.class);
			permissionOut.aadd();
		
		} catch (BeansException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
