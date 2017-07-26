package cn.edu.sjtu.iasdsp.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.sjtu.iasdsp.dto.ReturnRunModelDto;
import cn.edu.sjtu.iasdsp.dto.RunModelDto;
import cn.edu.sjtu.iasdsp.dto.ShareExecuteDto;
import cn.edu.sjtu.iasdsp.service.ProcessService;
import cn.edu.sjtu.iasdsp.service.RefreshCountService;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月19日 下午8:23:23
 * @version Introduction
 */

@Controller
@RequestMapping("/execute")
public class ExecuteController {
	private static final Logger logger = LoggerFactory.getLogger(ExecuteController.class);
	@Autowired
	private ProcessService processService;

	@Autowired
	private RefreshCountService refreshCountService;

	@Autowired
	private HttpServletRequest request;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String show(@RequestParam(value = "active_page", required = false) String activePage,
			@RequestParam(value = "model_version", required = false) String workflowVersionId,
			@RequestParam(value = "application", required = false) String applicationId,
			@RequestParam(value = "model", required = false) String workflowInformationId,
			@RequestParam(value = "running_case", required = false) String shareProcessId, Model model) {

		logger.debug("Into show function, activePage:" + activePage + ", workflowVersionId" + workflowVersionId
				+ ", applicationId" + applicationId + ", workflowInformationId" + workflowInformationId);
		try {
			if (workflowVersionId != null) {
				ShareExecuteDto shareExecuteDto = processService.showShare();
				if (applicationId != null) {
					shareExecuteDto.setDefaultApplicationId(Integer.parseInt(applicationId));
				}
				model.addAttribute("shareExecuteDto", shareExecuteDto);

				return "execute/show";
			} else if (workflowInformationId != null) {

				int modelVersionId = processService
						.getWorkflowVersionIdFromWorkflowInformationId(Integer.parseInt(workflowInformationId));
				String applicationStr = applicationId == null ? "" : "application=" + applicationId;
				return "redirect:/execute?model_version=" + modelVersionId + "&" + applicationStr;

			} else if (shareProcessId != null) {
				// TODO 这里要通过shareProcessId加上拿到的参数宝宝们
				int modelVersionId = processService
						.getWorkflowVersionIdFromSharedProcessRecord(Integer.parseInt(shareProcessId));
				String applicationStr = applicationId == null ? "" : "application=" + applicationId;
				String shareProcessStr = shareProcessId == null ? "" : "running_case=" + shareProcessId;
				return "redirect:/execute?model_version=" + modelVersionId + "&" + applicationStr + "&"
						+ shareProcessStr;
			} else {
				return "execute/error";
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return "execute/error";
		}
	}

	@ResponseBody
	@RequestMapping(value = "/run", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ReturnRunModelDto> run(@RequestBody RunModelDto runModelDto) {
		logger.debug("Into run, param:" + runModelDto);
		Thread a = Thread.currentThread();
		logger.debug("Into showShare, thread id:" + a.getId());
		try {
			ReturnRunModelDto returnRunModelDto = processService.createProcessInformation(runModelDto);
			refreshCountService.refreshAll();
			logger.debug("run succ, return:" + returnRunModelDto);
			return ResponseEntity.accepted().body(returnRunModelDto);
		} catch (Exception e) {
			logger.error("Failed in run");
			return ResponseEntity.badRequest().body(new ReturnRunModelDto(null));
		}
	}

	@RequestMapping(value = "/share", method = RequestMethod.POST)
	public String showShare(ShareExecuteDto shareExecuteDto) {

		logger.debug("Into showShare, param:" + shareExecuteDto);
		Thread a = Thread.currentThread();
		logger.debug("Into showShare, thread id:" + a.getId());
		try {
			String path;
			if (shareExecuteDto.getHasApplication() && shareExecuteDto.getIsShare()) {
				path = processService.starAndShare(shareExecuteDto);
				logger.debug("showShare succ start and share, return:" + shareExecuteDto);
			} else {
				path = processService.starOnly(shareExecuteDto);
				logger.debug("showShare succ only star, return:" + shareExecuteDto);
			}
			refreshCountService.refreshAll();
			if (path != null) {
				return "redirect:/application/" + path + "/show";
			} else {
				return "redirect:/search/model";
			}

		} catch (Exception e) {
			logger.error("Failed in showShare");
			return "execute/error";
		}
	}

	@RequestMapping(value = "/running_case/{id}/delete", method = RequestMethod.GET)
	public String deleteShare(@PathVariable("id") String runningCaseId,
			@RequestParam(value = "application", required = false) String applicationName) {
		logger.debug("Into deleteShare, runningCaseId:" + runningCaseId);
		try {
			int id = Integer.parseInt(runningCaseId);
			processService.deleteSharedProcessRecord(id);

			refreshCountService.refreshAll();
			return "redirect:/application/" + applicationName + "/show";

		} catch (Exception e) {
			logger.error("Failed in deleteShare");
			return "application/error";
		}
	}

}
