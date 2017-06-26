package cn.edu.sjtu.iasdsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年6月26日 下午9:21:05
* @version 
* Introduction
*/

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	
	/**
	 * 例子: Rest 风格地址 id
	 * Sample: Restful
	 *  /user/:id
	 * 	/user/:id/delete
	 *  /user/:id/update
	 *  /users
	 */
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String home2(String username, Model model){
		System.out.println("username");
		System.out.println(username);
		model.addAttribute("username", username);
		//默认使用对象类型作为key
		//=model.addAttribute("String", username);
		model.addAttribute(username);
		return "home";
	}
	/**
	 * 例子: form表单提交值
	 * Sample: Form submit
	 */
}
