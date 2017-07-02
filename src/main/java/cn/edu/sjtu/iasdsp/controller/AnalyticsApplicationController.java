package cn.edu.sjtu.iasdsp.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月2日 下午6:45:45
* @version 
* Introduction
*/
@Controller
@RequestMapping("/application")
public class AnalyticsApplicationController {
	private static final Logger logger = LoggerFactory.getLogger(AnalyticsApplicationController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String list(Model model) {
		String introduction = "CPU utilization prediction is an important component of the resource allocation and job scheduling"
				+ " problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance "
				+ "workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine "
				+ "distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, "
				+ "avoiding the physical machines' overload.  ";
		Map<String, String> referenceList = new HashMap<String,String>();
		referenceList.put(
				"Kudinova M, Melekhova A, Verinov A. CPU utilization prediction methods overview[C]"
				+ "//Proceedings of the 11th Central & Eastern European Software Engineering Conference "
				+ "in Russia. ACM, 2015: 7."
				, "#");
		List<String> relatedPageList = new ArrayList<String>();
		relatedPageList.add("Stock PRediction");
		
		ShowApplicationDto showApplicationDto = new ShowApplicationDto("CPU Prediction", new Date(), "xfhuang", 
				introduction, referenceList, relatedPageList);
		model.addAttribute("showApplicationDto", showApplicationDto);
		return "application/show";
	}
	
}
