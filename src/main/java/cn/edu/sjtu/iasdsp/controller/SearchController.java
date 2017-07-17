package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.sjtu.iasdsp.dto.SearchApplicationResultDto;
import cn.edu.sjtu.iasdsp.dto.SearchDto;
import cn.edu.sjtu.iasdsp.dto.SearchModelResultDto;
import cn.edu.sjtu.iasdsp.service.SearchService;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月16日 下午4:23:35
 * @version Introduction
 */
@Controller
@RequestMapping("/search")
public class SearchController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);

	@Autowired
	private SearchService searchService;

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String searchAll(SearchDto searchDto) {
		// return "search/application";
		return "search/model";
	}

	@RequestMapping(value = "/application", method = RequestMethod.GET)
	public String showSearchApplication(Model model,
			@RequestParam(value = "search_content", required = false) String searchContent) {
		logger.debug("in showSearchApplication, param:" + searchContent);
		SearchApplicationResultDto searchApplicationResultDto;
		if (searchContent == null || searchContent.equals("")) {
			searchApplicationResultDto = searchService.searchAllApplication();
		} else {
			searchApplicationResultDto = searchService.searchApplication(searchContent);
		}
		model.addAttribute("searchApplicationResultDto", searchApplicationResultDto);
		model.addAttribute("searchDto", new SearchDto());

		logger.debug("searchApplication succ , param:" + searchApplicationResultDto);
		return "search/search_application";
	}

	@RequestMapping(value = "/application", method = RequestMethod.POST)
	public String searchApplication(SearchDto searchDto) {
		logger.debug("in searchApplication, param:" + searchDto);
		String clearSearchContent = searchDto.getSearchContent().replaceAll("[^a-zA-Z0-9 ]", "");
		return "redirect:/search/application?search_content=" + clearSearchContent;
	}

	@RequestMapping(value = "/model", method = RequestMethod.GET)
	public String showSearchModel(Model model,
			@RequestParam(value = "search_content", required = false) String searchContent) {
		logger.debug("in showSearchModel, param:" + searchContent);
		SearchModelResultDto searchModelResultDto;
		if (searchContent == null || searchContent.equals("")) {
			searchModelResultDto = searchService.searchAllModel();
		}
		else{
			//TODO change this
			searchModelResultDto = searchService.searchAllModel();
		}
		model.addAttribute("searchModelResultDto", searchModelResultDto);
		model.addAttribute("searchDto", new SearchDto());

		logger.debug("searchModel succ , param:" + searchModelResultDto);
		return "search/search_model";
	}
	
	@RequestMapping(value = "/model", method = RequestMethod.POST)
	public String searchModel(SearchDto searchDto) {
		logger.debug("in searchModel, param:" + searchDto);
		String clearSearchContent = searchDto.getSearchContent().replaceAll("[^a-zA-Z0-9 ]", "");
		return "redirect:/search/model?search_content=" + clearSearchContent;
	}

}
