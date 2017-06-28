package cn.edu.sjtu.iasdsp.test;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.sjtu.iasdsp.model.NodeCategories;

public class TestHibernate {

	@Test
	public void test() {
		try {
			// 使用此方法获取并初始化我们的spring容器，注意pring-datasource.xml必须存放在类路径的根目录下。
			ApplicationContext ac = new ClassPathXmlApplicationContext("spring-hibernate.xml");
			// 从spring容器中获取我们的会话工厂实例，里面已完成好各个属性的配置工作
			SessionFactory sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
			// 下面开始我们的数据库操作
			Session session = sessionFactory.openSession();// 从会话工厂获取一个session
			Transaction transaction = session.beginTransaction();// 开启一个新的事务
			NodeCategories nodeCategory = new NodeCategories();
			nodeCategory.setName("test spring hibernate");
			nodeCategory.setCreatedAt(new Date());
			nodeCategory.setUpdatedAt(new Date());
			session.save(nodeCategory);
			// 提交事务
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
