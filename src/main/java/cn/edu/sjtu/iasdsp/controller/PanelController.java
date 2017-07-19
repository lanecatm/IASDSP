package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.sjtu.iasdsp.dto.PanelAlgorithmDto;
import cn.edu.sjtu.iasdsp.model.NodeCategory;
import cn.edu.sjtu.iasdsp.model.NodeFunction;
import cn.edu.sjtu.iasdsp.service.PanelService;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月2日 下午6:45:45
 * @version Introduction
 */

@Controller
@RequestMapping("/panel")
public class PanelController {
	private static final Logger log = LoggerFactory.getLogger(PanelController.class);

	@Autowired
	private PanelService panelService;
	
	@ResponseBody
	@RequestMapping(value = "/get_node/{id}", method = RequestMethod.GET)
	public ResponseEntity<PanelAlgorithmDto> getNode(@PathVariable("id") String id) {
		int panelId = Integer.parseInt(id);
		PanelAlgorithmDto panelAlgorithmDto = panelService.getSample(panelId);
		
		return new ResponseEntity<PanelAlgorithmDto>(panelAlgorithmDto, HttpStatus.OK);
	}
}
