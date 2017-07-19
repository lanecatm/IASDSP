package cn.edu.sjtu.iasdsp.service;

import java.util.HashSet;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.controller.PanelController;
import cn.edu.sjtu.iasdsp.dao.NodeFunctionHome;
import cn.edu.sjtu.iasdsp.dto.PanelAlgorithmDto;
import cn.edu.sjtu.iasdsp.model.NodeFunction;
import cn.edu.sjtu.iasdsp.model.NodeOption;
import cn.edu.sjtu.iasdsp.model.NodeOptionChoice;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月19日 下午3:31:11
 * @version Introduction
 */
@Service
public class PanelService {
	private static final Logger log = LoggerFactory.getLogger(PanelService.class);

	@Autowired
	private NodeFunctionHome nodeFunctionHome;

	@Transactional
	public PanelAlgorithmDto getSample(int panelId) {
		NodeFunction nodeFunction = nodeFunctionHome.findById(panelId);

		PanelAlgorithmDto panelAlgorithmDto = new PanelAlgorithmDto(nodeFunction.getName(), nodeFunction.getDescription());
		log.info("node option" + nodeFunction.getNodeOptions());
		for (NodeOption nodeOption : nodeFunction.getNodeOptions()) {
			Set<PanelAlgorithmDto.PanelChoice> panelChoices = new HashSet<PanelAlgorithmDto.PanelChoice>(0);
			for(NodeOptionChoice choice : nodeOption.getNodeOptionChoices()){
				PanelAlgorithmDto.PanelChoice panelChocice = panelAlgorithmDto.new PanelChoice(choice.getName(), choice.getValue());
				panelChoices.add(panelChocice);    
			}
			PanelAlgorithmDto.PanelOption panelOption = panelAlgorithmDto.new PanelOption(nodeOption.getNodeIndex(),
					nodeOption.getName(), nodeOption.getLabel(), nodeOption.getDescription(), nodeOption.getDefaultValue(),
					nodeOption.getNodeOptionType().getName(), panelChoices);
			log.info("add panelOption:" + panelOption);
			
			panelAlgorithmDto.getPanelOptions().add(panelOption);
		}
		return panelAlgorithmDto;
	}

}