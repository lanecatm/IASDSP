package cn.edu.sjtu.iasdsp.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.sjtu.iasdsp.model.NodeCategories;
import cn.edu.sjtu.iasdsp.model.Users;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年6月26日 下午9:21:05
* @version 
* Introduction
*/

/**
 * 例子: Rest 风格地址 id Sample: Restful /user/:id /user/:id/delete /user/:id/update
 * /users
 */
@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	private Map<String, Users> users = new HashMap<String, Users>();

	@Resource(type=SessionFactory.class)
    private SessionFactory sessionFactory;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		users.put("user1", new Users("user1@sjtu.edu.cn", "password1", "user1", 1));
		users.put("user2", new Users("user2@sjtu.edu.cn", "password2", "user2", 1));
		users.put("user3", new Users("user3@sjtu.edu.cn", "password3", "user3", 1));
		users.put("user4", new Users("user4@sjtu.edu.cn", "password4", "user4", 1));
		model.addAttribute("users", users);
		return "user/list";

	}

	/**
	 * 例子: form表单提交值 Sample: Form submit
	 */
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create(Model model) {
		model.addAttribute("user", new Users());
		// 服务器端跳转
		return "user/create";
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String create(@Validated Users user,BindingResult backResult) {
			System.out.println(backResult);
			if (backResult.hasErrors()){
				return "/user/create1";
			}
			users.put(user.getUserName(), user);
			// 客户端跳转
			return "redirect:/user/list";
			//return "redirect:/user/create1";
		}

	/**
	 * 例子: JSR303 form表单提交值 Sample: JSR303 Form submit
	 */
	@RequestMapping(value = "/create1", method = RequestMethod.GET)
	public String create1(@ModelAttribute("user") Users user) {
		// model.addAttribute("user", new Users());
		// 服务器端跳转
		try {
			 Session session = sessionFactory.openSession();//
			 //从会话工厂获取一个session
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
		return "user/create1";
	}

	@RequestMapping(value = "/create1", method = RequestMethod.POST)
	//验证model权限
	//一定要紧跟Validated写
	public String create1(@ModelAttribute("user") @Validated Users user,BindingResult backResult) {
		System.out.println(backResult);
		if (backResult.hasErrors()){
			return "/user/create1";
		}
		users.put(user.getUserName(), user);
		// 客户端跳转
		return "redirect:/user/list";
		//return "redirect:/user/create1";
	}
	
	@RequestMapping(value="/{userName}", method=RequestMethod.GET)
	public String show(@PathVariable String userName, Model model){
		model.addAttribute(users.get(userName));
		return "user/show";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Model model) {
		return "user/edit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Model model) {
		return "user/update";
	}

}
