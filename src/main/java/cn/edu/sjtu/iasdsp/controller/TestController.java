package cn.edu.sjtu.iasdsp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.sjtu.iasdsp.service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/test")

public class TestController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@Autowired
	private TestService testService;


	
	/**
	 * Simply selects the home view to render by returning its name.
	 * value={"/hello","/"}
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "IADSP";
	}
	
	
	/**
	 * 例子: 参数传值
	 * Sample: param
	 */
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String home(String username, Model model){
		System.out.println("username");
		System.out.println(username);
		model.addAttribute("username", username);
		//默认使用对象类型作为key
		//=model.addAttribute("String", username);
		model.addAttribute(username);
		return "home";
	}
	
	@RequestMapping(value="/theohome", method = RequestMethod.GET)
	public String theohome(Locale locale, Model model){
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime",formattedDate);
		return "theohome";
	}
	
	
	@RequestMapping(value="/dirty", method = RequestMethod.GET)
	public String showDirty(Locale locale, Model model){
		logger.info("in to show dirty");
		testService.addOneSide();
		model.addAttribute("testSharedProcessRecordList", testService.getAllSharedRecord());
		return "test/dirty";
	}
		
	@RequestMapping(value="/dirtyget", method = RequestMethod.GET)
	public String showDirtyGet(Locale locale, Model model){
		logger.info("in to show dirty");
		testService.refreshAll();
		model.addAttribute("testSharedProcessRecordList", testService.getAllSharedRecord());
		return "test/dirty";
	}	
	
	
	
	
}