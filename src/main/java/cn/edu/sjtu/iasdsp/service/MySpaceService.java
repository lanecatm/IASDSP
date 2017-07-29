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
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

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
	public List<WorkflowInformation> getWorkflowInformationList(){
		return workflowInformationHome.findByExample(new WorkflowInformation());
	}

	@Transactional
	public List<ProcessInformation> getProcessInformationList(){
		return processInformationHome.findByExample(new ProcessInformation());
	}
	
	
	@Transactional
	public List<WikiPage> getWikiPageList(){
		return wikiPageHome.findByExample(new WikiPage());
	}

}
