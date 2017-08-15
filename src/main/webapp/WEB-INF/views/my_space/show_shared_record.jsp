<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="col-md-offset-1 col-md-11">
	<table class="table table-bordered">
		<tr>
			<!--                                 <th>Id</th>
 -->
			<th>Name</th>
			<th>Model</th>
			<th>Model version</th>
			<th>Share group</th>
			<th>Share input file</th>
			<th><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
			</th>
			<th><span class="glyphicon glyphicon-play" aria-hidden="true"></span>
			</th>
		</tr>

		<c:forEach items="${sharedRuningRecordList}" var="shareRecord"
			varStatus="status">
			<tr>
				<td>${shareRecord.name}</td>
				<td>${shareRecord.workflowVersion.workflowInformation.name}</td>
				<td>${shareRecord.workflowVersion.versionName}</td>
				<td>${shareRecord.executeDepartment.name}</td>
				<td>${shareRecord.isSharedSampleInput}</td>
				<td>
				    <c:if test="${shareRecord.starUserNumber!=0}">
						<fmt:formatNumber maxFractionDigits="1"
							value="${shareRecord.allStar/shareRecord.starUserNumber}" />
					</c:if>
				</td>
				<td>${shareRecord.runningTime}</td>
				
			</tr>

		</c:forEach>
	</table>

</div>


