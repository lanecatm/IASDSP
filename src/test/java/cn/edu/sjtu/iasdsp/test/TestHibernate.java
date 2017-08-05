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

import cn.edu.sjtu.iasdsp.model.NodeCategory;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WikiReference;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

public class TestHibernate {

	public void test() {
		try {
			// 使用此方法获取并初始化我们的spring容器，注意pring-datasource.xml必须存放在类路径的根目录下。
			ApplicationContext ac = new ClassPathXmlApplicationContext("spring-hibernate.xml");
			// 从spring容器中获取我们的会话工厂实例，里面已完成好各个属性的配置工作
			SessionFactory sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
			// 下面开始我们的数据库操作
			Session session = sessionFactory.openSession();// 从会话工厂获取一个session
			Transaction transaction = session.beginTransaction();// 开启一个新的事务
			NodeCategory nodeCategory = new NodeCategory();
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

	@Test
	public void test1() {
		try {
			// 使用此方法获取并初始化我们的spring容器，注意pring-datasource.xml必须存放在类路径的根目录下。
			ApplicationContext ac = new ClassPathXmlApplicationContext("spring-hibernate.xml");
			// 从spring容器中获取我们的会话工厂实例，里面已完成好各个属性的配置工作
			SessionFactory sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
			// 下面开始我们的数据库操作
			Session session = sessionFactory.openSession();// 从会话工厂获取一个session
			Transaction transaction = session.beginTransaction();// 开启一个新的事务
			WorkflowInformation workflowInformation = new WorkflowInformation(new Date(), new Date());

			User user = session.load(User.class, 1);
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
		WikiPage wikiPage = null;
		Transaction transaction = null;

		int workflowId = -1;
		SessionFactory sessionFactory = null;
		try {
			// 使用此方法获取并初始化我们的spring容器，注意pring-datasource.xml必须存放在类路径的根目录下。
			ApplicationContext ac = new ClassPathXmlApplicationContext("spring-hibernate.xml");
			// 从spring容器中获取我们的会话工厂实例，里面已完成好各个属性的配置工作
			sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
			// 下面开始我们的数据库操作
			Session session = sessionFactory.openSession();// 从会话工厂获取一个session

			transaction = session.beginTransaction();// 开启一个新的事务

			User creator = session.load(User.class, 1);
			User updator = session.load(User.class, 1);
			String path = "test_path19xxx";
			String title = "test title";
			String content = "test content";

			WorkflowInformation workflowInformation = new WorkflowInformation(new Date(), new Date());
			session.save(workflowInformation);
			workflowId = workflowInformation.getId();
			wikiPage = new WikiPage(creator, updator, path, title, content, new Date(), new Date());
			wikiPage.getWorkflowInformations().add(workflowInformation);
			session.save(wikiPage);
			WikiReference wikiReference = new WikiReference("wiki reference context", "wiki reference url",
					new Date(), new Date());
			wikiReference.setWikiPage(wikiPage);
			session.save(wikiReference);
			// wikiPage.getWikiReferences().add(wikiReference);

			session.save(wikiPage);

			// 提交事务
			transaction.commit();
			session.close();
		
		} catch (Exception e) {
			e.printStackTrace();
			if(transaction != null){
				transaction.rollback();
			}
		
			fail();
		}
			
			
		try{
			Session session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			WikiPage wikiPageNew = session.load(WikiPage.class, wikiPage.getId());
			System.out.println(wikiPageNew.getWikiReferences());
			for (WikiReference wikiReferenceTmp : (Set<WikiReference>) wikiPageNew.getWikiReferences()) {
				session.delete(wikiReferenceTmp);
			}
			session.delete(wikiPageNew);
			WorkflowInformation workflowInformation = session.load(WorkflowInformation.class,workflowId);
			session.delete(workflowInformation);
			transaction.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			if(transaction != null){
				transaction.rollback();
			}
			fail();
		}
		
		
	}

}
