//package cn.edu.sjtu.iasdsp.init;
//import static org.junit.Assert.fail;
//
//import java.util.Date;
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//
//import cn.edu.sjtu.iasdsp.model.User;
//import cn.edu.sjtu.iasdsp.model.WikiPage;
//import cn.edu.sjtu.iasdsp.model.WikiReference;
//import cn.edu.sjtu.iasdsp.model.WikiRelationship;
//import cn.edu.sjtu.iasdsp.model.WorkflowInformation;
//
///** 
//* @author xfhuang 
//* @email lanecatm@sjtu.edu.cn
//* @date 2017年7月9日 下午8:37:33
//* @version 
//* Introduction
//*/
//public class StartSql {
//
//	public void test() {
//		// 测试WikiPages WikiReferences WikiRelationships
//		int testWikiPageId = -1;
//		WikiPage wikiPage = null;
//		Transaction transaction = null;
//		ApplicationContext ac = null;
//		SessionFactory sessionFactory = null;
//		int wikiReferenceId = -1;
//		int wikiRelationId = -1;
//		int workflowInformationId = -1;
//		try {
//			// 使用此方法获取并初始化我们的spring容器，注意pring-datasource.xml必须存放在类路径的根目录下。
//			ac = new ClassPathXmlApplicationContext("spring-hibernate.xml");
//			// 从spring容器中获取我们的会话工厂实例，里面已完成好各个属性的配置工作
//			sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
//		} catch (Exception e) {
//			e.printStackTrace();
//
//			fail();
//		}
//		try {
//			// 下面开始我们的数据库操作
//			Session session = sessionFactory.openSession();// 从会话工厂获取一个session
//
//			transaction = session.beginTransaction();// 开启一个新的事务
//
//			User creator = session.load(User.class, 1);
//			User updator = session.load(User.class, 1);
//
//			WorkflowInformation workflowInformation1 = session.get(WorkflowInformation.class, 33);
//			WorkflowInformation workflowInformation2 = session.get(WorkflowInformation.class, 77);
//
//			wikiPage = session.get(WikiPage.class, 33);
//			wikiPage.getWorkflowInformations().add(workflowInformation1);
//			wikiPage.getWorkflowInformations().add(workflowInformation2);
//			session.save(wikiPage);
//
//			WikiReference wikiReference = new WikiReference("wiki reference context", "wiki reference url", new Date(),
//					new Date());
//			wikiReference.setWikiPage(wikiPage);
//			session.save(wikiReference);
//
//			WikiRelationship wikiRelationship = new WikiRelationship(new Date(), new Date());
//			wikiRelationship.setWikiPage(wikiPage);
//			wikiRelationship.s
//			session.save(wikiRelationship);
//
//			session.save(wikiPage);
//
//			// 提交事务
//			transaction.commit();
//			session.close();
//
//		} catch (Exception e) {
//			e.printStackTrace();
//			if (transaction != null) {
//				transaction.rollback();
//			}
//
//			fail();
//		}
//
//		
//	}
//
//
//}
