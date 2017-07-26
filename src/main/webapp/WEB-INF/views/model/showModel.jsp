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
								<li role="presentation"><a href="#diagram"
									aria-controls="diagram" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
										Diagram
								</a></li>
								<li role="presentation"><a href="#information"
									aria-controls="information" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-bookmark" aria-hidden="true"></span>
										Information
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

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-8">
			<div class="row">
				<div class="col-md-12">
					<h2>${showModelDto.title}</h2>
				</div>
				<div class="col-md-8">
					<h4>
						<small>Revised on ${showModelDto.creationTime } by
							${showModelDto.author.userName}</small>
					</h4>
				</div>
				<div class="col-md-4">
					<div class="btn-group btn-group-justified  btn-group-sm"
						role="group" aria-label="...">
<%-- 						<a type="button" class="btn btn-success btn-sm" 
						  href="<c:url value="/execute?model=${showModelDto. }"/>"> 
						  Execute
						</a>  --%>
						<a type="button" class="btn btn-primary btn-sm"
							href="<c:url value="/model/${showModelDto.workflowInformationId}/edit"/>"> 
							Edit 
						</a>
						<!-- TODO change delete method -->
						<a type="button" class="btn btn-danger btn-sm"
							href="<c:url value="/model/${showModelDto.workflowInformationId}/delete"/>"> 
							Delete 
						</a>
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
							<s:url value="/resources/image/user.jpg" var="userImg" />
							<img src="${userImg}" alt="" style="width: 40px; height: 40px;">
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">Tag</div>
						<ul class="list-group ">
							<c:forEach items="${showModelDto.workflowTags}" var="tag">
								<li class="list-group-item">${tag.name}</li>
							</c:forEach>

							<c:if test="${fn:length(showModelDto.workflowTags) == 0}" >
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
