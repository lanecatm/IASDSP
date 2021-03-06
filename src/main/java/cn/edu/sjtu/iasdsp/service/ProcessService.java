package cn.edu.sjtu.iasdsp.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.sjtu.iasdsp.dao.DepartmentInformationHome;
import cn.edu.sjtu.iasdsp.dao.NodeFunctionHome;
import cn.edu.sjtu.iasdsp.dao.NodeOptionHome;
import cn.edu.sjtu.iasdsp.dao.NodeOptionValueHome;
import cn.edu.sjtu.iasdsp.dao.NodeProcessInformationHome;
import cn.edu.sjtu.iasdsp.dao.NodeProcessOptionValueHome;
import cn.edu.sjtu.iasdsp.dao.ProcessInformationHome;
import cn.edu.sjtu.iasdsp.dao.ProcessStarHome;
import cn.edu.sjtu.iasdsp.dao.SharedProcessRecordHome;
import cn.edu.sjtu.iasdsp.dao.UploadFileHome;
import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowInformationHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowVersionHome;
import cn.edu.sjtu.iasdsp.dto.NodeProcessInformationDto;
import cn.edu.sjtu.iasdsp.dto.NodeProcessOptionValueDto;
import cn.edu.sjtu.iasdsp.dto.ReturnRunModelDto;
import cn.edu.sjtu.iasdsp.dto.RunModelDto;
import cn.edu.sjtu.iasdsp.dto.SaveProcessParamDto;
import cn.edu.sjtu.iasdsp.dto.ShareExecuteDto;
import cn.edu.sjtu.iasdsp.model.DepartmentInformation;
import cn.edu.sjtu.iasdsp.model.NodeFunction;
import cn.edu.sjtu.iasdsp.model.NodeInformation;
import cn.edu.sjtu.iasdsp.model.NodeOption;
import cn.edu.sjtu.iasdsp.model.NodeProcessInformation;
import cn.edu.sjtu.iasdsp.model.NodeProcessOptionValue;
import cn.edu.sjtu.iasdsp.model.ProcessInformation;
import cn.edu.sjtu.iasdsp.model.ProcessStar;
import cn.edu.sjtu.iasdsp.model.SharedProcessRecord;
import cn.edu.sjtu.iasdsp.model.UploadFile;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;
import cn.edu.sjtu.iasdsp.model.WorkflowVersion;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月19日 下午8:24:07
 * @version Introduction
 */
@Service
public class ProcessService {
	private static final Log logger = LogFactory.getLog(ProcessService.class);

	@Autowired
	private ProcessInformationHome processInformationHome;

	@Autowired
	private WorkflowVersionHome workflowVersionHome;

	@Autowired
	private UserHome UserHome;

	@Autowired
	private WorkflowInformationHome workflowInformationHome;

	@Autowired
	private WikiPageHome wikiPageHome;

	@Autowired
	private DepartmentInformationHome departmentInformationHome;

	@Autowired
	private UserHome userHome;

	@Autowired
	private SharedProcessRecordHome sharedProcessRecordHome;

	@Autowired
	private ProcessStarHome processStarHome;

	@Autowired
	private DeleteService deleteService;
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	UploadFileHome uploadFileHome;
	
	@Autowired
	NodeFunctionHome nodeFunctionHome;
	
	@Autowired
	NodeProcessInformationHome nodeProcessInformationHome;
	
	@Autowired
	NodeProcessOptionValueHome nodeProcessOptionValueHome;

	@Autowired
	NodeOptionHome nodeOptionHome;
	
	@Autowired
	NodeOptionValueHome nodeOptionValueHome;
	
	
	@Transactional
	public ShareExecuteDto showShare() {
		ShareExecuteDto shareExecuteDto = new ShareExecuteDto();
		List<WikiPage> wikiPageList = wikiPageHome.findByExample(new WikiPage());
		for (WikiPage wikiPage : wikiPageList) {
			shareExecuteDto.getApplicationList().put(wikiPage.getId(), wikiPage.getTitle());
		}

		List<DepartmentInformation> departmentInformationList = departmentInformationHome
				.findByExample(new DepartmentInformation());
		for (DepartmentInformation departmentInformation : departmentInformationList) {
			shareExecuteDto.getDepartmentList().put(departmentInformation.getId(), departmentInformation.getName());
		}
		shareExecuteDto.setIsShare(false);
		return shareExecuteDto;
	}

	@Transactional
	public ReturnRunModelDto createProcessInformation(RunModelDto runModelDto, User user) {

		WorkflowVersion workflowVersion = workflowVersionHome.findById(runModelDto.getWorkflowVersionId());
		if (workflowVersion == null) {
			logger.error("Can not find workflow version, workflow version id:" + runModelDto.getWorkflowVersionId());
			throw (new NullPointerException(
					"Can not find workflow version, workflow version id:" + runModelDto.getWorkflowVersionId()));
		}
		ProcessInformation processInformation = new ProcessInformation(new Date(), new Date());
		processInformation.setUser(user);
		processInformation.setIsShared(false);
		processInformation.setWorkflowVersion(workflowVersion);

		Integer sharedProcessRecordId = runModelDto.getSharedProcessRecordId();
		if (sharedProcessRecordId != null) {
			SharedProcessRecord sharedProcessRecord = sharedProcessRecordHome.findById(sharedProcessRecordId);
			if (sharedProcessRecord != null) {
				logger.debug("set parent shared process record");
				processInformation.setParentSharedProcessRecord(sharedProcessRecord);
			}
		}

		processInformationHome.persist(processInformation);
		if(runModelDto.getUploadFileId()!= null){
			UploadFile uploadFile = uploadFileHome.findById(runModelDto.getUploadFileId());
			uploadFile.setProcessInformation(processInformation);
			uploadFileHome.attachDirty(uploadFile);
		}
		
		
		for(Integer nodeProcessInformationId :runModelDto.getNodeInformationList()){
			NodeProcessInformation nodeProcessInformation = nodeProcessInformationHome.findById(nodeProcessInformationId);
			if(nodeProcessInformation != null){
				nodeProcessInformation.setProcessInformation(processInformation);
				nodeProcessInformationHome.persist(nodeProcessInformation);
			}
		}

		return new ReturnRunModelDto(processInformation.getId());

	}
	
	
	@Transactional
	public String getFilePathFromUploadFileId(int uploadFileId){
		UploadFile uploadFile = uploadFileHome.findById(uploadFileId);
		if(uploadFile != null){
			return uploadFile.getAbstractPath();
		}
		return null;
	}
	
	@Transactional
	public void updateEngineProcessId(int processId, String engineProcessId){
		ProcessInformation processInformation = processInformationHome.findById(processId);
		processInformation.setEngineProcessId(engineProcessId);
		processInformationHome.attachDirty(processInformation);
	}
	
	@Transactional
	public String getEngineProcessIdFromProcessId(int processId){
		ProcessInformation processInformation = processInformationHome.findById(processId);
		if(processInformation == null){
			return null;
		}
		else{
			return processInformation.getEngineProcessId();
		}

	}
	
	@Transactional
	public void setDownloadFilePath(String path, int processId){
		ProcessInformation processInformation = processInformationHome.findById(processId);
		processInformation.setDownloadFilePath(path);
		processInformationHome.attachDirty(processInformation);
	}
	
	@Transactional
	public File downloadFile(int processId){
		ProcessInformation processInformation = processInformationHome.findById(processId);
		String filePath = processInformation.getDownloadFilePath();
		if(filePath != null && !filePath.isEmpty()){
			File file = new File(filePath);
			logger.debug("return file:" + filePath);
			return file;
		}
		logger.debug("return null file");
		return null;
	}
	

	@Transactional
	public int getWorkflowVersionIdFromWorkflowInformationId(int workflowInformationId) {
		logger.debug(
				"Into getWorkflowVersionIdFromWorkflowInformationId, workflowInformationId:" + workflowInformationId);
		WorkflowInformation workflowInformation = workflowInformationHome.findById(workflowInformationId);
		if (workflowInformation == null) {
			logger.error("Can not find workflow information, id:" + workflowInformationId);
			throw (new NullPointerException("Can not find workflow information, id:" + workflowInformationId));
		}
		if (workflowInformation.getDefaultVersion() == null) {
			logger.error("Can not find DefaultVersion in workflow information, id:" + workflowInformationId);
			throw (new NullPointerException(
					"Can not find DefaultVersion in workflow information, id:" + workflowInformationId));
		}
		int workflowVersionId = workflowInformation.getDefaultVersion().getId();
		logger.debug("getWorkflowVersionIdFromWorkflowInformationId succ, workflowVersionId:" + workflowVersionId);
		return workflowVersionId;
	}

	@Transactional
	public int getWorkflowVersionIdFromSharedProcessRecord(int sharedProcessRecordId) {
		SharedProcessRecord sharedProcessRecord = sharedProcessRecordHome.findById(sharedProcessRecordId);
		if (sharedProcessRecord == null) {
			logger.error("Can not find sharedProcessRecord, id:" + sharedProcessRecordId);
			throw (new NullPointerException("Can not find sharedProcessRecord, id:" + sharedProcessRecordId));
		}
		WorkflowVersion workflowVersion = sharedProcessRecord.getWorkflowVersion();
		if (workflowVersion == null) {
			logger.error("Can not find workflowVersion");
			throw (new NullPointerException("Can not find workflowVersion, id:" + sharedProcessRecordId));
		}

		return workflowVersion.getId();
	}

	@Transactional
	public String starAndShare(ShareExecuteDto shareExecuteDto, User user) {
		ProcessInformation processInformation = processInformationHome
				.findById(shareExecuteDto.getProcessInformationId());
		if (processInformation == null) {
			throw (new NullPointerException(
					"Can not find processInformation, id:" + shareExecuteDto.getProcessInformationId()));
		}
		// TODO change user
		createSharedProcess(processInformation, user, shareExecuteDto);
		newStar(processInformation, user, shareExecuteDto);

		if (shareExecuteDto.getHasApplication()) {
			String path = findApplicationPath(shareExecuteDto.getApplicationId());
			return path;
		} else {
			return null;
		}
	}

	@Transactional
	public String starOnly(ShareExecuteDto shareExecuteDto, User user) {
		ProcessInformation processInformation = processInformationHome
				.findById(shareExecuteDto.getProcessInformationId());
		if (processInformation == null) {
			throw (new NullPointerException(
					"Can not find processInformation, id:" + shareExecuteDto.getProcessInformationId()));
		}
		newStar(processInformation, user, shareExecuteDto);

		if (shareExecuteDto.getHasApplication()) {
			String path = findApplicationPath(shareExecuteDto.getApplicationId());
			return path;
		} else {
			if (processInformation.getWorkflowVersion() != null
					&& processInformation.getWorkflowVersion().getWorkflowInformation() != null) {
				return processInformation.getWorkflowVersion().getWorkflowInformation().getId().toString();
			} else {
				return null;
			}
		}
	}
	
	@Transactional
	public WorkflowVersion getWorkflowVersion(int id){
		return workflowVersionHome.findById(id);
	}

	@Transactional
	public String findBackPath(ShareExecuteDto shareExecuteDto){
		ProcessInformation processInformation = processInformationHome
				.findById(shareExecuteDto.getProcessInformationId());
		if (shareExecuteDto.getHasApplication()) {
			String path = findApplicationPath(shareExecuteDto.getApplicationId());
			return path;
		} else {
			if (processInformation.getWorkflowVersion() != null
					&& processInformation.getWorkflowVersion().getWorkflowInformation() != null) {
				return processInformation.getWorkflowVersion().getWorkflowInformation().getId().toString();
			} else {
				return null;
			}
		}
	}
	public void deleteSharedProcessRecord(int id) {
		SharedProcessRecord sharedProcessRecord = sharedProcessRecordHome.findById(id);
		if (sharedProcessRecord != null) {
			deleteService.deleteSharedProcessRecord(sharedProcessRecord);
		}
	}

	private void createSharedProcess(ProcessInformation processInformation, User user,
			ShareExecuteDto shareExecuteDto) {

		logger.debug("Into createSharedProcess:" + shareExecuteDto);

		WikiPage wikiPage = wikiPageHome.findById(shareExecuteDto.getApplicationId());
		WorkflowVersion workflowVersion = processInformation.getWorkflowVersion();
		WorkflowInformation workflowInformation = workflowVersion.getWorkflowInformation();
		DepartmentInformation departmentInformation = departmentInformationHome
				.findById(shareExecuteDto.getDepartmentInformationId());

		SharedProcessRecord sharedProcessRecord = new SharedProcessRecord(processInformation, wikiPage,
				workflowInformation, workflowVersion, departmentInformation, user, user,
				shareExecuteDto.getRunningCaseName(), shareExecuteDto.getShareInputFile(), new Date(), new Date(), 0, 0,
				0);
		// sharedProcessRecord.getSubProcessInformations().add(processInformation);
		sharedProcessRecordHome.persist(sharedProcessRecord);
		processInformation.setSharedProcessRecord(sharedProcessRecord);
		// processInformation.setParentSharedProcessRecord(sharedProcessRecord);
		processInformationHome.persist(processInformation);
	}

	private void newStar(ProcessInformation processInformation, User user, ShareExecuteDto shareExecuteDto) {
		if (shareExecuteDto.getStar() == null || shareExecuteDto.getStar() == 0) {
			return;
		}
		ProcessStar processStar = new ProcessStar(processInformation, shareExecuteDto.getStar(), shareExecuteDto.getComment(), user, new Date(),
				new Date());
		processStarHome.persist(processStar);
		// processInformation.setProcessStar(processStar);
		// processInformationHome.persist(processInformation);
	}

	@Transactional
	public String findApplicationPath(int applicationId) {
		WikiPage wikiPage = wikiPageHome.findById(applicationId);
		if (wikiPage == null) {
			logger.error("Cannot find wikipage with id:" + applicationId);
			throw (new NullPointerException("Cannot find wikipage with id:" + applicationId));
		}
		return wikiPage.getPath();
	}
	

	@Transactional
	public Integer uploadFiles(List<MultipartFile> multipartFiles) throws IOException {
		String directory = request.getSession().getServletContext().getRealPath("upload");
		File file = new File(directory);
		file.mkdirs();
		for (MultipartFile multipartFile : multipartFiles) {
			logger.debug("create file");
			UUID fileId = UUID.randomUUID();
			file = new File(directory + "/execute_file", fileId + "_" + multipartFile.getOriginalFilename());
			IOUtils.copy(multipartFile.getInputStream(), new FileOutputStream(file));
			UploadFile uploadFile = new UploadFile(null, file.getName(), file.getAbsolutePath(), "/upload/execute_file/" + file.getName(), new Date(), new Date()); 
			uploadFileHome.persist(uploadFile);
			return uploadFile.getId();
		}
		return null;
	  }

	@Transactional
	public Integer getWorkflowIdFromProcessId(Integer processId){
		ProcessInformation processInformation = processInformationHome.findById(processId);
		if(processInformation != null && processInformation.getWorkflowVersion() != null
				&& processInformation.getWorkflowVersion().getWorkflowInformation() != null){
			return processInformation.getWorkflowVersion().getWorkflowInformation().getId();
		}
		return null;
	}
	
	@Transactional
	public Integer getWorkflowIdFromWorkflowVersionId(Integer workflowVersionId){
		WorkflowVersion workflowVersion = workflowVersionHome.findById(workflowVersionId);
		return workflowVersion.getWorkflowInformation().getId();
	}
	
	
	@Transactional
	public List<Integer> saveNodeProcessInformation(SaveProcessParamDto saveProcessParamDto){
		List<Integer> processInformationIdList = new ArrayList<Integer>(0);
		for (NodeProcessInformationDto nodeProcessInformationDto : saveProcessParamDto.getNodeProcessInformations()){
			NodeFunction nodeFunction = nodeFunctionHome.findById(nodeProcessInformationDto.getNodeFunctionId());
			NodeProcessInformation nodeProcessInformation = new NodeProcessInformation(
					nodeFunction, 
					nodeProcessInformationDto.getName(), 
					new Date(), new Date());
			nodeProcessInformationHome.persist(nodeProcessInformation);
			processInformationIdList.add(nodeProcessInformation.getId());
			for(NodeProcessOptionValueDto nodeProcessOptionValueDto : nodeProcessInformationDto.getNodeProcessOptionValues()){
				NodeOption nodeOption = nodeOptionHome.findById(nodeProcessOptionValueDto.getNodeOptionId());
				NodeProcessOptionValue nodeProcessOptionValue = new NodeProcessOptionValue(
						nodeProcessInformation,nodeOption, 
						nodeProcessOptionValueDto.getValue(), new Date(), new Date());
				nodeProcessOptionValueHome.persist(nodeProcessOptionValue);	}
		}
		
		return processInformationIdList;
	}
	
	@Transactional
	public List<NodeInformation> getNodeInformationListFromWorkflowVersionId(int workflowVersionId){
		WorkflowVersion workflowVersion = workflowVersionHome.findById(workflowVersionId);
		if(workflowVersion == null){
			throw (new NullPointerException("Can not find workflow version with id:" + workflowVersionId));
		}
		List<NodeInformation> nodeInformations = new ArrayList<NodeInformation>(workflowVersion.getNodeInformations());
		return nodeInformations;
	}
	
	@Transactional
	public List<NodeProcessInformation> getNodeInformationListFromSharedRecordId(int sharedRecordId){
		SharedProcessRecord sharedProcessRecord = sharedProcessRecordHome.findById(sharedRecordId);
		if(sharedProcessRecord == null){
			throw (new NullPointerException("Can not find shared running record with id:" + sharedRecordId));
		}
		List<NodeProcessInformation> nodeInformations = new ArrayList<NodeProcessInformation>(0);
		nodeInformations.add(sharedProcessRecord.getProcessInformation().getNodeProcessInformation());
		return nodeInformations;
	}	
	
	@Transactional
	public SharedProcessRecord getSharedProcessRecordFromId(int sharedRecordId){
		SharedProcessRecord sharedProcessRecord = sharedProcessRecordHome.findById(sharedRecordId);
		return sharedProcessRecord;
	}	
	
	
	@Transactional
	public Integer copyOriginFile(Integer sharedProcessRecordId) throws IOException {
		SharedProcessRecord sharedProcessRecord = sharedProcessRecordHome.findById(sharedProcessRecordId);
		if(sharedProcessRecord!= null && sharedProcessRecord.getProcessInformation()!= null && sharedProcessRecord.getProcessInformation().getUploadFile()!= null){
			UploadFile originFile = sharedProcessRecord.getProcessInformation().getUploadFile();
			UploadFile uploadFile = new UploadFile(null, originFile.getName(), originFile.getAbstractPath(), originFile.getRelativePath(), new Date(), new Date()); 
			uploadFileHome.persist(uploadFile);
			return uploadFile.getId();
		}
		return null;
	  }
}
