<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>

	<div class="row">
		<div class=" col-md-12">
			<div class="row">
				<div class="col-md-12">
					<h1>${showModelDto.title}</h1>
				</div>
				<!--  
				<div class="col-md-6">
					<h4>
						<small>Revised on ${showModelDto.creationTime } by
							${showModelDto.author}</small>
					</h4>
				</div>
				<div class="col-md-6">
				</div>
				-->
			</div>
			
			<div class="row">
				<hr />
				<sf:form method="post" modelAttribute="showModelDto"
					cssClass="form-horizontal" role="form" action="update">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Category</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
								
					
								<select class="form-control" style="width:30%" name="search_request[search_for]" id="search_request_search_for">
								<option value="model">Category 1</option>
								<option value="use_case">Category 2</option>
								<option value="use_case">Category 3</option></select>

						<!--  	<sf:select path="application" items="${showModelDto.application}" /> -->
								
							
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
								
								<input type="text"  data-role="tagsinput" value="add your tag">
								<span class="label label-default">tag1</span>  <span class="label label-default">tag2</span>
							
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
								
								application
								
							
								</div>
							</div>
						</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Model Information</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
									<sf:textarea path="introduction"
										value="${showModelDto.introduction}"
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
							<input type="submit" name="save"
								class="btn btn-primary btn-block" value="Save page" />
						</div>
					</div>
				</sf:form>
			</div>
			
			</div>
		</div>

