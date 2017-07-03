<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>

<br />
<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<div class="row">
				<div class="col-md-12">
					<h1>${showApplicationDto.getTitle() }</h1>
				</div>
				<!--  
				<div class="col-md-6">
					<h4>
						<small>Revised on ${showApplicationDto.getTime() } by
							${showApplicationDto.getAuthorName()}</small>
					</h4>
				</div>
				<div class="col-md-6">
				</div>
				-->
			</div>

			<div class="row">
				<hr />
				<sf:form method="post" modelAttribute="showApplicationDto"
					cssClass="form-horizontal" role="form" action="update">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Introduction</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
									<sf:textarea path="introduction"
										value="${showApplicationDto.introduction }"
										cssClass="form-control" rows="20" />
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Reference</h4>
						</div>
						<div class="panel-body">
							<c:forEach items="${showApplicationDto.referenceList}"
								var="reference" varStatus="status">
								<div class="form-group">
									<label class="col-md-12">Reference:</label>
									<div class="col-md-12">
										<!--  
										<input path="referenceList['${ reference.key}']" value="${reference.key}"
											cssClass="form-control" />
											-->
										${ reference.key}

									</div>
								</div>
								<div class="form-group">
									<label class="col-md-12">Url</label>
									<div class="col-md-12">
										<sf:input path="referenceList['${ reference.key}']"
											value="${reference.value}" cssClass="form-control" />
									</div>
								</div>
								<hr />
							</c:forEach>

								<input type="submit" name="add" class="btn btn-danger btn-block"
									value="Add" />
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Related pages</h4>
						</div>
						<div class="panel-body">
							<h5>
								<c:forEach items="${showApplicationDto.relatedPageList}"
									var="relatedPage">
									<span class="label label-default">${relatedPage}</span>
								</c:forEach>
							</h5>
						</div>
					</div>
					<hr />

					<div class="form-group">
						<div class="col-md-offset-6 col-md-3">
							<input type="submit" name="cancel" value="Cancel"
								class="btn btn-default btn-block" />
						</div>
						<div class="col-md-3">
							<input type="submit" name="save"
								class="btn btn-primary btn-block" value="Save page" />
						</div>
					</div>
				</sf:form>
			</div>
		</div>
	</div>
</div>
