package cn.edu.sjtu.iasdsp.shiro;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mysql.jdbc.Connection;

import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.test.TestShiro;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年8月3日 下午8:25:48
 * @version Introduction
 */

public class MyRealm1 extends AuthorizingRealm {

	@Autowired
	private UserHome userHome;

	private static final Log logger = LogFactory.getLog(MyRealm1.class);

	// 为当前登陆成功的用户授予权限和角色，已经登陆成功了
	@Transactional
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		//获取登录时输入的用户名
        String loginName = (String) principalCollection.fromRealm(getName()).iterator().next();
        //到数据库查是否有此对象
        User userExample = new User();
		userExample.setUserName(loginName);
		List<User> users = userHome.findByExample(userExample);
        if (users.size() != 0) {
        	
            //权限信息对象info,用来存放查出的用户的所有的角色（role）及权限（permission）
            SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
            //用户的角色集合
            //info.setRoles();
            //用户的角色对应的所有权限，如果只使用角色定义访问权限，下面的四行可以不要
            //List<Role> roleList = user.getRoleList();
            //for (Role role : roleList) {
                info.addStringPermission("model:query:269");
            //}
            return info;
        }
        return null;
	}

	@Transactional
	public AuthenticationInfo getUserNameAndPassword(String username) {
		try {
			logger.info("into getUserNameAndPassword");
			User userExample = new User();
			userExample.setUserName(username);
			List<User> users = userHome.findByExample(userExample); // 仅仅是根据用户名查出的用户信息，不涉及到密码
			logger.info("find user, size=" + users.size());
			if (users.size() != 0) {
				logger.info("find:" + users.get(0).getUserName() + users.get(0).getPassword());

				AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(users.get(0).getUserName(),
						users.get(0).getPassword(), "myRealm1");
				logger.info("into succ");
				return authcInfo;
			} else {
				return null;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	// 验证当前登录的用户，获取认证信息
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

		String username = (String) token.getPrincipal(); // 获取用户名
		// String password = (String) token.getCredentials();
		logger.info("into doGetAuthenticationInfo:" + username);
		return getUserNameAndPassword(username);
	}
}