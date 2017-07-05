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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.xml.internal.ws.api.model.wsdl.editable.EditableWSDLInput;

import cn.edu.sjtu.iasdsp.dto.EditApplicationDto;
import cn.edu.sjtu.iasdsp.dto.ShowApplicationDto;
import cn.edu.sjtu.iasdsp.model.WorkflowInformation;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月2日 下午6:45:45
 * @version Introduction
 */
@Controller
@RequestMapping("/application")
public class AnalyticsApplicationController {
	private static final Logger logger = LoggerFactory.getLogger(AnalyticsApplicationController.class);
	private ShowApplicationDto showApplicationDto = initShowApplicationDto();

	private ShowApplicationDto initShowApplicationDto() {
		String introduction = "CPU utilization prediction is an important component of the resource allocation and job scheduling"
				+ " problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance "
				+ "workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine "
				+ "distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, "
				+ "avoiding the physical machines' overload.  ";
		Map<String, String> referenceList = new HashMap<String, String>();
		referenceList.put("Kudinova M, Melekhova A, Verinov A. CPU utilization prediction methods overview[C]"
				+ "//Proceedings of the 11th Central & Eastern European Software Engineering Conference "
				+ "in Russia. ACM, 2015: 7.", "#");
		referenceList.put("https://www.forbes.com/forbes/welcome/?"
				+ "toURL=https://www.forbes.com/sites/moorinsights/2017/01/10/" + "server-cpu-predictions-for-2017",
				"#");
		List<String> relatedPageList = new ArrayList<String>();

		relatedPageList.add("Stock PRediction");

		List<WorkflowInformation> workflowInformations = new ArrayList<WorkflowInformation>();

		ShowApplicationDto showApplicationDto = new ShowApplicationDto("CPU Prediction", new Date(), "xfhuang",
				introduction, referenceList, relatedPageList);
		return showApplicationDto;
	}

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(Model model) {

		model.addAttribute("showApplicationDto", showApplicationDto);
		return "application/show";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Model model) {
		model.addAttribute("showApplicationDto", showApplicationDto);
		model.addAttribute("editApplicationDto", new EditApplicationDto());

		return "application/edit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(EditApplicationDto editApplicationDto) {
		showApplicationDto.setIntroduction(editApplicationDto.getIntroduction());
		showApplicationDto.setReferenceList(editApplicationDto.getReferenceList());
		return "redirect:/application/show";
	}

}
