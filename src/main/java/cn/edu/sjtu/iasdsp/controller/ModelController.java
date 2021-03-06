package cn.edu.sjtu.iasdsp.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.sjtu.iasdsp.dto.CreateModelDto;
import cn.edu.sjtu.iasdsp.dto.EditModelDto;
import cn.edu.sjtu.iasdsp.dto.MessageDto;
import cn.edu.sjtu.iasdsp.dto.ShowModelDto;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.service.ModelService;
import cn.edu.sjtu.iasdsp.service.RefreshCountService;
import cn.edu.sjtu.iasdsp.service.UserService;

@Controller
@RequestMapping("/model")
public class ModelController {

	private static final Logger logger = LoggerFactory.getLogger(ModelController.class);

	@Autowired
	private ModelService modelService;

	@Autowired
	private RefreshCountService refreshCountService;
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create(@ModelAttribute("createDto") CreateModelDto createModelDto) {
		logger.debug("Into create function" + createModelDto);
		return "model/create";

	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String save(@ModelAttribute("createDto") CreateModelDto createModelDto) {
		logger.debug("Into save function" + createModelDto);
		try {
			User user = userService.findLoginUser();
			int id = modelService.save(createModelDto, user);
			logger.debug("Create Successful where createModelDto:" + createModelDto + ", id:" + id);
			return "redirect:/model/" + id + "/edit?active_page=info";
		} catch (Exception e) {
			return "error/error";
		}

	}

	@RequestMapping(value = "/{id}/show", method = RequestMethod.GET)
	public String show(Model model, @PathVariable("id") String id) {
		logger.debug("Into show function, id:" + id);
		logger.debug("into permission");
		Subject subject;
		try {
			subject = SecurityUtils.getSubject();
			subject.checkPermissions("model:query:" + id); 
			logger.debug("permission succ");
		} catch (Exception e) {
			model.addAttribute("message", "You do not have the permission.");
			logger.debug("permission failed");
			return "error/permission";
		}  
		ShowModelDto showModelDto = modelService.show(Integer.parseInt(id));
		model.addAttribute("showModelDto", showModelDto);
		logger.debug("Show function succ, return " + showModelDto);
		return "model/showModel";
	}

	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(Model model, @PathVariable("id") String id,
			@RequestParam(value = "active_page", required = false) String activePage) {
		logger.debug("Into edit function, id:" + id, "active page:" + activePage);
		
		logger.debug("into permission");
		Subject subject;
		try {
			subject = SecurityUtils.getSubject();
			subject.checkPermissions("model:edit:" + id); 
			logger.debug("permission succ");
		} catch (Exception e) {
			model.addAttribute("message", "You do not have the permission.");
			logger.debug("permission failed");
			return "error/permission";
		} 
		
		EditModelDto editModelDto = modelService.edit(Integer.parseInt(id));
		editModelDto.setActivePage(activePage);
		model.addAttribute("editModelDto", editModelDto);
		logger.debug("Edit function succ, return " + editModelDto);
		return "model/editModel";
	}

	@RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
	public String editInfo(Model model, @PathVariable("id") String id,
			@ModelAttribute("editModelDto") EditModelDto editModelDto) {
		logger.debug("Into editInfo function, id:" + id, "editModelDto:" + editModelDto);
		
		try {
			User user = userService.findLoginUser();
			modelService.update(editModelDto, Integer.parseInt(id), user);
			// model.addAttribute("editModelDto", editModelDto);
			logger.debug("EditInfo function succ");
			return "redirect:/model/" + id + "/edit?active_page=detail";
		} catch (NumberFormatException e) {
			return "error/error";
		}
	}
	


	@RequestMapping(value = "/{id}/updateDetail", method = RequestMethod.POST)
	public String editDetail(Model model, @PathVariable("id") String id,
			@ModelAttribute("editModelDto") EditModelDto editModelDto) {
		logger.debug("Into editDetail function, id:" + id, "editModelDto:" + editModelDto);
		try {
			User user = userService.findLoginUser();

			modelService.updateDetail(editModelDto, Integer.parseInt(id), user);
			// model.addAttribute("editModelDto", editModelDto);
			logger.debug("editDetail function succ");
			return "redirect:/model/" + id + "/edit?active_page=jurisdiction";
		} catch (NumberFormatException e) {
			return "error/error";
		}
	}

	@RequestMapping(value = "/{id}/version/create", method = RequestMethod.POST)
	public String createVersion(Model model, @PathVariable("id") String id,
			@ModelAttribute("editModelDto") EditModelDto editModelDto) {
		logger.debug("Into createVersion function, id:" + id + "editModelDto:" + editModelDto);
		try {
			User user = userService.findLoginUser();
			modelService.createVersion(editModelDto, Integer.parseInt(id), user);
			logger.debug("createVersion function succ");
			return "redirect:/model/" + id + "/edit?active_page=diagram";
		} catch (NumberFormatException e) {
			return "error/error";
		}
	}
	

	@RequestMapping(value = "/{id}/version/{versionId}/publish", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE )
	public ResponseEntity<MessageDto>  publishVersion(Model model, @PathVariable("id") String id, @PathVariable("versionId") String versionId) {
		logger.debug("Into publishVersion function, workflow id:" + id + "versionId:" + versionId);
		try {
			int workflowVersionId = Integer.parseInt(versionId);
			modelService.publishVersion(workflowVersionId);
			logger.debug("publishVersion function succ");
			return ResponseEntity.accepted().body(new MessageDto("Succ"));
		} catch (NumberFormatException e) {
			logger.debug("publishVersion function failed");
			return ResponseEntity.badRequest().body(new MessageDto("Failed"));

			
		}
	}
	
	// TODO change method to delete
	@RequestMapping(value = "/{id}/version/{versionId}/delete", method = RequestMethod.GET)
	public String deleteVersion(Model model, 
			@RequestParam(value = "back_path", required = false) String backPath,
			@PathVariable("id") String id, 
			@PathVariable("versionId") String versionId) {
		logger.debug("Into deleteVersion function, workflow id:" + id + "versionId:" + versionId);
		
		
		logger.debug("into permission");
		Subject subject;
		try {
			subject = SecurityUtils.getSubject();
			subject.checkPermissions("model:delete:" + id); 
			logger.debug("permission succ");
		} catch (Exception e) {
			model.addAttribute("message", "You do not have the permission.");
			logger.debug("permission failed");
			return "error/permission";
		} 
		
		
		try {
			int workflowVersionId = Integer.parseInt(versionId);
			modelService.deleteVersion(workflowVersionId);
			logger.debug("deleteVersion function succ");
			refreshCountService.refreshAll();
			if(backPath != null && backPath.equals("my_space")){
				return "redirect:/my_space/show";
			}
			return "redirect:/model/" + id + "/edit?active_page=diagram";
		} catch (NumberFormatException e) {
			logger.debug("deleteVersion function failed");
			return "error/error";

			
		}
	}	


	
	@RequestMapping(value = "/{id}/updateAuthorization", method = RequestMethod.POST)
	public String editAuthorization(Model model, @PathVariable("id") String id,
			@ModelAttribute("editModelDto") EditModelDto editModelDto) {
		logger.info(id);

		try {
			User user = userService.findLoginUser();
			modelService.updateAuthorization(editModelDto, Integer.parseInt(id), user);
			model.addAttribute("editModelDto", editModelDto);
			return "redirect:/model/" + id + "/edit?active_page=diagram";
		} catch (NumberFormatException e) {

			return "error/error";

		}
	}

	@RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
	public String delete(Model model, @PathVariable("id") String id) {
		logger.debug("Into delete function, id:" + id);
		
		logger.debug("into permission");
		Subject subject;
		try {
			subject = SecurityUtils.getSubject();
			subject.checkPermissions("model:delete:" + id); 
			logger.debug("permission succ");
		} catch (Exception e) {
			model.addAttribute("message", "You do not have the permission.");
			logger.debug("permission failed");
			return "error/permission";
		} 
		
		
		try {
			int deleteId = Integer.parseInt(id);
			boolean isSucc = modelService.delete(deleteId);
			if (isSucc) {
				refreshCountService.refreshAll();
				logger.debug("Delete model succ");
				return "redirect:/search/model";
			} else {
				logger.error("Delete model not exist");
				return "error/error";

			}
		} catch (NumberFormatException e) {
			logger.error("Error occured in delete");
			return "error/error";

		}
	}

}
