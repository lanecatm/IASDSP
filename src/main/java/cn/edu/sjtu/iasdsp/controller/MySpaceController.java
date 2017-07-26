package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.sjtu.iasdsp.common.SearchForType;
import cn.edu.sjtu.iasdsp.dto.SearchDto;
import cn.edu.sjtu.iasdsp.dto.SearchModelResultDto;
import cn.edu.sjtu.iasdsp.service.MySpaceService;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月16日 下午4:23:35
 * @version 
 * @Introduction 处理搜索的页面，分成搜索Model、搜索Application
 */
@Controller
@RequestMapping("/my_space")
public class MySpaceController {
	private static final Logger logger = LoggerFactory.getLogger(MySpaceController.class);

	@Autowired
	private MySpaceService mySpaceService;

	

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(Model model) {
		logger.debug("in show");
		try {
			model.addAttribute("workflowInformationList", mySpaceService.getWorkflowInformationList());
			model.addAttribute("processInformationList", mySpaceService.getProcessInformationList());
			model.addAttribute("wikiPageList", mySpaceService.getWikiPageList());
			logger.debug("show succ " );
			return "my_space/show";
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error occured in showSearchApplication");
			return "my_space/error";
		}
	}

	

}
