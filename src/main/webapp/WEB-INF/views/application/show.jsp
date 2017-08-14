<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>

<br />
<div class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="row">
				<div class="col-md-12">&nbsp;</div>
				<div class="col-md-12">
					<h3>&nbsp;</h3>
					<h3>&nbsp;</h3>

					<div class="box-body">
						<div class="tab-custom">
							<ul class="nav nav-tabs nav-bordered" data-spy="affix"
								role="tablist">
								<li role="presentation" class=" active "><a href="#content"
									aria-controls="content" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
										Introduction
								</a></li>
								<li role="presentation"><a href="#model"
									aria-controls="model" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-bookmark" aria-hidden="true"></span>
										Model
								</a></li>

								<li role="presentation"><a href="#forum"
									aria-controls="forum" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
										Forum
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-8">
			<div class="row">
				<div class="col-md-12">
					<h2>${showApplicationDto.wikiPage.title}</h2>
				</div>
				<div class="col-md-8">
					<h4>
						<small>Revised on ${showApplicationDto.wikiPage.updatedAt}
							by ${showApplicationDto.wikiPage.userByCreatorId.userName}</small>
					</h4>
				</div>
				<div class="col-md-4">
					<div class="btn-group btn-group-justified  btn-group-sm"
						role="group" aria-label="...">
						<shiro:hasPermission
							name="application:edit:${ showApplicationDto.wikiPage.id}">
							<a type="button" class="btn btn-primary btn-sm"
								href="<c:url value="/application/${showApplicationDto.wikiPage.path}/edit"/>">
								Edit </a>
						</shiro:hasPermission>
						<shiro:lacksPermission
							name="application:edit:${ showApplicationDto.wikiPage.id}">
							<a type="button" class="btn btn-primary btn-sm"
								disabled="disabled"
								href="<c:url value="/application/${showApplicationDto.wikiPage.path}/edit"/>">
								Edit </a>
						</shiro:lacksPermission>

						<!-- TODO change delete method -->
						<shiro:hasPermission
							name="application:delete:${ showApplicationDto.wikiPage.id}">
							<a type="button" class="btn btn-danger btn-sm"
								href="<c:url value="/application/${showApplicationDto.wikiPage.path}/delete"/>">
								Delete </a>
						</shiro:hasPermission>
						<shiro:lacksPermission
							name="application:delete:${ showApplicationDto.wikiPage.id}">
							<a type="button" class="btn btn-danger btn-sm"
								disabled="disabled"
								href="<c:url value="/application/${showApplicationDto.wikiPage.path}/delete"/>">
								Delete </a>
						</shiro:lacksPermission>
					</div>
				</div>
			</div>
			<hr />
			<div class="row">
				<!-- Nav tabs -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active " id="content">
						<%@ include file="show_content.jsp"%>
					</div>

					<div role="tabpanel" class="tab-pane " id="model">
						<%@ include file="show_model.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane " id="forum">
						<%-- <%@ include file="show_forum.jsp"%> --%>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-2">
			<div class="row">
				<div class="col-md-12">&nbsp;</div>
				<div class="col-md-12">
					<h3>&nbsp;</h3>
					<h3>&nbsp;</h3>
				</div>
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">Contributor</div>
						<div class="panel-body">
							<c:forEach items="${showApplicationDto.wikiPage.contributors}"
								var="contributor" varStatus="status">
								<s:url value="/resources/image/user.jpg" var="userImg" />
								<c:if test="${contributor.userPicture != null }">
									<s:url value="${contributor.userPicture.path}" var="userImg" />
								</c:if>
								<img src="${userImg}" alt="${contributor.userName}"
									style="width: 40px; height: 40px;">
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /container -->


<%@ include file="../layouts/footer.jsp"%>
