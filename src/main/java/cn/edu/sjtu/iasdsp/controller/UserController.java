package cn.edu.sjtu.iasdsp.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	private Map<String, Users> users = new HashMap<String, Users>();

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String list(Model model) {
		users.put("user1", new Users("user1@sjtu.edu.cn", "password1", "user1", 1));
		users.put("user2", new Users("user2@sjtu.edu.cn", "password2", "user2", 1));
		users.put("user3", new Users("user3@sjtu.edu.cn", "password3", "user3", 1));
		users.put("user4", new Users("user4@sjtu.edu.cn", "password4", "user4", 1));
		model.addAttribute("users", users);
		return "user/list";

	}

	@RequestMapping(value="/create", method=RequestMethod.GET)
	public String create(Model model)
	{
		return "user/create";
	}
	
	@RequestMapping(value="/edit", method=RequestMethod.GET)
	public String edit(Model model)
	{
		return "user/edit";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update(Model model)
	{
		return "user/update";
	}
	
	/**
	 * 例子: form表单提交值 Sample: Form submit
	 */
}
