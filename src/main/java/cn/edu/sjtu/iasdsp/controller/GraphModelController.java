package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月25日 下午2:34:47
* @version 
* Introduction
*/
@Controller
@RequestMapping("/graph")
public class GraphModelController {
	private static final Logger logger = LoggerFactory.getLogger(GraphModelController.class);
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String show( Model model) {
		return "graph";
	}


}
