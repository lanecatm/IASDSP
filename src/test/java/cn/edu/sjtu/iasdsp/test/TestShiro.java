package cn.edu.sjtu.iasdsp.test;

import static org.junit.Assert.fail;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.apache.shiro.util.ThreadContext;
import org.junit.After;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年8月3日 下午7:54:30
* @version 
* Introduction
*/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "classpath:spring-hibernate.xml"})
public class TestShiro {

	private static final Log logger = LogFactory.getLog(TestShiro.class);

	@Autowired
    private org.apache.shiro.mgt.SecurityManager securityManager;
	public void testHelloworld() {  
	    //1、获取SecurityManager工厂，此处使用Ini配置文件初始化SecurityManager  
	    Factory<org.apache.shiro.mgt.SecurityManager> factory =  
	            new IniSecurityManagerFactory("classpath:shiro.ini");  
	    //2、得到SecurityManager实例 并绑定给SecurityUtils  
	    org.apache.shiro.mgt.SecurityManager securityManager = factory.getInstance();  
	    SecurityUtils.setSecurityManager(securityManager);  
	    //3、得到Subject及创建用户名/密码身份验证Token（即用户身份/凭证）  
	    Subject subject = SecurityUtils.getSubject();  
	    UsernamePasswordToken token = new UsernamePasswordToken("zhang", "123");  
	  
	    try {  
	        //4、登录，即身份验证  
	        subject.login(token); 
	        logger.info("login test succ");
	    } catch (AuthenticationException e) {  
	        //5、身份验证失败  
	    	logger.error("login failed");
	    	fail();
	    }  
	    Assert.assertEquals(true, subject.isAuthenticated()); //断言用户已经登录  
	    //6、退出  
	    subject.logout();  
	    Subject subject1 = SecurityUtils.getSubject();  
	    UsernamePasswordToken token1 = new UsernamePasswordToken("zhang", "456");  
	    try {  
	        //4、登录，即身份验证  
	        subject1.login(token1); 
	    } catch (AuthenticationException e) {  
	        //5、身份验证失败  
	        logger.info("login wrong password test succ");
	    	return;
	    }  

		logger.info("login wrong password test failed");
        subject.logout();

		fail();
	}  
	
	
	
    public void testJDBCRealm() {
		logger.info("into testJDBCRealm");

        //2、得到SecurityManager实例 并绑定给SecurityUtils
        SecurityUtils.setSecurityManager(securityManager);

        //3、得到Subject及创建用户名/密码身份验证Token（即用户身份/凭证）
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken("Xiaofu", "12345678");

        try {
            //4、登录，即身份验证
            subject.login(token);
            logger.info("login succ");
        } catch (AuthenticationException e) {
            //5、身份验证失败
            e.printStackTrace();
        }

        Assert.assertEquals(true, subject.isAuthenticated()); //断言用户已经登录

        //6、退出
        subject.logout();
    }
	
    @After
    public void tearDown() throws Exception {
        ThreadContext.unbindSubject();//退出时请解除绑定Subject到线程 否则对下次测试造成影响
    }


}
