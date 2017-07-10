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
			<c:forEach items="${showApplicationDto.referenceList}"
				var="reference" varStatus="status">
				<p>
					<c:out value="${reference.key}" />
				</p>
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
			<h5>
				<c:forEach items="${showApplicationDto.relatedWikiPageList}"
					var="relatedPage">
					<span class="label label-default">${relatedPage.title}</span>
				</c:forEach>
			</h5>
		</div>
	</div>
</div>