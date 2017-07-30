package cn.edu.sjtu.iasdsp.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import cn.edu.sjtu.iasdsp.activemq.MqReceiverThread;
import cn.edu.sjtu.iasdsp.activemq.MqSenderSimple;
import cn.edu.sjtu.iasdsp.dto.MessageDto;
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
				model.addAttribute("workflowVersion",
						processService.getWorkflowVersion(Integer.parseInt(workflowVersionId)));
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
			MqSenderSimple.run(3, 0, "data/cpu.arff", "3", returnRunModelDto.getProcessInformationId()); 
			String returnMsg = MqReceiverThread.receiveProcessId(Integer.toString(returnRunModelDto.getProcessInformationId()));
			logger.debug("run succ, return:" + returnMsg + ", dto:" + returnRunModelDto);
			return ResponseEntity.accepted().body(returnRunModelDto);
		} catch (Exception e) {
			logger.error("Failed in run");
			return ResponseEntity.badRequest().body(new ReturnRunModelDto(null));
		}
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/receive", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ReturnRunModelDto> receive(@RequestBody RunModelDto runModelDto) {
		logger.debug("Into run, param:" + runModelDto);
		Thread a = Thread.currentThread();
		logger.debug("Into showShare, thread id:" + a.getId());
		try {
			ReturnRunModelDto returnRunModelDto = processService.createProcessInformation(runModelDto);
			refreshCountService.refreshAll();
			MqSenderSimple.run(3, 0, "data/cpu.arff", "3", returnRunModelDto.getProcessInformationId()); 
			String returnMsg = MqReceiverThread.receiveProcessId(Integer.toString(returnRunModelDto.getProcessInformationId()));
			logger.debug("run succ, return:" + returnMsg + ", dto:" + returnRunModelDto);
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
			if (shareExecuteDto.getHasApplication()) {
				if (path != null) {
					return "redirect:/application/" + path + "/show";
				} else {
					return "redirect:/search/application";
				}
			} else {
				if (path != null) {
					return "redirect:/model/" + path + "/show";
				} else {
					return "redirect:/search/model";
				}
			}

		} catch (Exception e) {
			logger.error("Failed in showShare");
			return "execute/error";
		}
	}

	@RequestMapping(value = "/share_cancel", method = RequestMethod.GET)
	public String shareCancel(ShareExecuteDto shareExecuteDto) {

		logger.debug("Into shareCancel, param:" + shareExecuteDto);

		try {
			String path = processService.findBackPath(shareExecuteDto);
			if (shareExecuteDto.getHasApplication()) {
				if (path != null) {
					return "redirect:/application/" + path + "/show";
				} else {
					return "redirect:/search/application";
				}
			} else {
				if (path != null) {
					return "redirect:/model/" + path + "/show";
				} else {
					return "redirect:/search/model";
				}
			}

		} catch (Exception e) {
			logger.error("Failed in showShare");
			return "execute/error";
		}
	}

	@RequestMapping(value = "/running_case/{id}/delete", method = RequestMethod.GET)
	public String deleteShare(@PathVariable("id") String runningCaseId,
			@RequestParam(value = "application", required = false) String applicationName,
			@RequestParam(value = "model", required = false) String modelId) {
		logger.debug("Into deleteShare, runningCaseId:" + runningCaseId);
		try {
			int id = Integer.parseInt(runningCaseId);
			processService.deleteSharedProcessRecord(id);

			refreshCountService.refreshAll();
			if (applicationName != null) {
				return "redirect:/application/" + applicationName + "/show";
			} else if (modelId != null) {
				return "redirect:/model/" + modelId + "/show";
			} else {
				return "redirect:/";
			}

		} catch (Exception e) {
			logger.error("Failed in deleteShare");
			return "application/error";
		}
	}
	
	
	//@ResponseBody
	  @RequestMapping(value = "/upload", method = RequestMethod.POST)
	  public ResponseEntity<MessageDto> submitPapers(MultipartHttpServletRequest request) {
		logger.debug("into upload");
	    List < MultipartFile > papers = request.getFiles("files");
	    try {
	      saveFilesToServer(papers);
			return ResponseEntity.accepted().body(new MessageDto("succ"));
	    } catch (Exception e) {
			return ResponseEntity.badRequest().body(new MessageDto("failed"));
	    }
	    
	  }

	  public void saveFilesToServer(List<MultipartFile> multipartFiles) throws IOException {
		String directory = request.getSession().getServletContext().getRealPath("upload");
		File file = new File(directory);
		file.mkdirs();
		for (MultipartFile multipartFile : multipartFiles) {
			logger.debug("create file");

			file = new File(directory, multipartFile.getOriginalFilename());
			IOUtils.copy(multipartFile.getInputStream(), new FileOutputStream(file));
		}
	  }

	@RequestMapping(value = "/upload1", method = RequestMethod.POST)
	public ResponseEntity<MessageDto> springUpload(HttpServletRequest request)
			throws IllegalStateException, IOException {
		logger.debug("into upload");
		// 将当前上下文初始化给 CommonsMutipartResolver （多部分解析器）
		try {
			CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
					request.getSession().getServletContext());
			// 检查form中是否有enctype="multipart/form-data"
			if (multipartResolver.isMultipart(request)) {
				// 将request变成多部分request
				MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
				// 获取multiRequest 中所有的文件名
				Iterator iter = multiRequest.getFileNames();
				while (iter.hasNext()) {
					// 一次遍历所有文件
					MultipartFile file = multiRequest.getFile(iter.next().toString());
					if (file != null) {
						logger.debug("create file");
						UUID fileId = UUID.randomUUID();
						String savedDir = request.getSession().getServletContext().getRealPath("upload");

						String name = file.getOriginalFilename();
						// 上传
						file.transferTo(new File(savedDir, fileId + "_" + name));
					}
				}
			}
			return ResponseEntity.accepted().body(new MessageDto("succ"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return ResponseEntity.badRequest().body(new MessageDto("failed"));
		}
	}
}
