package cn.edu.sjtu.iasdsp.test;

import static org.junit.Assert.fail;

import java.util.Date;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.sjtu.iasdsp.model.NodeCategories;
import cn.edu.sjtu.iasdsp.model.Users;
import cn.edu.sjtu.iasdsp.model.WikiPages;
import cn.edu.sjtu.iasdsp.model.WikiReferences;
import cn.edu.sjtu.iasdsp.model.WorkflowInformations;

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

	public void test1() {
		try {
			// 使用此方法获取并初始化我们的spring容器，注意pring-datasource.xml必须存放在类路径的根目录下。
			ApplicationContext ac = new ClassPathXmlApplicationContext("spring-hibernate.xml");
			// 从spring容器中获取我们的会话工厂实例，里面已完成好各个属性的配置工作
			SessionFactory sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
			// 下面开始我们的数据库操作
			Session session = sessionFactory.openSession();// 从会话工厂获取一个session
			Transaction transaction = session.beginTransaction();// 开启一个新的事务
			WorkflowInformations workflowInformation = new WorkflowInformations(new Date(), new Date());

			Users user = session.load(Users.class, 1);
			workflowInformation.setAuthor(user);
			session.save(workflowInformation);
			// 提交事务
			transaction.commit();
			session.close();
			
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();// 开启一个新的事务
			session.delete(workflowInformation);
			transaction.commit();

			
		} catch (Exception e) {
			e.printStackTrace();
			fail();
		}
	}

	@Test
	public void test_wiki_pages() {
		// 测试WikiPages WikiReferences WikiRelationships
		int testWikiPageId = -1;
		WikiPages wikiPage = null;

		SessionFactory sessionFactory = null;
		try {
			// 使用此方法获取并初始化我们的spring容器，注意pring-datasource.xml必须存放在类路径的根目录下。
			ApplicationContext ac = new ClassPathXmlApplicationContext("spring-hibernate.xml");
			// 从spring容器中获取我们的会话工厂实例，里面已完成好各个属性的配置工作
			sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
			// 下面开始我们的数据库操作
			Session session = sessionFactory.openSession();// 从会话工厂获取一个session

			Transaction transaction = session.beginTransaction();// 开启一个新的事务

			Users creator = session.load(Users.class, 1);
			Users updator = session.load(Users.class, 1);
			String path = "test_path18";
			String title = "test title";
			String content = "test content";

			wikiPage = new WikiPages(creator, updator, path, title, content, new Date(), new Date());
			session.save(wikiPage);
			WikiReferences wikiReference = new WikiReferences("wiki reference context", "wiki reference url",
					new Date(), new Date());
			wikiReference.setWikiPages(wikiPage);
			session.save(wikiReference);
			// wikiPage.getWikiReferences().add(wikiReference);

			session.save(wikiPage);

			// 提交事务
			transaction.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			fail();
		}
			
			
		try{
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			WikiPages wikiPageNew = session.load(WikiPages.class, wikiPage.getId());
			System.out.println(wikiPageNew.getWikiReferences());
			for (WikiReferences wikiReferenceTmp : (Set<WikiReferences>) wikiPageNew.getWikiReferences()) {
				session.delete(wikiReferenceTmp);
			}
			session.delete(wikiPageNew);
			transaction.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			fail();
		}
		
		
	}

}
