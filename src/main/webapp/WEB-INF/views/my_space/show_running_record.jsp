<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="col-md-offset-1 col-md-11">
	<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>Model</th>
			<th>Version</th>
			<th>Author</th>
			<th>CreatedAt</th>
		</tr>


		<c:forEach items="${processInformationList}" var="processInformation" varStatus="status">
			<tr>
				<td>${processInformation.id}</td>
				
				<td>${processInformation.workflowVersion.workflowInformation.name}</td>
				<td>${processInformation.workflowVersion.versionName}</td>
				<td>${processInformation.user.userName}</td>
				<td>${processInformation.createdAt}</td>

			</tr>
		</c:forEach>

	</table>

</div>


