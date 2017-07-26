package cn.edu.sjtu.iasdsp.service;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.ClearCacheHome;
import cn.edu.sjtu.iasdsp.dao.DepartmentInformationHome;
import cn.edu.sjtu.iasdsp.dao.ProcessInformationHome;
import cn.edu.sjtu.iasdsp.dao.SharedProcessRecordHome;
import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowInformationHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowVersionHome;
import cn.edu.sjtu.iasdsp.model.ProcessInformation;
import cn.edu.sjtu.iasdsp.model.SharedProcessRecord;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;
import cn.edu.sjtu.iasdsp.model.WorkflowVersion;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月19日 下午8:24:07
 * @version Introduction
 */
@Service
public class RefreshCountService {
	private static final Log logger = LogFactory.getLog(RefreshCountService.class);

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
	ClearCacheHome clearCacheHome;
	
	@Transactional
	public void refreshAll(){
		clearCacheHome.clear();
		List<WorkflowInformation> workflowInformations = workflowInformationHome.findByExample(new WorkflowInformation());
		for(WorkflowInformation workflowInformation : workflowInformations){
			int workflowExecuteNum = 0;
			int workflowStarNum = 0;
			int workflowStar = 0;
			for (WorkflowVersion workflowVersion : workflowInformation.getWorkflowVersions()){
				int versionExecuteNum = workflowVersion.getProcessInformations().size();
				int versionStarNum = 0;
				int versionStar = 0;
				for(ProcessInformation processInformation : workflowVersion.getProcessInformations()){
					if (processInformation.getProcessStar() != null){
						++versionStarNum;
						versionStar += processInformation.getProcessStar().getRate();
					}
				}
				workflowVersion.setAllStar(versionStar);
				workflowVersion.setStarUserNumber(versionStarNum);
				workflowVersion.setRunningTime(versionExecuteNum);
				workflowVersionHome.attachDirty(workflowVersion);
				workflowStar += versionStar;
				workflowStarNum += versionStarNum;
				workflowExecuteNum += versionExecuteNum;
			}
			workflowInformation.setAllStar(workflowStar);
			workflowInformation.setStarUserNumber(workflowStarNum);
			workflowInformation.setRunningTime(workflowExecuteNum);
			workflowInformationHome.attachDirty(workflowInformation);
		}
		
		List<SharedProcessRecord> sharedProcessRecords = sharedProcessRecordHome.findByExample(new SharedProcessRecord());
		for(SharedProcessRecord sharedProcessRecord : sharedProcessRecords){
			//logger.debug("sharedProcessRecord id" + sharedProcessRecord.getId() + " origin share record times:" + sharedProcessRecord.getRunningTime());
			int shareExecuteNum = sharedProcessRecord.getSubProcessInformations().size();
			//logger.debug("sharedProcessRecord id" + sharedProcessRecord.getId() + " new share record times:" + shareExecuteNum);
			int shareStarNum = 0;
			int shareStar = 0;
			for(ProcessInformation processInformation : sharedProcessRecord.getSubProcessInformations()){
				//logger.debug("processInformation id" + processInformation.getId());
				if (processInformation.getProcessStar() != null){
					++shareStarNum;
					shareStar += processInformation.getProcessStar().getRate();
				}
			}
			sharedProcessRecord.setAllStar(shareStar);
			sharedProcessRecord.setStarUserNumber(shareStarNum);
			sharedProcessRecord.setRunningTime(shareExecuteNum);
			sharedProcessRecordHome.attachDirty(sharedProcessRecord);
			//logger.debug("share process id:" + sharedProcessRecord.getId() + ", star:" + sharedProcessRecord.getAllStar());
		}
	}

	
	
	
	

}
