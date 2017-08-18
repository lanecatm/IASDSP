<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../layouts/application.jsp"%>
<br />
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
								<li role="presentation" class=" active "><a
									href="#introduction" aria-controls="introduction" role="tab"
									data-toggle="tab"> <span class=" glyphicon glyphicon-book"
										aria-hidden="true"></span> Introduction
								</a></li>
								<!-- <li role="presentation"><a href="#diagram"
									aria-controls="diagram" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
										Diagram
								</a></li> -->
								<li role="presentation"><a href="#information"
									aria-controls="information" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-bookmark" aria-hidden="true"></span>
										Detail
								</a></li>

								<li role="presentation"><a href="#version"
									aria-controls="version" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
										All Version
								</a></li>
								<li role="presentation"><a href="#case"
									aria-controls="case" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span>
										Application
								</a></li>
								<li role="presentation"><a href="#execution"
									aria-controls="execution" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-time" aria-hidden="true"></span>
										Execution History
								</a></li>
                                <li role="presentation"><a href="#comment"
                                    aria-controls="comment" role="tab" data-toggle="tab"> <span
                                        class="glyphicon glyphicon-comment" aria-hidden="true"></span>
                                        Comment
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
					<h2>${showModelDto.workflowInformation.name}</h2>
				</div>
				<div class="col-md-8">
					<h4>
						<small>Revised on
							${showModelDto.workflowInformation.createdAt } by
							${showModelDto.workflowInformation.author.userName}</small>
					</h4>
				</div>
				<div class="col-md-4">
					<div class="btn-group btn-group-justified  btn-group-sm"
						role="group" aria-label="...">
						
						
						
						<shiro:hasPermission
                            name="model:edit:${ showModelDto.workflowInformation.id}">
						<a type="button" class="btn btn-primary btn-sm"
                            href="<c:url value="/model/${showModelDto.workflowInformation.id}/edit"/>">
                            Edit </a>
                        </shiro:hasPermission>
                        <shiro:lacksPermission
                            name="model:edit:${ showModelDto.workflowInformation.id}">
						<a type="button" class="btn btn-primary btn-sm" disabled="disabled"
                            href="<c:url value="/model/${showModelDto.workflowInformation.id}/edit"/>">
                            Edit </a>
                        </shiro:lacksPermission>

                        <!-- TODO change delete method -->
                        <shiro:hasPermission
                            name="model:delete:${ showModelDto.workflowInformation.id}">
                        <a type="button" class="btn btn-danger btn-sm"
                            href="<c:url value="/model/${showModelDto.workflowInformation.id}/delete"/>">
                            Delete </a>
                        </shiro:hasPermission>
                        <shiro:lacksPermission
                            name="model:delete:${ showModelDto.workflowInformation.id}">
                        <a type="button" class="btn btn-danger btn-sm" disabled="disabled"
                            href="<c:url value="/model/${showModelDto.workflowInformation.id}/delete"/>">
                            Delete </a>
                        </shiro:lacksPermission>
                        
                        
					</div>
				</div>
			</div>
			<hr />
			<div class="row">
				<!-- Nav tabs -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active " id="introduction">
						<%@ include file="showModelIntroduction.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane" id="information">
						<%@ include file="showModelInfo.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane" id="diagram">
						<%@ include file="showModelDiagram.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane" id="version">
						<%@ include file="showModelVersion.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane" id="case">
						<%@ include file="showModelApplication.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane" id="execution">
						<%@ include file="showModelExecutionHistory.jsp"%>

						<%-- <%@ include file="show_forum.jsp"%> --%>
					</div>
					<div role="tabpanel" class="tab-pane" id="comment">
                        <%@ include file="showModelComment.jsp"%>
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
							<c:forEach
								items="${showModelDto.workflowInformation.contributors}"
								var="contributor" varStatus="status">
								<s:url value="/resources/image/user.jpg" var="userImg" />
								<c:if test="${contributor.userPicture != null }">
									<s:url value="${contributor.userPicture.path}" var="userImg" />
								</c:if>
									<img src="${userImg}" alt="${contributor.userName}"
										style="width: 40px; height: 40px;">
							    <c:if test="${status.index % 3 == 2 }">
                                    <div class="row">
                                        <div class="col-md-12">&nbsp;</div>
                                    </div>
                                </c:if>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">Tag</div>
						<ul class="list-group ">
							<c:forEach
								items="${showModelDto.workflowInformation.workflowTags}"
								var="tag">
								<li class="list-group-item">${tag.name}</li>
							</c:forEach>

							<c:if
								test="${fn:length(showModelDto.workflowInformation.workflowTags) == 0}">
								<li class="list-group-item">&nbsp;</li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- /container -->


<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<%@ include file="../layouts/footer.jsp"%>

<s:url value="/resources/javascript/showModelDiagram.js"
	var="showModelDiagramJs" />
<script src="${showModelDiagramJs}"></script>
