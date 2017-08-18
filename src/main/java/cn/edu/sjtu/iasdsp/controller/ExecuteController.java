package cn.edu.sjtu.iasdsp.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.databind.ObjectMapper;

import cn.edu.sjtu.iasdsp.activemq.MqReceiverThread;
import cn.edu.sjtu.iasdsp.activemq.MqSenderSimple;
import cn.edu.sjtu.iasdsp.dto.CopyOriginFileDto;
import cn.edu.sjtu.iasdsp.dto.MessageDto;
import cn.edu.sjtu.iasdsp.dto.ProcessStatusBackFromEngineDto;
import cn.edu.sjtu.iasdsp.dto.ReceiveProcessDto;
import cn.edu.sjtu.iasdsp.dto.ResultBackFromEngineDto;
import cn.edu.sjtu.iasdsp.dto.ReturnReceiveProcessDto;
import cn.edu.sjtu.iasdsp.dto.ReturnRunModelDto;
import cn.edu.sjtu.iasdsp.dto.RunBackFromEngineDto;
import cn.edu.sjtu.iasdsp.dto.RunModelDto;
import cn.edu.sjtu.iasdsp.dto.SaveProcessParamDto;
import cn.edu.sjtu.iasdsp.dto.ShareExecuteDto;
import cn.edu.sjtu.iasdsp.model.NodeInformation;
import cn.edu.sjtu.iasdsp.model.NodeProcessInformation;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WorkflowVersion;
import cn.edu.sjtu.iasdsp.service.ProcessService;
import cn.edu.sjtu.iasdsp.service.RefreshCountService;
import cn.edu.sjtu.iasdsp.service.UserService;

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
	
	@Autowired
	UserService userService;

	//执行页面展示
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
				
				
				WorkflowVersion workflowVersion = processService.getWorkflowVersion(Integer.parseInt(workflowVersionId));
				model.addAttribute("workflowVersion",workflowVersion);
				
				
				
				if(shareProcessId == null){
					List<NodeInformation> nodeInformations = processService.getNodeInformationListFromWorkflowVersionId(workflowVersion.getId());
					model.addAttribute("nodeInformations", nodeInformations);
					model.addAttribute("fromShared", false);
				}
				else{
					List<NodeProcessInformation> nodeProcessInformations = processService.getNodeInformationListFromSharedRecordId(Integer.parseInt(shareProcessId));
					model.addAttribute("nodeProcessInformations", nodeProcessInformations);
					model.addAttribute("fromShared", true);
					model.addAttribute("sharedProcessRecord", processService.getSharedProcessRecordFromId(Integer.parseInt(shareProcessId)));
				}
				
				//回填的参数
				SaveProcessParamDto saveProcessParamDto = new SaveProcessParamDto();
				model.addAttribute("saveProcessParamDto", saveProcessParamDto);

				
								
				
				if(shareProcessId != null){
					logger.debug("into permission");
					Subject subject;
					try {
						subject = SecurityUtils.getSubject();
						subject.checkPermissions("sharedProcess:execute:" + shareProcessId); 
						logger.debug("permission succ");
					} catch (Exception e) {
						model.addAttribute("message", "You do not have the execute shared process permission.");
						logger.debug("permission failed");
						return "error/permission";
					} 
				}
				else{
					logger.debug("into permission");
					Subject subject;
					try {
						subject = SecurityUtils.getSubject();
						subject.checkPermissions("model:execute:" + workflowVersion.getWorkflowInformation().getId()); 
						logger.debug("permission succ");
					} catch (Exception e) {
						model.addAttribute("message", "You do not have the execute model permission.");
						logger.debug("permission failed");
						return "error/permission";
					} 
				}
				
				logger.debug("show succ");
				return "execute/show";
			} else if (workflowInformationId != null) {
				//通过跳转变成workflowVersionId
				int modelVersionId = processService
						.getWorkflowVersionIdFromWorkflowInformationId(Integer.parseInt(workflowInformationId));
				String applicationStr = applicationId == null ? "" : "application=" + applicationId;
				return "redirect:/execute?model_version=" + modelVersionId + "&" + applicationStr;

			} else if (shareProcessId != null) {
				//通过跳转变成workflowVersionId

				logger.debug("into permission");
				Subject subject;
				try {
					subject = SecurityUtils.getSubject();
					subject.checkPermissions("sharedProcess:execute:" + shareProcessId); 
					logger.debug("permission succ");
				} catch (Exception e) {
					model.addAttribute("message", "You do not have the execute shared process permission.");
					logger.debug("permission failed");
					return "error/permission";
				} 
				
				// TODO 这里要通过shareProcessId加上拿到的参数宝宝们
				int modelVersionId = processService
						.getWorkflowVersionIdFromSharedProcessRecord(Integer.parseInt(shareProcessId));
				String applicationStr = applicationId == null ? "" : "application=" + applicationId;
				String shareProcessStr = shareProcessId == null ? "" : "running_case=" + shareProcessId;
				return "redirect:/execute?model_version=" + modelVersionId + "&" + applicationStr + "&"
						+ shareProcessStr;
			} else {
				return "error/error";
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return "error/error";
		}
	}

	@ResponseBody
	@RequestMapping(value = "/run", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ReturnRunModelDto> run(@RequestBody RunModelDto runModelDto) {
		logger.debug("Into run, param:" + runModelDto);
		try {
			User user = userService.findLoginUser();
			//新建一个process并且更新star和runtime
			ReturnRunModelDto returnRunModelDto = processService.createProcessInformation(runModelDto, user);
			refreshCountService.refreshAll();
			Integer workflowInformaionId= processService.getWorkflowIdFromWorkflowVersionId(runModelDto.getWorkflowVersionId());
			//TODO 修改发送消息的消息
			MqSenderSimple.run(workflowInformaionId, 0, "no file fath", "3", returnRunModelDto.getProcessInformationId());
			
			String returnMsg = MqReceiverThread
					.receiveProcessId(Integer.toString(returnRunModelDto.getProcessInformationId()));
			logger.debug("get message:" + returnMsg);
			
			//没收到回显消息重复读多次
			int index = 0;
			while (returnMsg == null && index < 10){
				returnMsg = MqReceiverThread
						.receiveProcessId(Integer.toString(returnRunModelDto.getProcessInformationId()));
				++index;
				Thread.sleep(1000);
			}
			
			//把收到的字符串id存入数据库
			RunBackFromEngineDto runBackFromEngineDto = new ObjectMapper().readValue(returnMsg,
					RunBackFromEngineDto.class);
			logger.debug("runBackFromEngineDto:" + runBackFromEngineDto);
			processService.updateEngineProcessId(returnRunModelDto.getProcessInformationId(),
					runBackFromEngineDto.getProcessID());
			logger.debug("run succ, return:" + returnRunModelDto + ",back:" + runBackFromEngineDto);
			
			
			return ResponseEntity.accepted().body(returnRunModelDto);
		} catch (Exception e) {
			logger.error("Failed in run");
			return ResponseEntity.badRequest().body(new ReturnRunModelDto(null));
		}
	}

	@ResponseBody
	@RequestMapping(value = "/receive", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ReturnReceiveProcessDto> receiveProcess(@RequestBody ReceiveProcessDto receiveProcessDto) {
		logger.debug("into receiveProcess");
		try {
			String returnMsg = null;
			if (!receiveProcessDto.getIsReceiveResult()) {
				returnMsg = MqReceiverThread.receiveResult(Integer.toString(receiveProcessDto.getProcessId()));
				logger.debug("get result msg:" + returnMsg);
			}

			String engineProcessID = processService.getEngineProcessIdFromProcessId(receiveProcessDto.getProcessId());
			String processMsg = MqReceiverThread.receiveInfo(engineProcessID);

			String detailStr = null;
			if (returnMsg != null) {
				ResultBackFromEngineDto resultBackFromEngineDto = new ObjectMapper().readValue(returnMsg,
						ResultBackFromEngineDto.class);
				logger.debug("resultBackFromEngineDto:" + resultBackFromEngineDto);
				detailStr = resultBackFromEngineDto.getDetail().getSummary();
				detailStr = detailStr.replace("\n", "<br />\n");
				detailStr = detailStr.replace("\t", "&nbsp;\t");
				// detailStr = detailStr.replace(" ", "&nbsp; ");
				processService.setDownloadFilePath(resultBackFromEngineDto.getDetail().getResultFileName(),
						receiveProcessDto.getProcessId());

			}

			String statusStr = null;
			if (processMsg != null) {
				ProcessStatusBackFromEngineDto processStatusBackFromEngineDto = new ObjectMapper().readValue(processMsg,
						ProcessStatusBackFromEngineDto.class);
				logger.debug("processStatusBackFromEngineDto:" + processStatusBackFromEngineDto);
				statusStr = processStatusBackFromEngineDto.getEvent();
			}
			ReturnReceiveProcessDto returnReceiveProcessDto = new ReturnReceiveProcessDto(detailStr, statusStr);
			logger.debug("run succ, return:" + returnReceiveProcessDto);
			return ResponseEntity.accepted().body(returnReceiveProcessDto);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Failed in run");
			return ResponseEntity.badRequest().body(new ReturnReceiveProcessDto(null, null));
		}
	}

	@RequestMapping(value = "/share", method = RequestMethod.POST)
	public String showShare(ShareExecuteDto shareExecuteDto) {

		logger.debug("Into showShare, param:" + shareExecuteDto);
		Thread a = Thread.currentThread();
		logger.debug("Into showShare, thread id:" + a.getId());
		try {
			User user = userService.findLoginUser();
			String path;
			if (shareExecuteDto.getHasApplication() && shareExecuteDto.getIsShare()) {
				path = processService.starAndShare(shareExecuteDto, user);
				logger.debug("showShare succ start and share, return:" + shareExecuteDto);
			} else {
				path = processService.starOnly(shareExecuteDto, user);
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
			return "error/error";
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
			return "error/error";
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
			return "error/error";
		}
	}

	// @ResponseBody
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ResponseEntity<MessageDto> uploadFiles(MultipartHttpServletRequest request) {
		logger.debug("into upload");
		List<MultipartFile> uploadDatas = request.getFiles("files");
		try {
			Integer fileId = processService.uploadFiles(uploadDatas);
			if (fileId != null) {
				return ResponseEntity.accepted().body(new MessageDto(fileId.toString()));
			} else {
				return ResponseEntity.badRequest().body(new MessageDto("failed"));
			}
		} catch (Exception e) {
			return ResponseEntity.badRequest().body(new MessageDto("failed"));
		}
	}
	
	@RequestMapping(value = "/copy_origin_file", method = RequestMethod.POST)
	public ResponseEntity<MessageDto> copyOriginFile(@RequestBody CopyOriginFileDto copyOriginFileDto) {
		logger.debug("into copyOriginFile");
		try {
			Integer fileId = processService.copyOriginFile(copyOriginFileDto.getSharedProcessRecordId());
			if (fileId != null) {
				return ResponseEntity.accepted().body(new MessageDto(fileId.toString()));
			} else {
				return ResponseEntity.badRequest().body(new MessageDto("failed"));
			}
		} catch (Exception e) {
			return ResponseEntity.badRequest().body(new MessageDto("failed"));
		}
	}
	
	@RequestMapping(value = "/download/{processId}", method = RequestMethod.GET)
	public void download(HttpServletResponse response, @PathVariable("processId") String processId) throws IOException {
		logger.debug("into download : " + processId);
		String dfileName = "result.txt";

		File file = processService.downloadFile(Integer.parseInt(processId));
		if (!file.exists()) {
			String errorMessage = "Sorry. The file you are looking for does not exist";
			logger.error(errorMessage);
			OutputStream outputStream = response.getOutputStream();
			outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
			outputStream.close();
			return;
		}
		String mimeType = URLConnection.guessContentTypeFromName(file.getName());
		if (mimeType == null) {
			logger.error("mimetype is not detectable, will take default");
			mimeType = "application/octet-stream";
		}
		System.out.println("mimetype : " + mimeType);

		response.setContentType(mimeType);
		response.setHeader("Content-Disposition", String.format("inline; filename=\"" + dfileName + "\""));
		response.setContentLength((int) file.length());

		InputStream inputStream = new BufferedInputStream(new FileInputStream(file));

		FileCopyUtils.copy(inputStream, response.getOutputStream());
	}
	

	@ResponseBody
	@RequestMapping(value = "/save_param", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<Integer>> saveParam(SaveProcessParamDto saveProcessParamDto) {
		logger.debug("into saveParam, param:" + saveProcessParamDto);
		try {
			List<Integer> nodeProcessInformationList = processService.saveNodeProcessInformation(saveProcessParamDto);
			logger.debug("saveParam succ");
			return ResponseEntity.accepted().body(nodeProcessInformationList);
		} catch (Exception e) {
			logger.error("saveParam failed");
			return ResponseEntity.badRequest().body(null);
		}
	}

}
