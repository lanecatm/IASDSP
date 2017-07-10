package cn.edu.sjtu.iasdsp.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.sjtu.iasdsp.dto.CreateModelDto;
import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.EditModelDto;
import cn.edu.sjtu.iasdsp.dto.EditModelVersionDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.dto.ShowModelDto;

@Controller
@RequestMapping("/model")
public class ModelController {
	
	private static final Logger logger = LoggerFactory.getLogger(ModelController.class);
	private ShowModelDto showModelDto = initShowModelDto();
	private EditModelDto editModelDto = initEditModelDto();
	private EditModelVersionDto editModelVersionDto = initEditModelVersionDto();
	
	private EditModelVersionDto initEditModelVersionDto(){
		
		EditModelVersionDto editModelVersionDto = new EditModelVersionDto("onch onche","onch onche");
		
		return editModelVersionDto;
	}
	
	private EditModelDto initEditModelDto() {
		
		String name = "Theo";
		String introduction = "mon introduction";
		
		Map<String, String> application = new HashMap<String, String>();
		application.put("VERSION 3 Here we are going to put the difference running cases with the DATE/AUTHOR/NAME etc","1");
		application.put("VERSION 2 Here we are going to put the difference running cases with the DATE/AUTHOR/NAME etc", "2");
		application.put("Here we are going to put the difference running cases with the DATE/AUTHOR/NAME etc","3");
		
		EditModelDto editModelDto = new EditModelDto(name, introduction, application);

		return editModelDto;
		
	}
	
	private ShowModelDto initShowModelDto() {
		
		//Basic information
		String title = "Clustering by Kmeans";
		String introduction = "This is a model clustering data by Kmeans algorithm";
		String category = "Clustering";
		
		//Authorization
		String author = "Theo";
		String lastEditor = "Theo";
		String editUserGroup = "Departement 1";
		String deleteUserGroup = "Departement 1";
		String executeUserGroup = "All";
		
		//Version
		
		String versionName = "V 0.0.2";
		Date creationTime = new Date();
		Date updateTime = new Date();
		
		//application
		Map<String, String> application = new HashMap<String, String>();
		application.put("VERSION 3 Here we are going to put the difference running cases with the DATE/AUTHOR/NAME etc","1");
		application.put("VERSION 2 Here we are going to put the difference running cases with the DATE/AUTHOR/NAME etc", "2");
		application.put("Here we are going to put the difference running cases with the DATE/AUTHOR/NAME etc","3");
		
		
		
		ShowModelDto showModelDto = new ShowModelDto(title, introduction, category, author, lastEditor, editUserGroup, deleteUserGroup, executeUserGroup, versionName, creationTime, updateTime, application);

		return showModelDto;
		
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String index(@ModelAttribute("createDto") CreateModelDto createDto) {
		logger.info("Welcome index!.");

		return "model/create";

	}
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(Model model) {

		model.addAttribute("showModelDto", showModelDto);
		return "model/showModel";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Model model) {
		model.addAttribute("showModelDto", showModelDto);
		model.addAttribute("editModelDto", editModelDto);
		model.addAttribute("editModelVersionDto", editModelVersionDto);

		return "model/editModel";
	}
	
	


}
