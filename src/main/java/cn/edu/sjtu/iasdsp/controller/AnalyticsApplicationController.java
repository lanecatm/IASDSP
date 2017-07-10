package cn.edu.sjtu.iasdsp.controller;

import javax.ejb.EJB;
import javax.ejb.Stateless;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	private static final Logger logger = LoggerFactory.getLogger(AnalyticsApplicationController.class);
	
	@Autowired
	private AnalyticsApplicationService analyticsApplicationService;

	@RequestMapping(value = "/{wikiPath}/show", method = RequestMethod.GET)
	public String show(Model model, String wikiPath) {
		logger.debug("Into AnalyticsApplicationController show function where wikiPath = " + wikiPath);
		ShowApplicationDto showApplicationDto = analyticsApplicationService.show(wikiPath);
		model.addAttribute("showApplicationDto", showApplicationDto);
		return "application/show";
	}

	@RequestMapping(value = "/{wikiPath}/edit", method = RequestMethod.GET)
	public String edit(Model model, String wikiPath) {
		logger.debug("Into AnalyticsApplicationController edit function where wikiPath = " + wikiPath);
		EditApplicationDto editApplicationDto = analyticsApplicationService.edit(wikiPath);
		model.addAttribute("showApplicationDto", editApplicationDto.getShowApplicationDto());
		model.addAttribute("editApplicationDto", editApplicationDto);

		return "application/edit";
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create(Model model) {
		//model.addAttribute("showApplicationDto", showApplicationDto);
		model.addAttribute("editApplicationDto", new EditApplicationDto());

		return "application/edit";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(EditApplicationDto editApplicationDto) {
		analyticsApplicationService.update(editApplicationDto);
		return "redirect:/application/show";
	}

}
