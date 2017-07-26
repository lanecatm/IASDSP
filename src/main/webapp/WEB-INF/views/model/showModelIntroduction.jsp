<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<div class="col-md-12">
    <h4>Diagram</h4>
</div>

<div class="col-md-12">
	<div
		style="height: 300px; display: table-cell; vertical-align: middle; text-align: center;">
		<a class="hero-a"
			href="<c:url value="/model/${showModelDto.workflowInformationId}/show"/>"
			style="vertical-align: middle;"> <c:if
				test="${showModelDto.workflowInformation.defaultVersion != null && showModelDto.workflowInformation.defaultVersion.svg!= null }">
				<img
					src="<c:url value="/upload/${showModelDto.workflowInformation.defaultVersion.svg }"/>"
					alt="" style="weight: auto; vertical-align: middle;">
			</c:if>

		</a>
	</div>
</div>
<div class="col-md-12">
	<h4>How to use this model</h4>
</div>

<div class="col-md-12">
	<div class="well">${showModelDto.detailedInformation}</div>
</div>