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

								<li role="presentation" class="active"><a href="#version"
									aria-controls="version" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
										Model and Version
								</a></li>
								<li role="presentation"><a href="#case"
									aria-controls="case" role="tab" data-toggle="tab"> <span
										class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span>
										Analytics Application
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
				<div class="col-md-offset-1 col-md-12">
					<h2>My space</h2>
					<hr />
				</div>
			</div>
			<div class="row">
				<!-- Nav tabs -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane " id="introduction">
						<%--                         <%@ include file="showModelIntroduction.jsp"%>
 --%>
					</div>
					<div role="tabpanel" class="tab-pane" id="information">
						<%--                         <%@ include file="showModelInfo.jsp"%>
 --%>
					</div>
					<div role="tabpanel" class="tab-pane" id="diagram">
						<%--                         <%@ include file="showModelDiagram.jsp"%>
 --%>
					</div>
					<div role="tabpanel" class="tab-pane active" id="version">
						<%@ include file="show_model.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane" id="case">
						<%@ include file="show_application.jsp"%>

						<%--                         <%@ include file="showModelApplication.jsp"%>
 --%>
					</div>
					<div role="tabpanel" class="tab-pane" id="execution">
					    <%@ include file="show_running_record.jsp"%>
					
						<%-- <%@ include file="show_forum.jsp"%> --%>
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
