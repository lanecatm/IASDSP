package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.service.MySpaceService;
import cn.edu.sjtu.iasdsp.service.UserService;

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
	
	@Autowired
	private UserService userService;
	

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Model model) {
		logger.debug("in show");
		try {
			User user = userService.findLoginUser();
			model.addAttribute("workflowInformationList", mySpaceService.getAllWorkflowInformationList());
			model.addAttribute("processInformationList", mySpaceService.getAllProcessInformationList());
			model.addAttribute("wikiPageList", mySpaceService.getAllWikiPageList());
			logger.debug("show succ " );
			return "my_space/show";
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error occured in showSearchApplication");
			return "error/error";
		}
	}

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(Model model) {
		logger.debug("in show");
		try {
			User user = userService.findLoginUser();
			model.addAttribute("workflowInformationList", mySpaceService.getWorkflowInformationListByContributor(user));
			model.addAttribute("workflowVersionList", mySpaceService.getWorkflowVersionListByAuthor(user));
			model.addAttribute("processInformationList", mySpaceService.getProcessInformationList(user));
			model.addAttribute("sharedRuningRecordList", mySpaceService.getSharedProcessRecordList(user));
			model.addAttribute("wikiPageList", mySpaceService.getWikiPageListByContributor(user));
			logger.debug("show succ " );
			return "my_space/show";
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error occured in showSearchApplication");
			return "error/error";
		}
	}	

}
