package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.service.AnalyticsApplicationService;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月2日 下午6:45:45
 * @version Introduction
 */

@Controller
@RequestMapping("/application")
public class AnalyticsApplicationController {
	private static final Logger log = LoggerFactory.getLogger(AnalyticsApplicationController.class);
	
	@Autowired
	private AnalyticsApplicationService analyticsApplicationService;

	@RequestMapping(value = "/{wikiPath}/show", method = RequestMethod.GET)
	public String show(Model model, @PathVariable("wikiPath") String wikiPath) {
		log.debug("Into show function where wikiPath = " + wikiPath);
		try {
			ShowApplicationDto showApplicationDto = analyticsApplicationService.show(wikiPath);
			model.addAttribute("showApplicationDto", showApplicationDto);
			log.debug("Show Succ where showApplicationDto = " + showApplicationDto);
			return "application/show";
		} catch (Exception e) {
			return "application/error";
		}
	}

	@RequestMapping(value = "/{wikiPath}/edit", method = RequestMethod.GET)
	public String edit(Model model, @PathVariable("wikiPath") String wikiPath) {
		log.debug("Into edit function where wikiPath = " + wikiPath);
		try {
			EditApplicationDto editApplicationDto = analyticsApplicationService.edit(wikiPath);
			model.addAttribute("editApplicationDto", editApplicationDto);
			log.debug("Edit Succ where editApplicationDto = " + editApplicationDto);
			return "application/edit";
		} catch (Exception e) {
			return "application/error";

		}
	}
	
	@RequestMapping(value = "/{wikiPath}/update", method = RequestMethod.POST)
	public String update(EditApplicationDto editApplicationDto, @PathVariable("wikiPath") String wikiPath) {
		log.debug("Into update function where wikiPath = " + wikiPath + ", editApplicationDto = " + editApplicationDto);
		try {
			analyticsApplicationService.update(editApplicationDto);
			log.debug("Update Succ"); 
			return "redirect:/application/{wikiPath}/show";
		} catch (Exception e) {
			return "application/error";
		}
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create(Model model) {
		log.debug("Into create function");
		try {
			EditApplicationDto editApplicationDto = analyticsApplicationService.create();
			model.addAttribute("editApplicationDto", editApplicationDto);
			log.debug("Create Succ where editApplicationDto = " + editApplicationDto);
			return "application/create";
		} catch (Exception e) {
			return "application/error";
		}
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(Model model, EditApplicationDto editApplicationDto) {
		log.debug("Into create function where editApplicationDto = " + editApplicationDto);
		try {
			String path = analyticsApplicationService.save(editApplicationDto);
			if (path != null){
				return "redirect:/application/" + path + "/show";
			}
			else{
				return "redirect:/application/create";
			}
		} catch (Exception e) {
			return "application/error";
		}
	}
	


}
