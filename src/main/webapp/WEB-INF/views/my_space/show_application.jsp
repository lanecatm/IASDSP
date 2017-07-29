<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="col-md-offset-1 col-md-11">
	<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>Application name</th>
			<th>Author</th>
			<th>CreatedAt</th>
			<th>Action</th>
		</tr>


		<c:forEach items="${wikiPageList}" var="wikiPage" varStatus="status">
			<tr>
				<td>${wikiPage.id}</td>
				<td>
				    <a href="<c:url value="/application/${wikiPage.path}/show"/>">
						${wikiPage.title} 
					</a>
				</td>
				<td>${wikiPage.userByCreatorId.userName}</td>
				<td>${wikiPage.createdAt}</td>

				<td><a class="btn btn-sm btn-danger"
					href="<c:url value="/application/${wikiPage.path}/delete?back_path=my_space"/>">
						Delete </a></td>
			</tr>
		</c:forEach>

	</table>

</div>


