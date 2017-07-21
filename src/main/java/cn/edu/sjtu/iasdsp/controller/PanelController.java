package cn.edu.sjtu.iasdsp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.sjtu.iasdsp.dto.GetVersionGraphDto;
import cn.edu.sjtu.iasdsp.dto.MessageDto;
import cn.edu.sjtu.iasdsp.dto.PanelAlgorithmDto;
import cn.edu.sjtu.iasdsp.dto.PanelAllAlgorithmDto;
import cn.edu.sjtu.iasdsp.dto.UpdateVersionGraphDto;
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
	@RequestMapping(value = "/get_node/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE )
	public ResponseEntity<PanelAlgorithmDto> getNode(@PathVariable("id") String id) {
		log.debug("Into getNode, id:" + id);
		int panelId = Integer.parseInt(id);
		PanelAlgorithmDto panelAlgorithmDto = panelService.getSample(panelId);
		return ResponseEntity.accepted().body(panelAlgorithmDto);
	}
	
	@ResponseBody
	@RequestMapping(value = "/get_all_node", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE )
	public ResponseEntity<PanelAllAlgorithmDto> getAllNode() {
		log.debug("Into getAllNode");
		PanelAllAlgorithmDto panelAllAlgorithmDto = panelService.getAlgorithmList();
		return ResponseEntity.accepted().body(panelAllAlgorithmDto);
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/{id}/get_graph", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE )
	public ResponseEntity<String> getGraph(@PathVariable("id") String id) {
		log.debug("Into getGraph");
		int versionId = Integer.parseInt(id);
		GetVersionGraphDto getVersionGraphDto = panelService.getVersionGraph(versionId);
		return ResponseEntity.accepted().body(getVersionGraphDto.getXml());
	}
	
	@ResponseBody
	@RequestMapping(value = "/{id}/post_graph", method = RequestMethod.POST)
	//public ResponseEntity<MessageDto> postGraph(@PathVariable("id") String id, @RequestBody UpdateVersionGraphDto updateVersionGraphDto) {
	public ResponseEntity<MessageDto> postGraph(@PathVariable("id") String id, @RequestBody String xml) {
		log.debug("Into postGraph, param:" + xml);
		int versionId = Integer.parseInt(id);
		UpdateVersionGraphDto updateVersionGraphDto = new UpdateVersionGraphDto();
		updateVersionGraphDto.setXml(xml);
		panelService.updateVersionGraph(versionId, updateVersionGraphDto);
		return ResponseEntity.accepted().body(new MessageDto("succ"));
	}
}
