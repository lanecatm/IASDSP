<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>

<s:url value="/resources/stylesheet/bootstrap-tagsinput.css"
	var="tagsinputCss" />
<link rel="stylesheet" media="all" href="${tagsinputCss}" />

<s:url value="/resources/javascript/bootstrap-tagsinput.js"
	var="tagsinputJs" />
<script src="${tagsinputJs}"></script>



<div class="row">
	<div class=" col-md-12">
		<div class="row">
			<div class="col-md-12">
				<h1>${editModelDto.title}</h1>
			</div>

			<div class="col-md-6">
				<h4>
					<small>Revised on ${editModelDto.creationTime } by
						${editModelDto.author}</small>
				</h4>
			</div>
			<div class="col-md-6"></div>

		</div>

		<div class="row">
			<hr />
			<sf:form method="post" modelAttribute="editModelDto"
				cssClass="form-horizontal" role="form" action="update">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>Category</h4>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-md-12">



								<select id="category" name="category" class="form-control">
									<c:forEach items="${editModelDto.categoryList}" var="category">
										<option value="${category.key }">${category.value}</option>

									</c:forEach>

								</select>



							</div>
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>Tag</h4>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-md-12">

								<input id="tagsinput" name="tagsinput" type="text"
									data-role="tagsinput" value="add your tag"> 
							</div>
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>Application</h4>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-md-12">
							
							<select id="category" name="xml" class="form-control">
									<c:forEach items="${editModelDto.allApplicationList}" var="appli">
										<option value="${appli.key }">${appli.value}</option>

									</c:forEach>

								</select>
							
							
							</div>
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>Model detailed Information</h4>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-md-12">
								<sf:textarea path="detailedInformation"
									value="${editModelDto.detailedInformation}"
									cssClass="form-control" rows="15" />
							</div>
						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="col-md-offset-6 col-md-3">
						<input type="submit" name="cancel" value="Cancel"
							class="btn btn-default btn-block" />
					</div>
					<div class="col-md-3">
						<input type="submit" name="save" class="btn btn-primary btn-block"
							value="Save page" />
					</div>
				</div>
			</sf:form>
		</div>

	</div>
</div>

