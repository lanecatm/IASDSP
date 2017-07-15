package cn.edu.sjtu.iasdsp.service;

import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowCategoryHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowInformationHome;
import cn.edu.sjtu.iasdsp.dto.CreateModelDto;
import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.EditModelDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.dto.ShowModelDto;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WikiReference;
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
	
	@Autowired
	private WikiPageHome wikiPageHome;
	
	
	@Transactional
	public Integer save(CreateModelDto createModelDto) {
		logger.debug("Into save service, param:" + createModelDto);
		//create name and introduction
		WorkflowInformation workflowInformation = new WorkflowInformation(createModelDto.getName(),createModelDto.getIntroduction(),new Date(), new Date());
		//TODO set sth.
		workflowInformationHome.persist(workflowInformation);
		return workflowInformation.getId();
	}
	
	
//	@Transactional
//	public CreateModelDto create(int id) {
//		logger.debug("Into ModelService Edit function");
//		
//		CreateModelDto createModelDto = new CreateModelDto();
//		
//		WorkflowInformation workflowInformation = workflowInformationHome.findById(id);
//		WorkflowPrivilege workflowPrivilege = workflowInformation.getWorkflowPrivilege();
//		
//		return createModelDto;
//	}
	
	@Transactional
	public ShowModelDto show(int id) {
		logger.debug("Into ModelService show function");
		
		WorkflowInformation workflowInformation = workflowInformationHome.findById(id);
		WorkflowPrivilege workflowPrivilege = workflowInformation.getWorkflowPrivilege();
		
		ShowModelDto showModelDto = new ShowModelDto();
		showModelDto.setIntroduction(workflowInformation.getIntroduction());
		showModelDto.setTitle(workflowInformation.getName());
		logger.debug("title:" + showModelDto.getTitle() + ", " + workflowInformation.getName());
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
		showModelDto.setDetailedInformation(workflowInformation.getDetailDescription());	

		return showModelDto;

	}
	
	@Transactional
	public EditModelDto edit(int id) {
		logger.debug("Into ModelService Edit function");
		
		EditModelDto editModelDto = new EditModelDto();
		
		WorkflowInformation workflowInformation = workflowInformationHome.findById(id);
		WorkflowPrivilege workflowPrivilege = workflowInformation.getWorkflowPrivilege();
		
		List<WorkflowCategory> allWorkflowCategories = workFlowCategoryHome.findByExample(new WorkflowCategory());
		List<WikiPage> allApplicationList = wikiPageHome.findByExample(new WikiPage());
		
		editModelDto.setIntroduction(workflowInformation.getIntroduction());
		editModelDto.setTitle(workflowInformation.getName());
		editModelDto.setAuthor(workflowInformation.getAuthor());
		editModelDto.setCreationTime(workflowInformation.getCreatedAt());
		editModelDto.setUpdateTime(workflowInformation.getUpdatedAt());
		for(WorkflowCategory workflowCategory: allWorkflowCategories){
			logger.debug("getCategoryList" +editModelDto.getCategoryList() );
			logger.debug("workflowCategory" + workflowCategory.getId());
			editModelDto.getCategoryList().put(workflowCategory.getId(), workflowCategory.getName());
		}
		for(WikiPage wikiPage: allApplicationList){
			editModelDto.getAllApplicationList().put(wikiPage.getId(), wikiPage.getTitle());
		}
		
		return editModelDto;
	}
	
	public EditModelDto update(EditModelDto editModelDto, int id) {
		logger.debug("Into ModelService Edit function");
		

		WorkflowInformation workflowInformation = workflowInformationHome.findById(id);
		WorkflowPrivilege workflowPrivilege = workflowInformation.getWorkflowPrivilege();
		
		
		editModelDto.setIntroduction(workflowInformation.getIntroduction());
		editModelDto.setTitle(workflowInformation.getName());
		editModelDto.setAuthor(workflowInformation.getAuthor());
		editModelDto.setCreationTime(workflowInformation.getCreatedAt());
		editModelDto.setUpdateTime(workflowInformation.getUpdatedAt());

		
		return editModelDto;
	}
	
	
	
	
	
}
