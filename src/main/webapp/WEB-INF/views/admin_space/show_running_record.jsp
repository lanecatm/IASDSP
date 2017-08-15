<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="col-md-offset-1 col-md-11">
	<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>Author</th>
			<th>CreatedAt</th>
			<th>Star</th>
		</tr>


		<c:forEach items="${processInformationList}" var="processInformation" varStatus="status">
			<tr>
				<td>${processInformation.id}</td>
				
				<td>${processInformation.user.userName}</td>
				<td>${processInformation.createdAt}</td>

				<td>${processInformation.processStar.rate }</td>
			</tr>
		</c:forEach>

	</table>

</div>


