package cn.edu.sjtu.iasdsp.test.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WorkflowCategory;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;
import cn.edu.sjtu.iasdsp.model.WorkflowPerformance;
import cn.edu.sjtu.iasdsp.model.WorkflowPrivilege;
import cn.edu.sjtu.iasdsp.model.WorkflowTag;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月6日 下午9:13:36
 * @version Introduction
 */
public class TestWorkflowInformation {

	@Test
	public void test() {
		// 测试WikiPages WikiReferences WikiRelationships
		Transaction transaction = null;
		ApplicationContext ac = null;
		SessionFactory sessionFactory = null;

		int workflowInformationId = -1;
		int workflowPerformanceId = -1;
		int workflowPrivilegeId = -1;
		int workflowTagId = -1;
		int wikiPageId = -1;
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

			WikiPage wikiPage = new WikiPage(creator, updator, "test_path19i", "", "", new Date(), new Date());
			session.save(wikiPage);
			wikiPageId = wikiPage.getId();

			WorkflowCategory workflowCategory = new WorkflowCategory(new Date(), new Date());
			session.save(workflowCategory);

			// Question 为什么tag换一个顺序添加就不行？
			// Ans: 主关系方面做删减

			WorkflowTag workflowTag = new WorkflowTag(new Date(), new Date());
			session.save(workflowTag);
			workflowTagId = workflowTag.getId();

			WorkflowInformation workflowInformation = new WorkflowInformation(new Date(), new Date());
			workflowInformation.setAuthor(creator);
			workflowInformation.setUpdator(updator);
			workflowInformation.setWorkflowCategory(workflowCategory);
			workflowInformation.getWikiPages().add(wikiPage);
			workflowInformation.getWorkflowTags().add(workflowTag);
			session.save(workflowInformation);
			workflowInformationId = workflowInformation.getId();

			WorkflowPrivilege workflowPrivilege = new WorkflowPrivilege(new Date(), new Date());
			workflowPrivilege.setWorkflowInformation(workflowInformation);
			session.save(workflowPrivilege);
			workflowPrivilegeId = workflowPrivilege.getId();

			WorkflowPerformance workflowPerformance = new WorkflowPerformance(new Date(), new Date());
			workflowPerformance.setWikiPage(wikiPage);
			workflowPerformance.setWorkflowInformation(workflowInformation);
			session.save(workflowPerformance);
			workflowPerformanceId = workflowPerformance.getId();

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
			WorkflowInformation workflowInformation = session.load(WorkflowInformation.class, workflowInformationId);
			assertEquals(1, workflowInformation.getWorkflowPerformances().size());
			assertEquals(1, workflowInformation.getWorkflowTags().size());
			//workflowInformation.getWikiPages().clear();
			//session.save(workflowInformation);

			session.delete(workflowInformation);
			
			WorkflowTag workflowTag = session.load(WorkflowTag.class, workflowTagId);
			System.out.println(workflowTag.getUpdatedAt());
			session.delete(workflowTag);
			
			WikiPage wikiPage = session.load(WikiPage.class, wikiPageId);
			session.delete(wikiPage);
			
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
			WorkflowPerformance workflowPerformance = session.load(WorkflowPerformance.class, workflowPerformanceId);
			try {
				System.out.println(workflowPerformance.getCreatedAt());
				fail();
			} catch (Exception e) {

			}
			WorkflowPrivilege workflowPrivilege = session.load(WorkflowPrivilege.class, workflowPrivilegeId);
			try {
				System.out.println(workflowPrivilege.getCreatedAt());
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
