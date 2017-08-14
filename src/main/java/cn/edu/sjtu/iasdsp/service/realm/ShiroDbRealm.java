package cn.edu.sjtu.iasdsp.service.realm;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.common.CommonValue;
import cn.edu.sjtu.iasdsp.dao.DepartmentInformationHome;
import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.model.DepartmentInformation;
import cn.edu.sjtu.iasdsp.model.SharedProcessRecord;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WorkflowPrivilege;
import cn.edu.sjtu.iasdsp.service.UserService;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年8月8日 下午4:53:37
 * @version Introduction
 */
public class ShiroDbRealm extends AuthorizingRealm {

	@Autowired
	private UserHome userHome;

	@Autowired
	private DepartmentInformationHome departmentInformationHome;
	
	@Autowired 
	UserService userService;

	private static final Log logger = LogFactory.getLog(ShiroDbRealm.class);



	@Transactional
	public DepartmentInformation getAdminDepartmentInformation() {
		return departmentInformationHome.findById(CommonValue.ADMIN_DEPARTMENT_ID);
	}

	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// 获取登录时输入的用户名
		String username = (String) principals.getPrimaryPrincipal();
		// String loginName = (String)
		// principalCollection.fromRealm(getName()).iterator().next();
		// 到数据库查是否有此对象
		User user = userService.findUser(username);
		if (user != null) {
			// 权限信息对象info,用来存放查出的用户的所有的角色（role）及权限（permission）
			SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
			// 用户的角色集合
			// info.setRoles();
			// 用户的角色对应的所有权限，如果只使用角色定义访问权限，下面的四行可以不要
			DepartmentInformation userDepartmentInformation = user.getDepartmentInformation();
			if (userDepartmentInformation != null) {
				if (userDepartmentInformation.getId() != CommonValue.ADMIN_DEPARTMENT_ID) {
					List<DepartmentInformation> permitDepartmentInformationList = new ArrayList<DepartmentInformation>(
							0);
					permitDepartmentInformationList.add(userDepartmentInformation);
					permitDepartmentInformationList.add(getAdminDepartmentInformation());
					for (DepartmentInformation departmentInformation : permitDepartmentInformationList) {
						Set<WorkflowPrivilege> deleteWorkflowPrivileges = departmentInformation
								.getDeleteWorkflowInformations();
						for (WorkflowPrivilege deleteWorkflowPrivilege : deleteWorkflowPrivileges) {
							int id = deleteWorkflowPrivilege.getWorkflowInformation().getId();
							info.addStringPermission("model:delete:" + id);
						}
						Set<WorkflowPrivilege> editWorkflowPrivileges = departmentInformation
								.getEditWorkflowInformations();
						for (WorkflowPrivilege editWorkflowPrivilege : editWorkflowPrivileges) {
							int id = editWorkflowPrivilege.getWorkflowInformation().getId();
							info.addStringPermission("model:edit:" + id);
						}
						Set<WorkflowPrivilege> executeWorkflowPrivileges = departmentInformation
								.getExecuteWorkflowInformations();
						for (WorkflowPrivilege executeWorkflowPrivilege : executeWorkflowPrivileges) {
							int id = executeWorkflowPrivilege.getWorkflowInformation().getId();
							info.addStringPermission("model:execute:" + id);
						}
						Set<WorkflowPrivilege> showWorkflowPrivileges = departmentInformation
								.getShowWorkflowInformations();
						for (WorkflowPrivilege showWorkflowPrivilege : showWorkflowPrivileges) {
							int id = showWorkflowPrivilege.getWorkflowInformation().getId();
							info.addStringPermission("model:query:" + id);
						}
						
						
						Set<SharedProcessRecord> sharedProcessRecords = departmentInformation.getExecuteSharedProcessRecords();
						for (SharedProcessRecord sharedProcessRecord : sharedProcessRecords) {
							int id = sharedProcessRecord.getId();
							info.addStringPermission("sharedProcess:execute:" + id);
						}
					}
				} else {
					info.addStringPermission("model:*");
					info.addStringPermission("sharedProcess:*");
					info.addStringPermission("application:*");

				}
				info.addStringPermission("application:edit:*");

			}

			return info;
		}
		return null;
	}

	/**
	 * 认证回调函数,登录时调用.
	 */
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

	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String username = (String) token.getPrincipal(); // 获取用户名
		// String password = (String) token.getCredentials();
		logger.info("into doGetAuthenticationInfo:" + username);
		return getUserNameAndPassword(username);
	}
}
