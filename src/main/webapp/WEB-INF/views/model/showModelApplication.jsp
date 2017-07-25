<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<c:set var="i" value="1" />
<c:forEach items="${showModelDto.wikiPages}" var="wikiPage">
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4>${wikiPage.title}</h4>
			</div>
			<div class="panel-body">
				<table class="table table-bordered">
				<tr>
					<th>Shared running case</th>
					<th>Model version</th>
					<th>Author</th>
					<th>Create time</th>
				</tr>
				<c:forEach items="${showModelDto.sharedProcessRecordMap[wikiPage.id]}" 
				    var="sharedProcessRecord">
				    <tr>
				    <td>${sharedProcessRecord.name}</td>
				    <td>${sharedProcessRecord.workflowVersion.versionName}
				    </td>
				    <td>${sharedProcessRecord.author.userName}</td>
				    <td>${sharedProcessRecord.createdAt}</td>
				    </tr>
				</c:forEach>
				</table>
			</div>
		</div>
	</div>

</c:forEach>

