<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="row">
    <div class="col-md-12" >
  <div class="content" id="js-drop-zone" style="width:700px; height:600px">

    <div class="message intro">
      <div class="note">
        Drop BPMN diagram from your desktop or <a id="js-create-diagram" href>create a new diagram</a> to get started.
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

    <div class="canvas" id="js-canvas"></div>
    <div id="js-properties-panel"></div>
  </div>
   </div>
</div>

  <ul class="buttons">
    <li>
      download
    </li>
    <li>
      <a id="js-download-diagram" href title="download BPMN diagram">
        BPMN diagram
      </a>
    </li>
    <li>
      <a id="js-download-svg" href title="download as SVG image">
        SVG image
      </a>
    </li>
  </ul>
  
  
 
 
<s:url value="/resources/javascript/editModelDiagram.js" var="editModelDiagramJs" />
<script src="${editModelDiagramJs}"></script>

