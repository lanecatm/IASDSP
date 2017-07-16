<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="row">
	<div class=" col-md-12">
	
		<div class="row">

	  <sf:form  method="POST" modelAttribute="editModelDto" cssClass="form-horizontal" role="form" action="updateVersion"  >
	  
	  		<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Execution User Group</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
						
								
								<select id="deleteUserGroup" name="deleteUserGroup" class="form-control">
									<c:forEach items="${editModelDto.departementList}" var="departmentList">
										<option value="${departmentList.key }">${departmentList.value}</option>
									</c:forEach>
								</select>							
							
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
								
					
							<select id="deleteUserGroup" name="deleteUserGroup" class="form-control">
									<c:forEach items="${editModelDto.departementList}" var="departmentList">
										<option value="${departmentList.key }">${departmentList.value}</option>
									</c:forEach>
								</select>	
								
							
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
								
					
								<select id="deleteUserGroup" name="deleteUserGroup" class="form-control">
									<c:forEach items="${editModelDto.departementList}" var="departmentList">
										<option value="${departmentList.key }">${departmentList.value}</option>
									</c:forEach>
								</select>	
							
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