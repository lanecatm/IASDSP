<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>



<div class="row">
    <div class="col-md-12">
<div id="js-create-diagram2"  style="width:700px; height:600px">
	<div class="content" id="js-drop-zone">

		<div class="message intro">
			<div class="note">

				Please click on the button to charge de diagram: <br>
				<a id="js-create-diagram" value="This is the value" href>Diagram
					test 1</a>
			</div>
		</div>

		<div class="message error">
			<div class="note">
				<p>Ooops, we could not display the BPMN 2.0 diagram.</p>

				<div class="details">
					<span>cause of the problem</span>
					<pre></pre>
				</div>
			</div>
		</div>

		<div class="canvas" id="js-canvas"style="width:100%; height:100%"></div>
		<div id="js-properties-panel"></div>
	</div>

	<form name="myform" type="hidden"
		action="http://www.mydomain.com/myformhandler.cgi" method="POST">
		<div align="center">
			<input id="theo" type="hidden" name="selected elem"
				value='<?xml version="1.0" encoding="UTF-8"?>
<bpmn2:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn2="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" id="sample-diagram" targetNamespace="http://bpmn.io/schema/bpmn" xsi:schemaLocation="http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd">
  <bpmn2:process id="Process_1" isExecutable="false">
    <bpmn2:startEvent id="StartEvent_1" name="test">
      <bpmn2:outgoing>SequenceFlow_1ydx6qe</bpmn2:outgoing>
    </bpmn2:startEvent>
    <bpmn2:task id="Task_1pow0d0" name="test">
      <bpmn2:incoming>SequenceFlow_1ydx6qe</bpmn2:incoming>
      <bpmn2:outgoing>SequenceFlow_07lepbh</bpmn2:outgoing>
      <bpmn2:outgoing>SequenceFlow_1rx193y</bpmn2:outgoing>
      <bpmn2:dataOutputAssociation id="DataOutputAssociation_0i8a1aa">
        <bpmn2:targetRef>DataStoreReference_0p5xrb9</bpmn2:targetRef>
      </bpmn2:dataOutputAssociation>
    </bpmn2:task>
    <bpmn2:sequenceFlow id="SequenceFlow_1ydx6qe" sourceRef="StartEvent_1" targetRef="Task_1pow0d0" />
    <bpmn2:task id="Task_15hq1i4" name="test">
      <bpmn2:incoming>SequenceFlow_07lepbh</bpmn2:incoming>
    </bpmn2:task>
    <bpmn2:sequenceFlow id="SequenceFlow_07lepbh" sourceRef="Task_1pow0d0" targetRef="Task_15hq1i4" />
    <bpmn2:task id="Task_123wh3y" name="test">
      <bpmn2:incoming>SequenceFlow_1rx193y</bpmn2:incoming>
    </bpmn2:task>
    <bpmn2:dataStoreReference id="DataStoreReference_0p5xrb9" />
    <bpmn2:sequenceFlow id="SequenceFlow_1rx193y" sourceRef="Task_1pow0d0" targetRef="Task_123wh3y" />
  </bpmn2:process>
  <bpmndi:BPMNDiagram id="BPMNDiagram_1">
    <bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Process_1">
      <bpmndi:BPMNShape id="_BPMNShape_StartEvent_2" bpmnElement="StartEvent_1">
        <dc:Bounds x="333" y="426" width="36" height="36" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="341" y="462" width="20" height="12" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Task_1pow0d0_di" bpmnElement="Task_1pow0d0">
        <dc:Bounds x="429" y="404" width="100" height="80" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="SequenceFlow_1ydx6qe_di" bpmnElement="SequenceFlow_1ydx6qe">
        <di:waypoint xsi:type="dc:Point" x="369" y="444" />
        <di:waypoint xsi:type="dc:Point" x="429" y="444" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="399" y="423" width="0" height="12" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNShape id="Task_15hq1i4_di" bpmnElement="Task_15hq1i4">
        <dc:Bounds x="949" y="404" width="100" height="80" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="SequenceFlow_07lepbh_di" bpmnElement="SequenceFlow_07lepbh">
        <di:waypoint xsi:type="dc:Point" x="529" y="444" />
        <di:waypoint xsi:type="dc:Point" x="751" y="444" />
        <di:waypoint xsi:type="dc:Point" x="751" y="444" />
        <di:waypoint xsi:type="dc:Point" x="949" y="444" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="766" y="438" width="0" height="12" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNShape id="Task_123wh3y_di" bpmnElement="Task_123wh3y">
        <dc:Bounds x="832" y="274" width="100" height="80" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="DataStoreReference_0p5xrb9_di" bpmnElement="DataStoreReference_0p5xrb9">
        <dc:Bounds x="705" y="510" width="50" height="50" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="730" y="564" width="0" height="12" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="DataOutputAssociation_0i8a1aa_di" bpmnElement="DataOutputAssociation_0i8a1aa">
        <di:waypoint xsi:type="dc:Point" x="529" y="465" />
        <di:waypoint xsi:type="dc:Point" x="705" y="541" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="SequenceFlow_1rx193y_di" bpmnElement="SequenceFlow_1rx193y">
        <di:waypoint xsi:type="dc:Point" x="529" y="444" />
        <di:waypoint xsi:type="dc:Point" x="613" y="444" />
        <di:waypoint xsi:type="dc:Point" x="613" y="314" />
        <di:waypoint xsi:type="dc:Point" x="832" y="314" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="628" y="373" width="0" height="12" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNEdge>
    </bpmndi:BPMNPlane>
  </bpmndi:BPMNDiagram>
</bpmn2:definitions>'>
			<input id="Weiyi" type="hidden" name="XML" value="English">
			<p id="test" type="hidden">
				This is some <b>bold</b> text in a paragraph.
			</p>
			<br>
			<br>
		</div>
	</form>
	</div>
		</div>
			</div>
	
	
<s:url value="/resources/javascript/showModelDiagram.js" var="showModelDiagramJs" />
<script src="${showModelDiagramJs}"></script>

	