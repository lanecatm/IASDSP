package cn.edu.sjtu.iasdsp.service;

import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.common.WorkflowStatus;
import cn.edu.sjtu.iasdsp.dao.DepartmentInformationHome;
import cn.edu.sjtu.iasdsp.dao.ProcessInformationHome;
import cn.edu.sjtu.iasdsp.dao.SharedProcessRecordHome;
import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowInformationHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowVersionHome;
import cn.edu.sjtu.iasdsp.model.ProcessInformation;
import cn.edu.sjtu.iasdsp.model.SharedProcessRecord;
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
public class DeleteService {
	private static final Log logger = LogFactory.getLog(DeleteService.class);

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
	private RefreshCountService refreshCountService;

	

	@Transactional
	public void deleteWikiPage(WikiPage wikiPage){
		Set<WikiPage> needToRemoveWikiPageList = wikiPage.getRelatedByWikiPages();
		for (WikiPage relatedByWikiPage : needToRemoveWikiPageList) {
			relatedByWikiPage.getRelatedWikiPages().remove(wikiPage);
			wikiPageHome.attachDirty(relatedByWikiPage);
		}
		Set<SharedProcessRecord> sharedProcessRecords = wikiPage.getSharedProcessRecords();
		for(SharedProcessRecord sharedProcessRecord : sharedProcessRecords){
			deleteSharedProcessRecord(sharedProcessRecord);
		}
		Set<WorkflowInformation> workflowInformations = wikiPage.getWorkflowInformations();
		for(WorkflowInformation workflowInformation : workflowInformations){
			workflowInformation.getWikiPages().remove(wikiPage);
			workflowInformationHome.attachDirty(workflowInformation);
		}
		wikiPageHome.delete(wikiPage);
	}
	
	
	@Transactional
	public void deleteWorkflowInformation(WorkflowInformation workflowInformation){
		Set<WorkflowVersion> workflowVersions = workflowInformation.getWorkflowVersions();
		for(WorkflowVersion workflowVersion : workflowVersions){
			deleteWorkflowVersionWithoutDefaultVersion(workflowVersion);
		}
		workflowInformationHome.delete(workflowInformation);

	}


	@Transactional
	public void deleteWorkflowVersion(WorkflowVersion workflowVersion){	
		WorkflowInformation workflowInformation = workflowVersion.getDefaultParentWorkflowInformation();
		if(workflowInformation != null){
			boolean isFound = false;
			for (WorkflowVersion workflowVersionTmp : workflowInformation.getWorkflowVersions()){
				if(workflowVersionTmp.getId()!= workflowVersion.getId() && workflowVersionTmp.getStatus() == WorkflowStatus.PUBLISHED ){
					workflowInformation.setDefaultVersion(workflowVersionTmp);
					isFound = true;
				}
			}
			if(!isFound){
				workflowInformation.setDefaultVersion(null);
			}
			workflowInformationHome.attachDirty(workflowInformation);
		}
		deleteWorkflowVersionWithoutDefaultVersion(workflowVersion);
	}
	

	private void deleteWorkflowVersionWithoutDefaultVersion(WorkflowVersion workflowVersion){
//		WorkflowInformation workflowInformation = workflowVersion.getDefaultParentWorkflowInformation();
//		if(workflowInformation != null){
//			workflowInformation.setDefaultVersion(null);
//			workflowInformationHome.attachDirty(workflowInformation);
//		}
		//不考虑父workflowInformation的外键
		
		Set<ProcessInformation> processInformations = workflowVersion.getProcessInformations();
		for(ProcessInformation processInformation : processInformations){
			processInformation.setWorkflowVersion(null);
			processInformationHome.attachDirty(processInformation);
		}
		
		Set<SharedProcessRecord> sharedProcessRecords = workflowVersion.getSharedProcessRecords();
		for(SharedProcessRecord sharedProcessRecord : sharedProcessRecords){
			deleteSharedProcessRecord(sharedProcessRecord);
		}
		workflowVersionHome.delete(workflowVersion);
	}
	
	@Transactional
	public void deleteSharedProcessRecord(SharedProcessRecord sharedProcessRecord ){
		logger.debug("into deleteSharedProcessRecord");
		Set<ProcessInformation> processInformations = sharedProcessRecord.getSubProcessInformations();
		logger.debug("find processInformations");

		for(ProcessInformation subProcessInformation : processInformations){
			logger.debug("clear foreign key, process id:" + subProcessInformation.getId());
			subProcessInformation.setParentSharedProcessRecord(null);
			processInformationHome.attachDirty(subProcessInformation);
		}
		ProcessInformation processInformation = sharedProcessRecord.getProcessInformation();
		processInformation = processInformationHome.merge(processInformation);
		processInformation.setSharedProcessRecord(null);
		processInformationHome.attachDirty(processInformation);
		
		sharedProcessRecordHome.delete(sharedProcessRecord);
	}
	

	
	
	
	

}
