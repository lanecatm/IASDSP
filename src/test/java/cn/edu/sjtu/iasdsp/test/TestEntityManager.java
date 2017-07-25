package cn.edu.sjtu.iasdsp.test;

import static org.junit.Assert.fail;

import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.service.AnalyticsApplicationService;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月7日 下午4:18:39
 * @version Introduction
 */
public class TestEntityManager {


	public void test() {
		try {
			WikiPage wikipage = new WikiPage(new Date(), new Date());
			wikipage.setTitle("test auto");
			wikipage.setPath("test_auto");
			ApplicationContext ac = new ClassPathXmlApplicationContext("spring-hibernate.xml");

			AnalyticsApplicationService analyticsApplicationService = ac.getBean(AnalyticsApplicationService.class);
			System.out.println(analyticsApplicationService);
			// ...
			analyticsApplicationService.create(wikipage);
			System.out.println(wikipage.getId());
			analyticsApplicationService.remove(wikipage);
			analyticsApplicationService.remove(wikipage);
			
			//WikiPageHome wikiPageHome = ac.getBean(WikiPageHome.class);
			//wikiPageHome.findById(1);
			

		} catch (Exception e) {
			e.printStackTrace();
			fail();
		}

	}

}
