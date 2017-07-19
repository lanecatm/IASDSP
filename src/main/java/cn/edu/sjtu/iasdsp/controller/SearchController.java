package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.sjtu.iasdsp.common.SearchForType;
import cn.edu.sjtu.iasdsp.dto.SearchApplicationResultDto;
import cn.edu.sjtu.iasdsp.dto.SearchDto;
import cn.edu.sjtu.iasdsp.dto.SearchModelResultDto;
import cn.edu.sjtu.iasdsp.service.SearchService;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月16日 下午4:23:35
 * @version 
 * @Introduction 处理搜索的页面，分成搜索Model、搜索Application
 */
@Controller
@RequestMapping("/search")
public class SearchController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);

	@Autowired
	private SearchService searchService;

	

	@RequestMapping(value = "/application", method = RequestMethod.GET)
	public String showSearchApplication(Model model,
			@RequestParam(value = "search_content", required = false) String searchContent) {
		logger.debug("in showSearchApplication, param:" + searchContent);
		try {
			SearchApplicationResultDto searchApplicationResultDto;
			searchContent = changeSearchForContent(searchContent);
			if (searchContent == null || searchContent.equals("")) {
				searchApplicationResultDto = searchService.searchAllApplication();
			} else {
				searchApplicationResultDto = searchService.searchApplication(searchContent);
			}
			model.addAttribute("searchApplicationResultDto", searchApplicationResultDto);
			model.addAttribute("searchDto", new SearchDto());

			logger.debug("searchApplication succ , param:" + searchApplicationResultDto);
			return "search/search_application";
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error occured in showSearchApplication");
			return "search/error";
		}
	}

	@RequestMapping(value = "/application", method = RequestMethod.POST)
	public String searchApplication(SearchDto searchDto) {
		logger.debug("in searchApplication, param:" + searchDto);
		try {
			//防止注入攻击
			String clearSearchContent = changeSearchForContent(searchDto.getSearchContent());
			return "redirect:/search/application?search_content=" + clearSearchContent;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error occured in searchApplication");
			return "search/error";
		}
	}

	@RequestMapping(value = "/model", method = RequestMethod.GET)
	public String showSearchModel(Model model,
			@RequestParam(value = "search_content", required = false) String searchContent) {
		logger.debug("in showSearchModel, param:" + searchContent);
		try {
			SearchModelResultDto searchModelResultDto;
			searchContent = changeSearchForContent(searchContent);
			if (searchContent == null || searchContent.equals("")) {
				searchModelResultDto = searchService.searchAllModel();
			}
			else{
				searchModelResultDto = searchService.searchModel(searchContent);
			}
			model.addAttribute("searchModelResultDto", searchModelResultDto);
			model.addAttribute("searchDto", new SearchDto());

			logger.debug("searchModel succ , param:" + searchModelResultDto);
			return "search/search_model";
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error occured in showSearchModel");
			return "search/error";
		}
	}
	
	@RequestMapping(value = "/model", method = RequestMethod.POST)
	public String searchModel(SearchDto searchDto) {
		logger.debug("in searchModel, param:" + searchDto);
		try {
			//防止注入攻击
			String clearSearchContent = changeSearchForContent(searchDto.getSearchContent());
			return "redirect:/search/model?search_content=" + clearSearchContent;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error occured in searchModel");
			return "search/error";
		}
	}
	
	@RequestMapping(value = "/all", method = RequestMethod.POST)
	public String searchAll(SearchDto searchDto) {
		logger.debug("in searchAll, param:" + searchDto);
		try {
			String clearSearchContent = changeSearchForContent(searchDto.getSearchContent());

			if(SearchForType.get(searchDto.getSearchFor()) == SearchForType.MODEL){
				logger.debug("Go to /search/model, search_content:" + clearSearchContent);
				return "redirect:/search/model?search_content=" + clearSearchContent;
			}
			else if(SearchForType.get(searchDto.getSearchFor()) == SearchForType.APPLICATION){
				logger.debug("Go to /search/application, search_content:" + clearSearchContent);
				return "redirect:/search/application?search_content=" + clearSearchContent;
			}
			else{
				logger.error("Cannot find searchFor page, searchDto:" + searchDto);
				return "search/error";
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error occured in searchAll");
			return "search/error";
		}
	}
	
	
	private String changeSearchForContent(String origin){
		if(origin == null){
			return "";
		}
		String newStr = origin.replaceAll("[^a-zA-Z0-9 ]", "");
		logger.debug("origin searchForContent:" + origin + " new searchForContent:" + newStr);
		return newStr;
	}


}
