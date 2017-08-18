package cn.edu.sjtu.iasdsp.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.EditPerformanceDto;
import cn.edu.sjtu.iasdsp.dto.MessageDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WorkflowPerformance;
import cn.edu.sjtu.iasdsp.service.AnalyticsApplicationService;
import cn.edu.sjtu.iasdsp.service.RefreshCountService;
import cn.edu.sjtu.iasdsp.service.UserService;

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
	@Autowired
	private RefreshCountService refreshCountService;
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/{wikiPath}/show", method = RequestMethod.GET)
	public String show(Model model, @PathVariable("wikiPath") String wikiPath) {
		log.debug("Into show function where wikiPath = " + wikiPath);
		try {
			ShowApplicationDto showApplicationDto = analyticsApplicationService.show(wikiPath);
			model.addAttribute("showApplicationDto", showApplicationDto);
			log.debug("Show Succ where showApplicationDto = " + showApplicationDto);
			return "application/show";
		} catch (Exception e) {
			log.error("Error occured in show");
			return "error/error";
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
			log.error("Error occured in edit");
			return "error/error";

		}
	}

	@RequestMapping(value = "/{wikiPath}/update", method = RequestMethod.POST)
	public String update(EditApplicationDto editApplicationDto, @PathVariable("wikiPath") String wikiPath) {
		log.debug("Into update function where wikiPath = " + wikiPath + ", editApplicationDto = " + editApplicationDto);
		try {
			User user = userService.findLoginUser();
			analyticsApplicationService.update(editApplicationDto, user);
			log.debug("Update Succ");
			return "redirect:/application/{wikiPath}/show";
		} catch (Exception e) {
			log.error("Error occured in update");
			return "error/error";
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
			log.error("Error occured in create");
			return "error/error";
		}
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@Validated EditApplicationDto editApplicationDto, BindingResult backResult) {
		log.debug("Into save function where editApplicationDto = " + editApplicationDto);
		log.debug("BindingResult:" + backResult);
		try {
			User user = userService.findLoginUser();
			String path = analyticsApplicationService.save(editApplicationDto, user);
			if (path != null) {
				log.debug("Save succ, go to show page, path:" + path);
				return "redirect:/application/" + path + "/show";
			} else {
				log.debug("Save failed");
				return "redirect:/application/create";
			}
		} catch (Exception e) {
			log.error("Error occured in save");
			return "error/error";
		}
	}

	// TODO change RequestMethod to delete method
	@RequestMapping(value = "/{wikiPath}/delete", method = RequestMethod.GET)
	public String delete(Model model, @PathVariable("wikiPath") String wikiPath) {
		log.debug("Into delete function where wikiPath = " + wikiPath);
		try {
			boolean isSucc = analyticsApplicationService.delete(wikiPath);
			if (isSucc) {
				log.debug("Delete page succ");
				refreshCountService.refreshAll();
				return "redirect:/search/application";
			} else {
				log.error("Delete page not exist");
				return "error/error";
			}
		} catch (Exception e) {
			log.error("Error occured in delete");
			return "error/error";
		}
	}

	@ResponseBody
	@RequestMapping(value = "/{wikiPath}/edit_performance", method = RequestMethod.POST)
	public ResponseEntity<EditPerformanceDto> editPerformance(@RequestBody EditPerformanceDto editPerformanceDto) {
		log.debug("Into editPerformance function where search = " + editPerformanceDto);
		try {
			User user = userService.findLoginUser();
			EditPerformanceDto editPerformanceDtoBack = analyticsApplicationService.editPerformance(editPerformanceDto, user);
			log.debug("editPerformance succ");
			return new ResponseEntity<EditPerformanceDto>(editPerformanceDtoBack, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			log.error("editPerformance failed");
			return new ResponseEntity<EditPerformanceDto>(editPerformanceDto, HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ResponseEntity<MessageDto> uploadFiles(MultipartHttpServletRequest request) {
		log.debug("into upload");
		List<MultipartFile> pictures = request.getFiles("files");
		try {
			String fileName = analyticsApplicationService.uploadFiles(pictures);
			if (fileName != null) {
				return ResponseEntity.accepted().body(new MessageDto(fileName));
			} else {
				return ResponseEntity.badRequest().body(new MessageDto("failed"));
			}
		} catch (Exception e) {
			return ResponseEntity.badRequest().body(new MessageDto("failed"));
		}

	}	

	

}
