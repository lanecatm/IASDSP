package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.sjtu.iasdsp.model.Users;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月2日 下午6:45:45
* @version 
* Introduction
*/
@Controller
@RequestMapping("/application")
public class AnalyticsApplicationController {
	private static final Logger logger = LoggerFactory.getLogger(AnalyticsApplicationController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String list(Model model) {
		
		return "user/list";

	}
	
	
}
