package cn.edu.sjtu.iasdsp.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import javax.xml.namespace.QName;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.NodeCategoryHome;
import cn.edu.sjtu.iasdsp.dao.NodeFunctionHome;
import cn.edu.sjtu.iasdsp.dao.NodeInformationHome;
import cn.edu.sjtu.iasdsp.dao.NodeOptionValueHome;
import cn.edu.sjtu.iasdsp.dao.WorkflowVersionHome;
import cn.edu.sjtu.iasdsp.dto.GetVersionGraphDto;
import cn.edu.sjtu.iasdsp.dto.PanelAlgorithmDto;
import cn.edu.sjtu.iasdsp.dto.PanelAllAlgorithmDto;
import cn.edu.sjtu.iasdsp.dto.UpdateVersionGraphDto;
import cn.edu.sjtu.iasdsp.dto.xml.MxGraphModel;
import cn.edu.sjtu.iasdsp.dto.xml.MxObject;
import cn.edu.sjtu.iasdsp.model.NodeCategory;
import cn.edu.sjtu.iasdsp.model.NodeFunction;
import cn.edu.sjtu.iasdsp.model.NodeInformation;
import cn.edu.sjtu.iasdsp.model.NodeOption;
import cn.edu.sjtu.iasdsp.model.NodeOptionChoice;
import cn.edu.sjtu.iasdsp.model.NodeOptionValue;
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
	private NodeInformationHome nodeInformationHome;
	
	@Autowired
	private NodeOptionValueHome nodeOptionValueHome;
	
	@Autowired
	private HttpServletRequest request;

	@Transactional
	public PanelAlgorithmDto getSample(int panelId) {
		NodeFunction nodeFunction = nodeFunctionHome.findById(panelId);

		PanelAlgorithmDto panelAlgorithmDto = new PanelAlgorithmDto(nodeFunction.getId(), nodeFunction.getName(),
				nodeFunction.getDescription());
		log.info("node option" + nodeFunction.getNodeOptions());

		// 排序nodeOption
		List<NodeOption> nodeOptionList = new ArrayList<NodeOption>(nodeFunction.getNodeOptions());
		Collections.sort(nodeOptionList, new Comparator<NodeOption>() {
			public int compare(NodeOption p1, NodeOption p2) {
				return p1.getId().compareTo(p2.getId());
			}
		});

		int nodeIndex = 0;
		for (NodeOption nodeOption : nodeOptionList) {
			List<PanelAlgorithmDto.PanelChoice> panelChoices = new ArrayList<PanelAlgorithmDto.PanelChoice>(0);
			for (NodeOptionChoice choice : nodeOption.getNodeOptionChoices()) {
				PanelAlgorithmDto.PanelChoice panelChocice = panelAlgorithmDto.new PanelChoice(choice.getId(),
						choice.getName(), choice.getValue());
				panelChoices.add(panelChocice);
			}
			Collections.sort(panelChoices, new Comparator<PanelAlgorithmDto.PanelChoice>() {
				public int compare(PanelAlgorithmDto.PanelChoice p1, PanelAlgorithmDto.PanelChoice p2) {
					return p1.getId().compareTo(p2.getId());
				}
			});
			// Notice nodeIndex 在这段代码里被添加
			PanelAlgorithmDto.PanelOption panelOption = panelAlgorithmDto.new PanelOption(nodeOption.getId(), nodeIndex,
					nodeOption.getName(), nodeOption.getLabel(), nodeOption.getDescription(),
					nodeOption.getDefaultValue(), nodeOption.getNodeOptionType().getName(), panelChoices);
			if (nodeOption.getNodeOptionType().getName().equals("Nominal specification")) {
				if (panelChoices.size() > 0) {
					panelOption.setDefaultValue(panelChoices.get(0).getValue());
				}
			}
			log.info("add panelOption:" + panelOption);

			panelAlgorithmDto.getPanelOptions().add(panelOption);
			++nodeIndex;
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
	public void updateVersionGraph(int id, UpdateVersionGraphDto updateVersionGraphDto) throws Exception {
		
		//把xml保存到workflowVersion中
		WorkflowVersion workflowVersion = workflowVersionHome.findById(id);
		if (workflowVersion != null) {
			String xml = updateVersionGraphDto.getGraph_xml();
			workflowVersion.setXml(xml);
			workflowVersionHome.attachDirty(workflowVersion);
			
			
			
			//解析xml
			MxGraphModel mxGraphModel = getMxGraphModelFromXml(xml);
			List<MxObject> mxAlgorithmNodeList;
			try {
				mxAlgorithmNodeList = mxGraphModel.getMxRoot().getAlgorithmNodeList();

			} catch (NullPointerException e) {
				log.error("Wrong MxGraphModel format, xml:" + xml);
				throw (new NullPointerException(
						"Can not find mxGraphModel.getMxRoot().getAlgorithmNodeList(), may be wrong xml"));
			}
			if (mxAlgorithmNodeList.size() == 0) {
				log.error("Empty mxAlgorithmNodeList");
				throw (new Exception("Empty mxAlgorithmNodeList"));
			}
			//TODO 改变成遍历整个list
			try {
				String label = mxAlgorithmNodeList.get(0).getLabel();
				Map<QName, String> attributes = mxAlgorithmNodeList.get(0).getExtendAttributes();
				String algorithmIdStr = attributes.get(new QName("algorithmId"));
				Integer algorithmId = Integer.parseInt(algorithmIdStr);
				NodeFunction nodeFunction = nodeFunctionHome.findById(algorithmId);
				Set<NodeInformation> nodeInformationOlds = workflowVersion.getNodeInformations();
				for(NodeInformation nodeInformationOld : nodeInformationOlds){
					log.debug("delete old node_information");
					nodeInformationHome.delete(nodeInformationOld);
				}
				
				NodeInformation nodeInformation = new NodeInformation(nodeFunction, workflowVersion, label, new Date(), new Date());
				nodeInformationHome.persist(nodeInformation);
				
				for(NodeOption nodeOption : nodeFunction.getNodeOptions()){
					String keyName = "Algorithm_" + nodeOption.getId().toString();
					String nodeOptionValueStr = attributes.get(new QName(keyName));
					if(nodeOptionValueStr == null){
						log.error("Cannot find key:" + keyName);
					}
					NodeOptionValue nodeOptionValue = new NodeOptionValue(nodeInformation, nodeOption, nodeOptionValueStr, new Date(), new Date());
					nodeOptionValueHome.persist(nodeOptionValue);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				log.error("Generate node information and node option values failed");
			}
			
			

		} else {
			throw (new NullPointerException("Can not find workflow version with id:" + id));
		}
	}

	private MxGraphModel getMxGraphModelFromXml(String xml) {
		JAXBContext jc = null;
		try {
			jc = JAXBContext.newInstance(MxGraphModel.class);
			StringReader reader = new StringReader(xml);
			Unmarshaller unmarshaller = jc.createUnmarshaller();
			MxGraphModel mxGraphModel = (MxGraphModel) unmarshaller.unmarshal(reader);
			return mxGraphModel;
		} catch (Exception e) {
			log.error("can not prase xml, xml:" + xml);
			return null;
		}
	}

	@Transactional
	public void updateVersionSvg(int id, UpdateVersionGraphDto updateVersionGraphDto) {
		WorkflowVersion workflowVersion = workflowVersionHome.findById(id);
		if (workflowVersion != null) {
			String fileName = saveFile(workflowVersion.getId().toString() + ".svg",
					updateVersionGraphDto.getGraph_svg());
			workflowVersion.setSvg(fileName);
			// workflowVersion.setSvg(updateVersionGraphDto.getGraph_svg());
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