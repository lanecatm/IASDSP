<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<div class="col-md-12">
    <h4>Diagram</h4>
</div>

<div class="col-md-12">
			<c:if
				test="${showModelDto.workflowInformation.defaultVersion != null && showModelDto.workflowInformation.defaultVersion.svg!= null }">
				<img style="width:100%; height:100%;"
					src="<c:url value="/upload/${showModelDto.workflowInformation.defaultVersion.svg }"/>"
					alt="" >
			</c:if>

</div>
<div class="col-md-12">
	<h4>How to use this model</h4>
</div>

<div class="col-md-12">
	<div class="well">${showModelDto.detailedInformation}</div>
</div>