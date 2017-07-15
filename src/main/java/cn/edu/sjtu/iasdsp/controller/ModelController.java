package cn.edu.sjtu.iasdsp.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.sjtu.iasdsp.dto.CreateModelDto;
import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.EditModelDto;
import cn.edu.sjtu.iasdsp.dto.EditModelVersionDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.dto.ShowModelDto;
import cn.edu.sjtu.iasdsp.service.ModelService;

@Controller
@RequestMapping("/model")
public class ModelController {
	
	private static final Logger logger = LoggerFactory.getLogger(ModelController.class);

	
	@Autowired
	private ModelService modelService;
	

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String index(@ModelAttribute("createDto") CreateModelDto createDto) {
		logger.info("Welcome index!.");

		return "model/create";

	}
	
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String index2(@ModelAttribute("createDto") CreateModelDto createDto) {
		logger.info("Welcome index!.");
		
		try {
			int id = modelService.save(createDto);
			logger.debug("Create Successful where createModelDto = " + createDto);
			
			
			return "redirect:/model/" + id + "/edit?active_page=info";
			
		} catch (Exception e) {
			return "application/error";
		}
				

	}
	
	@RequestMapping(value = "/{id}/show", method = RequestMethod.GET)
	public String show(Model model, @PathVariable("id") String id) {
		logger.info(id);
		ShowModelDto showModelDto = modelService.show(Integer.parseInt(id));
		model.addAttribute("showModelDto", showModelDto);
		return "model/showModel";
	}
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(Model model, @PathVariable("id") String id , @RequestParam("active_page") String activePage) {
		logger.info(id);
		EditModelDto editModelDto = modelService.edit(Integer.parseInt(id));
		editModelDto.setActivePage(activePage);
		model.addAttribute("editModelDto", editModelDto);
		return "model/editModel";
	}
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.POST)
	public String editInfo(Model model, @PathVariable("id") String id, @ModelAttribute("editModelDto") EditModelDto editModelDto) {
		logger.info(id);
		
		try {
			modelService.update(editModelDto, Integer.parseInt(id));
			model.addAttribute("editModelDto", editModelDto);
			return "redirect:/model/" + id + "/edit?active_page=diagram";
		} catch (NumberFormatException e) {
			
			return "application/error";
			
		}
	}
	
	


}
