package cn.edu.sjtu.iasdsp.service;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowCategoryHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowInformationHome;
import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.dto.ShowModelDto;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WorkflowCategory;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;
import cn.edu.sjtu.iasdsp.model.WorkflowPrivilege;

@Service
public class ModelService {
	
	private static final Log logger = LogFactory.getLog(ModelService.class);

	@Autowired
	private WorkflowInformationHome workflowInformationHome ;
	
	@Autowired
	private UserHome userHome;

	@Autowired
	private WorkflowCategoryHome workFlowCategoryHome;
	
	@Transactional
	public ShowModelDto show(int id) {
		logger.debug("Into ModelSerci show function");
		
		WorkflowInformation workflowInformation = workflowInformationHome.findById(id);
		WorkflowPrivilege workflowPrivilege = workflowInformation.getWorkflowPrivilege();
		
		ShowModelDto showModelDto = new ShowModelDto();
		showModelDto.setIntroduction(workflowInformation.getIntroduction());
		showModelDto.setTitle(workflowInformation.getName());
		showModelDto.setAuthor(workflowInformation.getAuthor());
		showModelDto.setLastEditor(workflowInformation.getUpdator());
		showModelDto.setVersionName(workflowInformation.getVersionName());
		showModelDto.setVersionDescription(workflowInformation.getVersionDescription());
		showModelDto.setCreationTime(workflowInformation.getCreatedAt());
		showModelDto.setUpdateTime(workflowInformation.getUpdatedAt());
		showModelDto.setCategory(workflowInformation.getWorkflowCategory()==null? "No category":workflowInformation.getWorkflowCategory().getName());
		showModelDto.setEditUserGroup(workflowPrivilege.getEditDepartment()==null? "No Edit Department":workflowPrivilege.getEditDepartment().getName());
		showModelDto.setExectuteUserGroup(workflowPrivilege.getEditDepartment()==null? "No Execute Department":workflowPrivilege.getExecuteDepartment().getName());
		showModelDto.setDeleteUserGroup(workflowPrivilege.getEditDepartment()==null? "No Delete Department":workflowPrivilege.getDeleteDepartment().getName());
/*		
		private Integer id;
		private String detailDescription;
		private WorkflowPrivilege workflowPrivilege;
		// private Integer tagId;
		private Integer status;
		private Date validFrom;
		private Date validTo;
		private Boolean persistent;
		private Integer priority;
		private Integer mostPossibleDuration;
		private Integer minimalDuration;
		private Integer maximalDuration;
*/
		
		
		
		return showModelDto;

	}
	
	
}
