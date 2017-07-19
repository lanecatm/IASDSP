package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.sjtu.iasdsp.dto.SearchDto;
import cn.edu.sjtu.iasdsp.dto.ShowHomePageDto;
import cn.edu.sjtu.iasdsp.service.HomeService;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月2日 下午2:37:52
 * @version Introduction
 */

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private HomeService homeService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		logger.info("Welcome to index page.");
		ShowHomePageDto showHomePageDto = homeService.show();
		model.addAttribute("showHomePageDto", showHomePageDto);
		model.addAttribute("searchDto", new SearchDto());
		return "home/index";
	}
	

	
}
