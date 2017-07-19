<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>



<div class="row">
    <div class="col-md-12">
<div id="js-create-diagram2"  style="width:700px; height:600px">
	<div class="content" id="js-drop-zone">

		<div class="message intro">
			<div class="note">

				Click here to charge the diagram from the back end: <br>
				<a id="js-create-diagram" value="This is the value" href ="#">Charge the Diagram</a>
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

		<div class="canvas" id="js-canvas" style="width:100%; height:100%"></div>
		<div id="js-properties-panel"></div>
	</div>

	<form name="myform" type="hidden"
		action="http://www.mydomain.com/myformhandler.cgi" method="POST">
		<div align="center">
			<input id="theo" type="hidden" name="selected elem"
				value='<?xml version="1.0" encoding="UTF-8"?>
<bpmn2:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn2="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" id="sample-diagram" targetNamespace="http://bpmn.io/schema/bpmn" xsi:schemaLocation="http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd">
  <bpmn2:process id="Process_1" isExecutable="false">
    <bpmn2:startEvent id="StartEvent_1">
      <bpmn2:outgoing>SequenceFlow_1tq2x30</bpmn2:outgoing>
    </bpmn2:startEvent>
    <bpmn2:task id="Task_1u17ayy" name="Test">
      <bpmn2:incoming>SequenceFlow_1tq2x30</bpmn2:incoming>
    </bpmn2:task>
    <bpmn2:sequenceFlow id="SequenceFlow_1tq2x30" sourceRef="StartEvent_1" targetRef="Task_1u17ayy" />
    <bpmn2:dataObjectReference id="DataObjectReference_1imdteb" name="test" dataObjectRef="DataObject_1vmxh4t" />
    <bpmn2:dataObject id="DataObject_1vmxh4t" />
    <bpmn2:dataStoreReference id="DataStoreReference_0w9cfdt" name="test" />
  </bpmn2:process>
  <bpmndi:BPMNDiagram id="BPMNDiagram_1">
    <bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Process_1">
      <bpmndi:BPMNShape id="_BPMNShape_StartEvent_2" bpmnElement="StartEvent_1">
        <dc:Bounds x="412" y="240" width="36" height="36" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Task_1u17ayy_di" bpmnElement="Task_1u17ayy">
        <dc:Bounds x="268" y="218" width="100" height="80" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="SequenceFlow_1tq2x30_di" bpmnElement="SequenceFlow_1tq2x30">
        <di:waypoint xsi:type="dc:Point" x="412" y="258" />
        <di:waypoint xsi:type="dc:Point" x="368" y="258" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="390" y="237" width="0" height="12" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNShape id="DataObjectReference_1imdteb_di" bpmnElement="DataObjectReference_1imdteb">
        <dc:Bounds x="300" y="337" width="36" height="50" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="308" y="391" width="20" height="12" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="DataStoreReference_0w9cfdt_di" bpmnElement="DataStoreReference_0w9cfdt">
        <dc:Bounds x="392" y="337" width="50" height="50" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="407" y="391" width="20" height="12" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNShape>
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

	
