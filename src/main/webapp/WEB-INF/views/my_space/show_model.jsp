<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<c:forEach items="${workflowInformationList}" var="workflowInformation"
	varStatus="workflowInformationStatus">
	<div class="col-md-offset-1 col-md-11">
		<h4>
		<a class="hero-a"
            href="<c:url value="/model/${workflowInformation.id}/show"/>" >
			${workflowInformation.name}
		</a>
		</h4>
		<hr/>
		<table class="table table-bordered">
			<tr>
				<th>ID</th>
				<th>Version name</th>
				<th>Author</th>
				<th><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
				</th>
				<th><span class="glyphicon glyphicon-play" aria-hidden="true"></span>
				</th>
				<th>Action</th>
			</tr>

			<c:forEach items="${workflowInformation.workflowVersions}"
				var="workflowVersion" varStatus="workflowVersionStatus">
				<tr>
					<td>${workflowVersion.id}</td>
					<td>
					   ${workflowVersion.versionName}
					</td>
					<td>${workflowVersion.author.userName}</td>
					
					<td>
					   <c:if test="${workflowVersion.starUserNumber!=0}">
							<fmt:formatNumber maxFractionDigits="1"
								value="${workflowVersion.allStar/workflowVersion.starUserNumber}" />

						</c:if>
					</td>
					<td>${workflowInformation.runningTime}</td>
					<td>
					   <a class="btn btn-sm btn-success"
						href="<c:url value="/execute?model_version=${workflowVersion.id}&application=${showApplicationDto.wikiPageId}"/>">
							Execute </a>
					<a class="btn btn-sm btn-danger"
                        href="<c:url value="/model/${workflowInformation}/version/${workflowVersion.id}/delete?back_path=my_space"/>">
                            Delete </a>
					</td>
				</tr>
			</c:forEach>

		</table>

	</div>
</c:forEach>


