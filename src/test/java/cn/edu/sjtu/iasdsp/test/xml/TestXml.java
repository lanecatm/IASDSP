package cn.edu.sjtu.iasdsp.test.xml;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月27日 下午3:14:53
* @version 
* Introduction
*/

import static org.junit.Assert.fail;

import java.io.StringReader;
import java.util.List;
import java.util.Map;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.namespace.QName;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.edu.sjtu.iasdsp.dto.xml.MxGraphModel;
import cn.edu.sjtu.iasdsp.dto.xml.MxObject;
import cn.edu.sjtu.iasdsp.dto.xml.MxRoot;
import cn.edu.sjtu.iasdsp.service.PanelService;

public class TestXml {
	private static final Logger log = LoggerFactory.getLogger(TestXml.class);

	@Test
	public void test() {
		JAXBContext jc = null;
		try {
			jc = JAXBContext.newInstance(MxGraphModel.class);
			//StringReader reader = new StringReader(
			//		"<mxGraphModel dx=\"871\" dy=\"532\" grid=\"1\" gridSize=\"10\" guides=\"1\" tooltips=\"1\" connect=\"1\" arrows=\"1\" fold=\"1\" page=\"1\" pageScale=\"1\" pageWidth=\"827\" pageHeight=\"1169\" background=\"#ffffff\"><root><AlgorithmNode ><mxCell id=\"0\"/></AlgorithmNode ><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"\" style=\"shape=ext;double=1;whiteSpace=wrap;html=1;aspect=fixed;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"80\" y=\"100\" width=\"100\" height=\"100\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"\" style=\"triangle;whiteSpace=wrap;html=1;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"60\" y=\"160\" width=\"160\" height=\"170\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"\" style=\"ellipse;shape=doubleEllipse;whiteSpace=wrap;html=1;aspect=fixed;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"2760\" y=\"100\" width=\"80\" height=\"80\" as=\"geometry\"/></mxCell><mxCell id=\"5\" value=\"\" style=\"ellipse;shape=doubleEllipse;whiteSpace=wrap;html=1;aspect=fixed;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"30\" y=\"430\" width=\"80\" height=\"80\" as=\"geometry\"/></mxCell><mxCell id=\"8\" value=\"\" style=\"edgeStyle=none;rounded=0;html=1;jettySize=auto;orthogonalLoop=1;\" edge=\"1\" parent=\"1\" source=\"6\" target=\"7\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell><object label=\"\" SDD=\"DDDD\" id=\"6\"><mxCell style=\"ellipse;shape=doubleEllipse;whiteSpace=wrap;html=1;aspect=fixed;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"2880\" y=\"130\" width=\"80\" height=\"80\" as=\"geometry\"/></mxCell></object><object label=\"\" SDD=\"DDDD\" id=\"7\"><mxCell style=\"ellipse;shape=doubleEllipse;whiteSpace=wrap;html=1;aspect=fixed;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"2870\" y=\"465\" width=\"80\" height=\"80\" as=\"geometry\"/></mxCell></object><mxCell id=\"9\" value=\"\" style=\"rounded=1;whiteSpace=wrap;html=1;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"3120\" y=\"150\" width=\"120\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"13\" value=\"\" style=\"group\" vertex=\"1\" connectable=\"0\" parent=\"1\"><mxGeometry x=\"3000\" y=\"345\" width=\"270\" height=\"240\" as=\"geometry\"/></mxCell><mxCell id=\"11\" value=\"\" style=\"shape=or;whiteSpace=wrap;html=1;\" vertex=\"1\" parent=\"13\"><mxGeometry y=\"90\" width=\"170\" height=\"150\" as=\"geometry\"/></mxCell><mxCell id=\"12\" value=\"\" style=\"rounded=1;whiteSpace=wrap;html=1;\" vertex=\"1\" parent=\"13\"><mxGeometry x=\"150\" width=\"120\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"14\" value=\"\" style=\"endArrow=none;html=1;exitX=0.358;exitY=1.017;exitPerimeter=0;entryX=0.7;entryY=0.1;entryPerimeter=0;\" edge=\"1\" parent=\"1\" source=\"9\" target=\"10\"><mxGeometry width=\"50\" height=\"50\" relative=\"1\" as=\"geometry\"><mxPoint x=\"2670\" y=\"660\" as=\"sourcePoint\"/><mxPoint x=\"2720\" y=\"610\" as=\"targetPoint\"/></mxGeometry></mxCell><mxCell id=\"15\" value=\"ddd\" style=\"shape=or;whiteSpace=wrap;html=1;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"2715\" y=\"330\" width=\"170\" height=\"150\" as=\"geometry\"/></mxCell><object label=\"sdhawkdhaskhcasc&lt;div&gt;&lt;br&gt;&lt;/div&gt;\" haha=\"gaga\" sasda=\"sdasdasd\" id=\"16\"><mxCell style=\"verticalAlign=top;align=left;spacingTop=8;spacingLeft=2;spacingRight=12;shape=cube;size=10;direction=south;fontStyle=4;html=1;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"2690\" y=\"185\" width=\"180\" height=\"120\" as=\"geometry\"/></mxCell></object><mxCell id=\"17\" value=\"\" style=\"endArrow=classic;html=1;entryX=0.5;entryY=1;exitX=1.023;exitY=0.567;exitPerimeter=0;\" edge=\"1\" parent=\"1\" source=\"10\" target=\"9\"><mxGeometry width=\"50\" height=\"50\" relative=\"1\" as=\"geometry\"><mxPoint x=\"3160\" y=\"290\" as=\"sourcePoint\"/><mxPoint x=\"3210\" y=\"240\" as=\"targetPoint\"/></mxGeometry></mxCell><mxCell id=\"10\" value=\"\" style=\"shape=or;whiteSpace=wrap;html=1;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"2960\" y=\"225\" width=\"130\" height=\"150\" as=\"geometry\"/></mxCell><mxCell id=\"18\" value=\"\" style=\"endArrow=classic;html=1;\" edge=\"1\" parent=\"1\"><mxGeometry width=\"50\" height=\"50\" relative=\"1\" as=\"geometry\"><mxPoint x=\"2740\" y=\"630\" as=\"sourcePoint\"/><mxPoint x=\"2790\" y=\"580\" as=\"targetPoint\"/></mxGeometry></mxCell></root></mxGraphModel>");

			//<mxGraphModel dx="599" dy="402" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" background="#ffffff"><root><mxCell id="0"/><mxCell id="1" parent="0"/><AlgorithmNode algorithmName="SMOreg" algorithmId="25" Algorithm_92="2" Algorithm_90="1" Algorithm_87="100" Algorithm_88="1.0" Algorithm_89="1" Algorithm_93="" Algorithm_91="2" id="2"><mxCell style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1"><mxGeometry x="200" y="130" width="120" height="60" as="geometry"/></mxCell></AlgorithmNode></root></mxGraphModel>
			String str = "<mxGraphModel dx=\"790\" dy=\"576\" grid=\"1\" gridSize=\"10\" guides=\"1\" tooltips=\"1\" connect=\"1\" arrows=\"1\" fold=\"1\" page=\"1\" pageScale=\"1\" pageWidth=\"827\" pageHeight=\"1169\" background=\"#ffffff\"><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><Edge label=\"\" Algorithm_181=\"Overtime\" Algorithm_182=\"\" id=\"4\"><mxCell style=\"edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;exitX=1;exitY=0.5;jettySize=auto;orthogonalLoop=1;\" edge=\"1\" parent=\"1\" source=\"2\" target=\"3\"><mxGeometry relative=\"1\" as=\"geometry\"/></mxCell></Edge><StartNode label=\"Start\" id=\"2\"><mxCell style=\"ellipse;whiteSpace=wrap;html=1;aspect=fixed;strokeWidth=2;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"150\" y=\"170\" width=\"60\" height=\"60\" as=\"geometry\"/></mxCell></StartNode><Edge label=\"\" Algorithm_182=\"\" Algorithm_181=\"Error\" id=\"7\"><mxCell style=\"edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;jettySize=auto;orthogonalLoop=1;entryX=0;entryY=0.5;\" edge=\"1\" parent=\"1\" source=\"3\" target=\"5\"><mxGeometry relative=\"1\" as=\"geometry\"><mxPoint x=\"540\" y=\"192\" as=\"targetPoint\"/><Array as=\"points\"><mxPoint x=\"505\" y=\"192\"/><mxPoint x=\"505\" y=\"166\"/></Array></mxGeometry></mxCell></Edge><AlgorithmNode algorithmName=\"Canopy clusterer\" algorithmId=\"42\" label=\"Task\" Algorithm_165=\"3\" Algorithm_169=\"1\" Algorithm_171=\"-1.25\" Algorithm_170=\"-1.0\" Algorithm_168=\"2\" Algorithm_166=\"100\" Algorithm_167=\"10000\" id=\"3\"><mxCell style=\"rounded=1;whiteSpace=wrap;html=1;strokeWidth=2;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"320\" y=\"152\" width=\"140\" height=\"80\" as=\"geometry\"/></mxCell></AlgorithmNode><EndNode label=\"End\" id=\"5\"><mxCell style=\"ellipse;whiteSpace=wrap;html=1;aspect=fixed;strokeWidth=4;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"550\" y=\"171\" width=\"43\" height=\"43\" as=\"geometry\"/></mxCell></EndNode></root></mxGraphModel>";
			StringReader reader = new StringReader(str);
			Unmarshaller unmarshaller = jc.createUnmarshaller();
			MxGraphModel mxRoot = (MxGraphModel) unmarshaller.unmarshal(reader);
			System.out.println(mxRoot.toString());

			Marshaller marshaller = jc.createMarshaller();
			marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			marshaller.marshal(mxRoot, System.out);
			
			
			
			List<MxObject> mxAlgorithmNodeList;
			try {
				mxAlgorithmNodeList = mxRoot.getMxRoot().getAlgorithmNodeList();

			} catch (NullPointerException e) {
				log.error("Wrong MxGraphModel format, xml:" + str);
				throw (new NullPointerException(
						"Can not find mxGraphModel.getMxRoot().getAlgorithmNodeList(), may be wrong xml"));
			}
			if (mxAlgorithmNodeList.size() == 0) {
				log.error("Empty mxAlgorithmNodeList");
			}
			//TODO 改变成遍历整个list
			String label = mxAlgorithmNodeList.get(0).getLabel();
			Map<QName, String> attributes = mxAlgorithmNodeList.get(0).getExtendAttributes();
			QName algorithmName = new QName("algorithmName");
			log.info(attributes.get(algorithmName));
			
			
		} catch (JAXBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail();
		}

	}
}
