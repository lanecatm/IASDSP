package cn.edu.sjtu.iasdsp.service;

import java.util.ArrayList;
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
public class MySpaceService {
	private static final Log logger = LogFactory.getLog(MySpaceService.class);

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
public List<WorkflowInformation> getAllWorkflowInformationList(){
		return workflowInformationHome.findByExample(new WorkflowInformation());
	}

	@Transactional
	public List<ProcessInformation> getAllProcessInformationList(){
		return processInformationHome.findByExample(new ProcessInformation());
	}
	
	
	@Transactional
	public List<WikiPage> getAllWikiPageList(){
		return wikiPageHome.findByExample(new WikiPage());
	}
	
	
	@Transactional
	public List<WorkflowInformation> getWorkflowInformationListByAuthor(User user){
		logger.debug("getWorkflowInformationListByAuthor find " + user.getWorkflowInformations().size() + " records");
		return new ArrayList<WorkflowInformation>(user.getWorkflowInformations());
	}
	
	@Transactional
	public List<WorkflowInformation> getWorkflowInformationListByContributor(User user){
		logger.debug("getWorkflowInformationListByContributor find " + user.getContributedWorkflowInformations().size() + " records");
		return new ArrayList<WorkflowInformation>(user.getContributedWorkflowInformations());
	}
	
	@Transactional
	public List<WikiPage> getWikiPageListByContributor(User user){
		logger.debug("getWikiPageListByContributor find " + user.getContributedWikiPages().size() + " records");
		return new ArrayList<WikiPage>(user.getContributedWikiPages());
	}

	@Transactional
	public List<ProcessInformation> getProcessInformationList(User user){
		logger.debug("getProcessInformationList find " + user.getProcessInformations().size() + " records");
		return new ArrayList<ProcessInformation>(user.getProcessInformations());
	}
	
	@Transactional
	public List<SharedProcessRecord> getSharedProcessRecordList(User user){
		logger.debug("getSharedProcessRecordList find " + user.getSharedProcessRecords().size() + " records");
		return new ArrayList<SharedProcessRecord>(user.getSharedProcessRecords());
	}
	@Transactional
	public List<WorkflowVersion> getWorkflowVersionListByAuthor(User user){
		logger.debug("getWorkflowVersionListByAuthor find " + user.getWorkflowVersions().size() + " records");
		return  new ArrayList<WorkflowVersion>(user.getWorkflowVersions());
	}
}
