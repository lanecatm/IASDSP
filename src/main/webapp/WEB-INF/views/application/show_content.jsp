<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<div class="col-md-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Introduction</h4>
		</div>
		<div class="panel-body">${showApplicationDto.introduction }</div>
	</div>
</div>
<div class="col-md-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Reference</h4>
		</div>
		<div class="panel-body">
			<c:set var="i" value="1" />
			<c:forEach items="${showApplicationDto.referenceList}"
				var="reference">
				<p>
					[${i}]
					<c:out value="${reference.key}" />
				</p>
				<c:set var="i" value="${i} + 1" />
			</c:forEach>
		</div>
	</div>
</div>
<div class="col-md-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Related pages</h4>
		</div>
		<div class="panel-body">

		</div>
	</div>
</div>