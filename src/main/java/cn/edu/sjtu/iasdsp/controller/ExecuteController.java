package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.sjtu.iasdsp.dto.CreateModelDto;
import cn.edu.sjtu.iasdsp.service.ExecuteService;
import cn.edu.sjtu.iasdsp.service.ModelService;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月19日 下午8:23:23
* @version 
* Introduction
*/

@Controller
@RequestMapping("/execute")
public class ExecuteController {
	private static final Logger logger = LoggerFactory.getLogger(ExecuteController.class);
	@Autowired
	private ExecuteService executeService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String show() {
		logger.debug("Into show function" );
		return "execute/show";
	}
}
