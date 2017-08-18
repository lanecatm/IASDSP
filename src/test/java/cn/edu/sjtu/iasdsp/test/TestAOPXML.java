package cn.edu.sjtu.iasdsp.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.sjtu.iasdsp.Aop.HelloWorld;

public class TestAOPXML {

	public void test() {
		ApplicationContext ctx = 
	            new ClassPathXmlApplicationContext("TestAOPXML.xml");
	        
	    HelloWorld hw1 = (HelloWorld)ctx.getBean("helloWorldImpl1");
	    HelloWorld hw2 = (HelloWorld)ctx.getBean("helloWorldImpl2");
	    hw1.printHelloWorld();
	    System.out.println();
	    hw1.doPrint();
	    
	    System.out.println();
	    hw2.printHelloWorld();
	    System.out.println();
	    hw2.doPrint();	}

}
