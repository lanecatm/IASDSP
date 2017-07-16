package cn.edu.sjtu.iasdsp.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.DepartmentInformationHome;
import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.WikiPageHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowCategoryHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowInformationHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowPrivilegeHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowTagHome;
import cn.edu.sjtu.iasdsp.dto.CreateModelDto;
import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.EditModelDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.dto.ShowModelDto;
import cn.edu.sjtu.iasdsp.model.DepartmentInformation;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.WikiPage;
import cn.edu.sjtu.iasdsp.model.WikiReference;
import cn.edu.sjtu.iasdsp.model.WorkflowCategory;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;
import cn.edu.sjtu.iasdsp.model.WorkflowPrivilege;
import cn.edu.sjtu.iasdsp.model.WorkflowTag;

@Service
public class ModelService {

	private static final Log logger = LogFactory.getLog(ModelService.class);

	@Autowired
	private WorkflowInformationHome workflowInformationHome;

	@Autowired
	private UserHome userHome;

	@Autowired
	private WorkflowCategoryHome workFlowCategoryHome;

	@Autowired
	private DepartmentInformationHome departmentInformationHome;

	@Autowired
	private WorkflowPrivilegeHome workflowPrivilegeHome;

	@Autowired
	private WikiPageHome wikiPageHome;

	@Autowired
	private WorkflowTagHome workflowTagHome;

	@Transactional
	public Integer save(CreateModelDto createModelDto) {
		logger.debug("Into save service, param:" + createModelDto);
		// create name and introduction
		WorkflowInformation workflowInformation = new WorkflowInformation(createModelDto.getName(),
				createModelDto.getIntroduction(), new Date(), new Date());
		// TODO set sth.
		workflowInformationHome.persist(workflowInformation);
		return workflowInformation.getId();
	}



	@Transactional
	public ShowModelDto show(int id) {
		logger.debug("Into ModelService show function");
		
		WorkflowPrivilege workflowPrivilege2 = new WorkflowPrivilege(new Date(), new Date());

		WorkflowInformation workflowInformation = workflowInformationHome.findById(id);
		//maybe it is null so you have to check
		WorkflowPrivilege workflowPrivilege = workflowInformation.getWorkflowPrivilege() == null ? workflowPrivilege2
				: workflowInformation.getWorkflowPrivilege();

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
		showModelDto.setCategory(workflowInformation.getWorkflowCategory() == null ? "No category"
				: workflowInformation.getWorkflowCategory().getName());
		showModelDto.setEditUserGroup(workflowPrivilege.getEditDepartment() == null ? "No Edit Department"
				: workflowPrivilege.getEditDepartment().getName());
		showModelDto.setExectuteUserGroup(workflowPrivilege.getEditDepartment() == null ? "No Execute Department"
				: workflowPrivilege.getExecuteDepartment().getName());
		showModelDto.setDeleteUserGroup(workflowPrivilege.getEditDepartment() == null ? "No Delete Department"
				: workflowPrivilege.getDeleteDepartment().getName());
		showModelDto.setDetailedInformation(workflowInformation.getDetailDescription());

		return showModelDto;

	}

	@Transactional
	public EditModelDto edit(int id) {
		logger.debug("Into ModelService Edit function");

		EditModelDto editModelDto = new EditModelDto();

		WorkflowInformation workflowInformation = workflowInformationHome.findById(id);

		List<WorkflowCategory> allWorkflowCategories = workFlowCategoryHome.findByExample(new WorkflowCategory());
		List<WikiPage> allApplicationList = wikiPageHome.findByExample(new WikiPage());
		List<DepartmentInformation> allDepartementList = departmentInformationHome
				.findByExample(new DepartmentInformation());
		
		
		WorkflowPrivilege workflowPrivilege2 = new WorkflowPrivilege(new Date(), new Date());
		WorkflowPrivilege workflowPrivilege = workflowInformation.getWorkflowPrivilege() == null ? workflowPrivilege2
				: workflowInformation.getWorkflowPrivilege();

		
		// read the tags in the database
		List<WorkflowTag> tagList = new ArrayList<WorkflowTag>(workflowInformation.getWorkflowTags());
		int numberOldTag = tagList.size();
		String tagsInput = new String();
		for (int i = 0; i < numberOldTag; i++) {
			 tagsInput = tagsInput + tagList.get(i).getName() + ",";
		}
		editModelDto.setTagsinput(tagsInput);
		
	
		
		editModelDto.setIntroduction(workflowInformation.getIntroduction());
		editModelDto.setDetailedInformation(workflowInformation.getDetailDescription());
		editModelDto.setTitle(workflowInformation.getName());
		editModelDto.setAuthor(workflowInformation.getAuthor());
		editModelDto.setCreationTime(workflowInformation.getCreatedAt());
		editModelDto.setUpdateTime(workflowInformation.getUpdatedAt());
		
		
		//Category
		for (WorkflowCategory workflowCategory : allWorkflowCategories) {
			logger.debug("getCategoryList" + editModelDto.getCategoryList());
			logger.debug("workflowCategory" + workflowCategory.getId());
			editModelDto.getCategoryList().put(workflowCategory.getId(), workflowCategory.getName());
		}
		
		WorkflowCategory workflowCategory = workflowInformation.getWorkflowCategory() == null
				? new WorkflowCategory("Prediction", new Date(), new Date())
				: workflowInformation.getWorkflowCategory();
		
		String category = workflowCategory.getName();
		editModelDto.setCategory(category);		
		logger.debug("The category of this model is" + editModelDto.getCategory());
		
		
		// application
		// all application
		for (WikiPage wikiPage : allApplicationList) {
			editModelDto.getAllApplicationList().put(wikiPage.getId(), wikiPage.getTitle());
		}
		//selected application
		List<WikiPage> oldApplicationWikiList = new ArrayList<WikiPage>(workflowInformation.getWikiPages());		
		editModelDto.setRelatedWikiPageList(oldApplicationWikiList);
		logger.debug("oldApplicationWikiList" + oldApplicationWikiList);
		
		// Authorization
		// All authorization
		for (DepartmentInformation departmentInformation : allDepartementList) {
			editModelDto.getDepartementList().put(departmentInformation.getId(), departmentInformation.getName());
		}
		//Selected authorization
		String editDepartment = workflowPrivilege.getEditDepartment() == null ? "1"
				: workflowPrivilege.getEditDepartment().getId().toString();
		editModelDto.setEditUserGroupId(editDepartment);
		String executeDepartment = workflowPrivilege.getExecuteDepartment() == null ? "1"
				: workflowPrivilege.getExecuteDepartment().getId().toString();
		editModelDto.setEditUserGroupId(executeDepartment);
		String deleteDepartment = workflowPrivilege.getDeleteDepartment() == null ? "1"
				: workflowPrivilege.getDeleteDepartment().getId().toString();
		editModelDto.setEditUserGroupId(editDepartment);
		editModelDto.setExecuteUserGroupId(executeDepartment);
		editModelDto.setDeleteUserGroupId(deleteDepartment);

		
	//	editModelDto.setExecuteUserGroupId(workflowPrivilege.getExecuteDepartment().getId().toString());
	//	editModelDto.setDeleteUserGroupId(workflowPrivilege.getDeleteDepartment().getId().toString());
		
		logger.debug("finish edit, return:" + editModelDto);

		return editModelDto;
	}

	@Transactional
	public EditModelDto update(EditModelDto editModelDto, int id) {
		logger.debug("Into ModelService update function");

		WorkflowInformation workflowInformation = workflowInformationHome.findById(id);

		workflowInformation.setDetailDescription(editModelDto.getDetailedInformation());
		workflowInformation.setUpdatedAt(new Date());
		int categoryId = Integer.parseInt(editModelDto.getCategory());
		WorkflowCategory workflowCategory = workFlowCategoryHome.findById(categoryId);

		workflowInformation.setWorkflowCategory(workflowCategory);
		
//Write the application in the data base	
		
		// Get the new applications
		List<WikiPage>  newApplicationWikiList = editModelDto.getRelatedWikiPageList();
		// Get the old application
		List<WikiPage> oldApplicationWikiList = new ArrayList<WikiPage>(workflowInformation.getWikiPages());
		
		
		//Put the new application in an array
		int numberNewAppli = newApplicationWikiList.size();
		String[] newApplicationList = new String[numberNewAppli];
		for (int i = 0; i < numberNewAppli; i++) {
			
			
			newApplicationList[i] = newApplicationWikiList.get(i).getId()== null ? "delete"
					: newApplicationWikiList.get(i).getId().toString();
		}	
		
		//Put the old application in an array
		int numberOldAppli = oldApplicationWikiList.size();
		String[] oldApplicationList = new String[numberOldAppli];
		for (int i = 0; i < numberOldAppli; i++) {
			oldApplicationList[i] = oldApplicationWikiList.get(i).getId().toString();
		}	
		
		logger.debug("delete old tags, old tag list:" + "fadfa" + ", new tag list:" + "adfa");
		// suppress the element that have been removed
		Set<String> hashSetNewApp = new HashSet<String>(Arrays.asList(newApplicationList));
		for (int i = numberOldAppli - 1; i >= 0; --i) {
			if (!hashSetNewApp.contains(oldApplicationList[i])) {
				logger.debug("delete old tag" + oldApplicationList[i]);
				// suppress the element because it is not in the new list
				oldApplicationWikiList .remove(i);
			}
		}
		
		logger.debug("delete old tags, old tag list:" + "fadfa" + ", new tag list:" + "adfa");
		// suppress the element that have been removed
		Set<String> hashSetOldApp = new HashSet<String>(Arrays.asList(oldApplicationList));
		for (int i = 0; i < numberNewAppli; i++) {
			if (!hashSetOldApp.contains(newApplicationList[i])) {
				
				// add the element because it is only in the new list
		
				WikiPage findPage = wikiPageHome.findById(Integer.parseInt(newApplicationList[i]));
				logger.debug("find new Page in database " + newApplicationList[i]);
				oldApplicationWikiList.add(findPage);
			
			}
		}
		workflowInformation.setWikiPages(new HashSet<WikiPage>(oldApplicationWikiList));

		
		// Set<String> hashSetOldElem = new HashSet<String>(Arrays.asList(newTagNameList));
		
		// Get an array of String of the New Tags
		String tag = editModelDto.getTagsinput();
		StringTokenizer tokenizer = new StringTokenizer(tag, ",");
		int numberOfTokens = tokenizer.countTokens();
		String[] newTagNameList = new String[numberOfTokens];
		for (int i = 0; i < numberOfTokens; i++) {
			newTagNameList[i] = tokenizer.nextToken();
		}

		// Get an array of strings the Old Tags
		List<WorkflowTag> oldTagList = new ArrayList<WorkflowTag>(workflowInformation.getWorkflowTags());
		int numberOldTag = oldTagList.size();
		String[] oldTagNameList = new String[numberOldTag];
		for (int i = 0; i < numberOldTag; i++) {
			oldTagNameList[i] = oldTagList.get(i).getName();
		}

		logger.debug("delete old tags, old tag list:" + oldTagList + ", new tag list:" + newTagNameList);
		// suppress the element that have been removed
		Set<String> hashSetNewElem = new HashSet<String>(Arrays.asList(newTagNameList));
		for (int i = numberOldTag - 1; i >= 0; --i) {
			if (!hashSetNewElem.contains(oldTagNameList[i])) {
				logger.debug("delete old tag" + oldTagNameList[i]);
				// suppress the element because it is not in the new list
				oldTagList.remove(i);
			}
		}
		
		logger.debug("add new tags, old tag list:" + oldTagList + ", new tag list:" + newTagNameList);
		// add the new element
		Set<String> hashSetOldElem = new HashSet<String>(Arrays.asList(oldTagNameList));
		for (int i = 0; i < newTagNameList.length; i++) {
			if (!hashSetOldElem.contains(newTagNameList[i])) {
				logger.debug("add new tag" + newTagNameList[i]);

				// add the element because it is only in the new list
				WorkflowTag exampleTag = new WorkflowTag();
				exampleTag.setName(newTagNameList[i]);
				List<WorkflowTag> findTags = workflowTagHome.findByExample(exampleTag);
				if (findTags.size() == 0) {
					logger.debug("doesn't find new tag in database " + newTagNameList[i]);
					// create a new tag
					WorkflowTag newTag = new WorkflowTag(newTagNameList[i], new Date(), new Date());
					// set date and content
					workflowTagHome.persist(newTag);
					oldTagList.add(newTag);
				} else {
					// use origin tag
					logger.debug("find new tag in database " + newTagNameList[i]);
					oldTagList.add(findTags.get(0));
				}
			}

		}

		workflowInformation.setWorkflowTags(new HashSet<WorkflowTag>(oldTagList));
		workflowInformationHome.attachDirty(workflowInformation);
		logger.debug("uodate succ, output:" + editModelDto);
		return editModelDto;
	}
	
	@Transactional
	public EditModelDto updateVersion(EditModelDto editModelDto, int id) {
		logger.debug("Into ModelService Edit function");

		WorkflowInformation workflowInformation = workflowInformationHome.findById(id);
		// WorkflowVersion workflowVersion = new WorkflowVersion
		// (editModelDto.getVersion(), new Date(), new Date());

		return editModelDto;
	}
	
	@Transactional
	public EditModelDto updateAuthorization(EditModelDto editModelDto, int id) {
		logger.debug("Into ModelService Update Authorization");
		


		logger.debug("Try to get the privilege");
		
		WorkflowInformation workflowInformation = workflowInformationHome.findById(id);
		WorkflowPrivilege workflowPrivilege = 
				workflowInformation.getWorkflowPrivilege() == null ?
				new WorkflowPrivilege(new Date(), new Date())
				: workflowInformation.getWorkflowPrivilege();
		
		logger.debug("The privilege :" + workflowPrivilege);
		
		
		String debug = editModelDto.getDeleteUserGroupId();
		logger.debug("Id of the delete departement :" + debug);
		
		workflowPrivilege.setDeleteDepartment(departmentInformationHome.findById(Integer.parseInt(editModelDto.getDeleteUserGroupId())));
		workflowPrivilege.setExecuteDepartment(departmentInformationHome.findById(Integer.parseInt(editModelDto.getExecuteUserGroupId())));
		workflowPrivilege.setEditDepartment(departmentInformationHome.findById(Integer.parseInt(editModelDto.getEditUserGroupId())));
		workflowPrivilege.setWorkflowInformation(workflowInformation);
		workflowPrivilegeHome.persist(workflowPrivilege);
		logger.debug("workflowPrivilege after persist :" + workflowPrivilege);

		logger.debug("The departement:" + departmentInformationHome.findById(Integer.parseInt(editModelDto.getEditUserGroupId())));
		
		//workflowInformation.setWorkflowPrivilege(workflowPrivilege);
		workflowInformationHome.attachDirty(workflowInformation);

		return editModelDto;
	}

}
