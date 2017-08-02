package cn.edu.sjtu.iasdsp.service;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.NodeCategoryHome;
import cn.edu.sjtu.iasdsp.dao.NodeFunctionHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowVersionHome;
import cn.edu.sjtu.iasdsp.dto.GetVersionGraphDto;
import cn.edu.sjtu.iasdsp.dto.PanelAlgorithmDto;
import cn.edu.sjtu.iasdsp.dto.PanelAllAlgorithmDto;
import cn.edu.sjtu.iasdsp.dto.UpdateVersionGraphDto;
import cn.edu.sjtu.iasdsp.model.NodeCategory;
import cn.edu.sjtu.iasdsp.model.NodeFunction;
import cn.edu.sjtu.iasdsp.model.NodeOption;
import cn.edu.sjtu.iasdsp.model.NodeOptionChoice;
import cn.edu.sjtu.iasdsp.model.WorkflowVersion;

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

	@Autowired
	private NodeCategoryHome nodeCategoryHome;

	@Autowired
	private WorkflowVersionHome workflowVersionHome;
	@Autowired
    private HttpServletRequest request;

	@Transactional
	public PanelAlgorithmDto getSample(int panelId) {
		NodeFunction nodeFunction = nodeFunctionHome.findById(panelId);


		PanelAlgorithmDto panelAlgorithmDto = new PanelAlgorithmDto(
				nodeFunction.getId(), 
				nodeFunction.getName(),
				nodeFunction.getDescription());
		log.info("node option" + nodeFunction.getNodeOptions());
		for (NodeOption nodeOption : nodeFunction.getNodeOptions()) {
			Set<PanelAlgorithmDto.PanelChoice> panelChoices = new HashSet<PanelAlgorithmDto.PanelChoice>(0);
			for (NodeOptionChoice choice : nodeOption.getNodeOptionChoices()) {
				PanelAlgorithmDto.PanelChoice panelChocice = panelAlgorithmDto.new PanelChoice(
						choice.getName(),
						choice.getValue());
				panelChoices.add(panelChocice);
			}
			PanelAlgorithmDto.PanelOption panelOption = panelAlgorithmDto.new PanelOption(
					nodeOption.getId(), 
					nodeOption.getNodeIndex(),
					nodeOption.getName(), 
					nodeOption.getLabel(), 
					nodeOption.getDescription(),
					nodeOption.getDefaultValue(), 
					nodeOption.getNodeOptionType().getName(), 
					panelChoices);
			log.info("add panelOption:" + panelOption);

			panelAlgorithmDto.getPanelOptions().add(panelOption);
		}
		return panelAlgorithmDto;
	}

	@Transactional
	public PanelAllAlgorithmDto getAlgorithmList() {
		List<NodeCategory> nodeCategoryList = nodeCategoryHome.findByExample(new NodeCategory());
		PanelAllAlgorithmDto panelAllAlgorithmDto = new PanelAllAlgorithmDto();
		for (NodeCategory nodeCategory : nodeCategoryList) {
			PanelAllAlgorithmDto.PanelCategory panelCategory = panelAllAlgorithmDto.new PanelCategory(
					nodeCategory.getName(), nodeCategory.getId());
			for (NodeFunction nodeFunction : nodeCategory.getNodeFunctions()) {
				panelCategory.addPanelAlgorithm(nodeFunction.getName(), nodeFunction.getId(),
						nodeFunction.getDescription());
			}
			panelAllAlgorithmDto.addPanelCategory(panelCategory);
		}
		return panelAllAlgorithmDto;
	}

	@Transactional
	public GetVersionGraphDto getVersionGraph(int id) {
		WorkflowVersion workflowVersion = workflowVersionHome.findById(id);
		GetVersionGraphDto getVersionGraphDto = new GetVersionGraphDto();
		if (workflowVersion != null) {
			getVersionGraphDto.setXml(workflowVersion.getXml());
		}
		return getVersionGraphDto;
	}

	@Transactional
	public void updateVersionGraph(int id, UpdateVersionGraphDto updateVersionGraphDto) {
		WorkflowVersion workflowVersion = workflowVersionHome.findById(id);
		if (workflowVersion != null) {
			workflowVersion.setXml(updateVersionGraphDto.getGraph_xml());
			workflowVersionHome.attachDirty(workflowVersion);
		} else {
			throw (new NullPointerException("Can not find workflow version with id:" + id));
		}
	}

	@Transactional
	public void updateVersionSvg(int id, UpdateVersionGraphDto updateVersionGraphDto) {
		WorkflowVersion workflowVersion = workflowVersionHome.findById(id);
		if (workflowVersion != null) {
			String fileName = saveFile(workflowVersion.getId().toString() + ".svg", updateVersionGraphDto.getGraph_svg());
			workflowVersion.setSvg(fileName);
			//workflowVersion.setSvg(updateVersionGraphDto.getGraph_svg());
			workflowVersionHome.attachDirty(workflowVersion);
		} else {
			throw (new NullPointerException("Can not find workflow version with id:" + id));
		}
	}

	public String saveFile(String name, String content) {
		try {
			UUID fileId = UUID.randomUUID(); 
			String savedDir = request.getSession().getServletContext().getRealPath("upload");
			
	        byte[] data = content.getBytes();

	        File file = new File(savedDir, fileId + "_" + name);
	        FileOutputStream fos = new FileOutputStream(file);
	        fos.write(data);
	        fos.close();
	        return file.getName();
	    } catch (Exception e) {
	        log.error("Error writing request", e);
	        return null;
	    }
	}
}