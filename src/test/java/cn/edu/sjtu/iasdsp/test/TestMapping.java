package cn.edu.sjtu.iasdsp.test;

import java.util.Date;

import org.hibernate.Session;
import org.junit.Test;

import com.xfhuang.util.HiberlateUtil;

import cn.edu.sjtu.iasdsp.model.NodeCategories;

public class TestMapping {

	@Test
	public void test() {
		Session session = null;
		try {
			session = HiberlateUtil.openSession();
			session.beginTransaction();
			NodeCategories nodeCategory = new NodeCategories();
			nodeCategory.setName("test");
			nodeCategory.setCreatedAt(new Date());
			nodeCategory.setUpdatedAt(new Date());
			
			session.save(nodeCategory);
			
			NodeCategories nodeCategory1 = session.get(NodeCategories.class, 11);
			if (nodeCategory1==null){
				System.out.println("null");
			}

			session.getTransaction().commit();
			System.out.println("Success");

		} catch (Exception e) {
			e.printStackTrace();
			if (session != null) {
				session.getTransaction().rollback();
			}
		} finally {
			HiberlateUtil.closeSession(session);
		}
	}

}
