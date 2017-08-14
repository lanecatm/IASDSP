<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<div class="col-md-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h1 class="panel-title">Introduction</h1>
		</div>
		<div class="panel-body">${showApplicationDto.wikiPage.content }</div>
	</div>
</div>
<div class="col-md-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h1 class="panel-title">Reference</h1>
		</div>
		<div class="panel-body">
			<div class="row">

				<c:forEach items="${showApplicationDto.wikiPage.wikiReferences}"
					var="reference" varStatus="status">
					<div class="col-md-1 "><h5>[${status.index+1}]</h5></div>
					<div class="col-md-11">
					<h5>
						<a href="<c:url value="${reference.url }"/>">${reference.content}</a>
					</h5>
					</div>
					<div class="col-md-12">
						<hr />
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
<div class="col-md-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h1 class="panel-title">Related applications</h1>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-12">
					<p>
						<c:forEach items="${showApplicationDto.wikiPage.relatedWikiPages}"
							var="relatedPage">
							<a href="<c:url value="/application/${relatedPage.path }/show"/>"><span class="label label-default" style="display:inline-block;" >${relatedPage.title}</span></a>
						</c:forEach>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>