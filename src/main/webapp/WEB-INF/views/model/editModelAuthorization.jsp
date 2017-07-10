<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


	  <sf:form  method="POST" modelAttribute="editModelVersionDto" cssClass="form-inline"  >
	  
	  		<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Execution User Group</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
								
					
								<select class="form-control" style="width:300%" name="search_request[search_for]" id="search_request_search_for">
								<option value="model">All</option>
								<option value="use_case">Xiaofu</option>
								<option value="use_case">Theo</option></select>								
							
								</div>
							</div>
						</div>
					</div>
						<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Edit User Group</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
								
					
								<select class="form-control" style="width:300%" name="search_request[search_for]" id="search_request_search_for">
								<option value="model">All</option>
								<option value="use_case">Xiaofu</option>
								<option value="use_case">Theo</option></select>
								
							
								</div>
							</div>
						</div>
					</div>
						<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Delete User Group</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
								
					
								<select class="form-control" style="width:300%" name="search_request[search_for]" id="search_request_search_for">
								<option value="model">All</option>
								<option value="use_case">Theo</option>
								<option value="use_case">Xiaofu</option></select>
							
								</div>
							</div>
						</div>
					</div>
	  
	  
           
      </sf:form> 