<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="col-md-12">
	<div class="row">
		<div class="col-md-12">
			<h4>Comments</h4>
			<hr />
			<c:forEach
				items="${showModelDto.workflowInformation.workflowVersions}"
				var="workflowVersion" varStatus="status">
				<c:forEach items="${workflowVersion.processInformations}"
					var="processInformation" varStatus="status">

					<c:if
						test="${ processInformation.processStar != null && processInformation.processStar.comment != null && processInformation.processStar.comment != ''}">
						<div class="media">
							<div class="media-left">
								<s:url value="/resources/image/user.jpg" var="userStarImg" />
								<a href=""> <c:if
										test="${processInformation.processStar.user.userPicture != null }">
										<s:url
											value="${processInformation.processStar.user.userPicture.path}"
											var="userStarImg" />
									</c:if> <img src="${userStarImg}"
									alt="${processInformation.processStar.user.userName}"
									style="width: 40px; height: 40px;">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading">${processInformation.processStar.comment}</h4>
								<h5>
									<small> 
										<span class="glyphicon glyphicon-user"> </span>
										By
										${processInformation.processStar.user.userName} &nbsp; 
										<span class="glyphicon glyphicon-file"> </span>
										Version:
										${workflowVersion.versionName} &nbsp; 
										<span class="glyphicon glyphicon-star"> </span>
										Star:
										${processInformation.processStar.rate } &nbsp;
										
										<span class="glyphicon glyphicon-time"> </span>
										Time:
										${processInformation.processStar.createdAt} &nbsp;
									</small>
								</h5>
							</div>
						</div>
						<hr />
					</c:if>
				</c:forEach>
			</c:forEach>
		</div>
	</div>
</div>

