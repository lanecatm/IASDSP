<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<c:set var="i" value="1" />
<c:forEach items="${showModelDto.wikiPages}" var="wikiPage">
	<div class="col-md-12">
		<!-- <div class="panel panel-default">
			<div class="panel-heading"> -->
				<h4>${wikiPage.title}</h4>
<!-- 			</div>
			<div class="panel-body"> -->
				<table class="table table-bordered">
				<tr>
<!-- 					<th>Id</th>
 -->					<th>Name</th>
					<th>Model version</th>
					<th>Share group</th>
					<th>Share input file</th>
					<th><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
					</th>
					<th><span class="glyphicon glyphicon-play" aria-hidden="true"></span>
					</th>
					<th>Action</th>
				</tr>
				<c:forEach items="${showModelDto.sharedProcessRecordMap[wikiPage.id]}" 
				    var="sharedProcessRecord">
				    <tr>
<%-- 						<td>${sharedProcessRecord.id}</td>
 --%>						<td>${sharedProcessRecord.name}</td>
						<td>${sharedProcessRecord.workflowVersion.versionName}</td>
						<td>${sharedProcessRecord.executeDepartment.name}</td>
						<td>${sharedProcessRecord.isSharedSampleInput}</td>
						<td>
						   <c:if test="${sharedProcessRecord.starUserNumber!=0}">
							<fmt:formatNumber maxFractionDigits="1" value="${sharedProcessRecord.allStar/sharedProcessRecord.starUserNumber}" /> 
						   </c:if>
						</td>
						<td>
							${sharedProcessRecord.runningTime}
						</td>
						<td>
						   <a class="btn btn-sm btn-success" 
							   href="<c:url value="/execute?running_case=${sharedProcessRecord.id}"/>" >
								Execute 
						   </a>
						   <a class="btn btn-sm btn-danger" 
							   href="<c:url value="/execute/running_case/${sharedProcessRecord.id}/delete?model=${showModelDto.workflowInformationId}"/>"> 
							   Delete </a>
						</td>
					</tr>
				</c:forEach>
				</table>
			<!-- </div>
		</div> -->
	</div>

</c:forEach>

