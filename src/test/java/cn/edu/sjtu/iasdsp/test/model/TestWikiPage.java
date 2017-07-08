package cn.edu.sjtu.iasdsp.test.model;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WikiReference;
import cn.edu.sjtu.iasdsp.model.WikiRelationship;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月6日 下午9:13:15
 * @version Introduction
 */
public class TestWikiPage {

	@Test
	public void test() {
		// 测试WikiPages WikiReferences WikiRelationships
		int testWikiPageId = -1;
		WikiPage wikiPage = null;
		Transaction transaction = null;
		ApplicationContext ac = null;
		SessionFactory sessionFactory = null;
		int wikiReferenceId = -1;
		int wikiRelationId = -1;
		int workflowInformationId = -1;
		try {
			// 使用此方法获取并初始化我们的spring容器，注意pring-datasource.xml必须存放在类路径的根目录下。
			ac = new ClassPathXmlApplicationContext("spring-hibernate.xml");
			// 从spring容器中获取我们的会话工厂实例，里面已完成好各个属性的配置工作
			sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
		} catch (Exception e) {
			e.printStackTrace();

			fail();
		}
		try {
			// 下面开始我们的数据库操作
			Session session = sessionFactory.openSession();// 从会话工厂获取一个session

			transaction = session.beginTransaction();// 开启一个新的事务

			User creator = session.load(User.class, 1);
			User updator = session.load(User.class, 1);
			String path = "test_path20";
			String title = "test title";
			String content = "test content";

			WorkflowInformation workflowInformation = new WorkflowInformation(new Date(), new Date());
			session.save(workflowInformation);
			workflowInformationId = workflowInformation.getId();

			wikiPage = new WikiPage(creator, updator, path, title, content, new Date(), new Date());
			wikiPage.getWorkflowInformations().add(workflowInformation);
			session.save(wikiPage);

			WikiReference wikiReference = new WikiReference("wiki reference context", "wiki reference url", new Date(),
					new Date());
			wikiReference.setWikiPage(wikiPage);
			session.save(wikiReference);
			wikiReferenceId = wikiReference.getId();

			WikiRelationship wikiRelationship = new WikiRelationship(new Date(), new Date());
			wikiRelationship.setWikiPage(wikiPage);
			session.save(wikiRelationship);
			wikiRelationId = wikiRelationship.getId();

			session.save(wikiPage);

			// 提交事务
			transaction.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
			if (transaction != null) {
				transaction.rollback();
			}

			fail();
		}

		try {
			Session session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			WikiPage wikiPageNew = session.load(WikiPage.class, wikiPage.getId());
			session.delete(wikiPageNew);
			WorkflowInformation workflowInformationNew = 
					session.load(WorkflowInformation.class, workflowInformationId);
			session.delete(workflowInformationNew);
			transaction.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			if (transaction != null) {
				transaction.rollback();
			}
			fail();
		}

		try {
			Session session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			WikiRelationship wikiRelationship = session.load(WikiRelationship.class, wikiRelationId);
			try {
				System.out.println(wikiRelationship.getCreatedAt());
				fail();
			} catch (Exception e) {

			}
			WikiReference wikiReference = session.load(WikiReference.class, wikiReferenceId);
			try {
				System.out.println(wikiReference.getCreatedAt());
				fail();
			} catch (Exception e) {

			}
			transaction.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			fail();
		}

	}

}
