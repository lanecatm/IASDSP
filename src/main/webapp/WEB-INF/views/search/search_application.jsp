<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="../layouts/application.jsp"%>


<br />
<br />
<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<div class="row">
				<h1 class="text-center">Analysis Applications</h1>
			</div>
			<hr />
			<sf:form method="post" modelAttribute="searchDto" action="application"
				cssClass="form-horizontal">

				<div class="input-group">
					<sf:input path="searchContent" cssClass="form-control" />
					<div class="input-group-btn">
						<input class="btn btn-primary btn-block" type="submit"
							value="Submit" />
					</div>
					<!-- /btn-group -->
				</div>
			</sf:form>
		</div>
	</div>

	<div class="row">
		<div class="col-md-offset-1 col-md-10">
			<hr />
			<div class="row">
				<div class="col-md-9">
					<h3>
						We have found ${fn:length(searchApplicationResultDto.wikiPageList)} results
					</h3>
				</div>
				<div class="col-md-3">
					<br />
					<div class="dropdown">
						<button id="sortBtn" class="btn btn-default btn-block dropdown-toggle"
							type="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							Sort: Best match <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="sortBtn">
							<li><a>Highest score</a></li>
							<li><a>Lowest score</a></li>
							<li><a>Most user</a></li>
							<li><a>Fewest user</a></li>
							<li><a>Recently update</a></li>
							<li><a>Least recently update</a></li>
						</ul>
					</div>
				</div>
			</div>
			<hr/>
			<div class="row">
				<c:forEach items="${searchApplicationResultDto.wikiPageList}"
					var="wikiPage" varStatus="status">
					<s:url value="${wikiPage.imgUrl }" var="applicationImg" />
					<%@ include file="application_tile.jsp"%>
				</c:forEach>
			</div>
		</div>
	</div>

</div>

<%@ include file="../layouts/footer.jsp"%>