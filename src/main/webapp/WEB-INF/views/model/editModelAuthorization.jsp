<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="row">
	<div class=" col-md-12">
	
		<div class="row">

	  <sf:form  method="POST" modelAttribute="editModelDto" cssClass="form-horizontal" role="form" action="updateAuthorization"  >
	  
	  		<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Delete User Group </h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
						
								
								<select id="deleteUserGroupId" name="deleteUserGroupId" class="form-control">
									<c:forEach items="${editModelDto.departementList}" var="departementList">
									<c:choose>
										<c:when test="${editModelDto.deleteUserGroupId == departementList.key}">
											<option selected="true" value="${departementList.key}">${departementList.value}</option>
										</c:when>
										<c:otherwise>
											<option  value="${departementList.key }">${departementList.value}</option>
										</c:otherwise>
									</c:choose>							
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
								
					
								<select id="editUserGroupId" name="editUserGroupId" class="form-control">
									<c:forEach items="${editModelDto.departementList}" var="departementList">
									
									<c:choose>
										<c:when test="${editModelDto.editUserGroupId == departementList.key}">
										<option selected="true" value="${departementList.key }">${departementList.value}</option>
										</c:when>
										<c:otherwise>
											<option  value="${departementList.key }">${departementList.value}</option>
										</c:otherwise>
									</c:choose>
									</c:forEach>
								</select>	
								
							
								</div>
							</div>
						</div>
					</div>
						<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Execute User Group</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
								
					
								<select id="executeUserGroupId" name="executeUserGroupId" class="form-control">
									<c:forEach items="${editModelDto.departementList}" var="departementList">
										<c:choose>
											<c:when test="${editModelDto.executeUserGroupId == departementList.key}">
												<option selected="true" value="${departementList.key }">${departementList.value}</option>
											</c:when>
											<c:otherwise>
												<option  value="${departementList.key }">${departementList.value}</option>
											</c:otherwise>
										</c:choose>
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