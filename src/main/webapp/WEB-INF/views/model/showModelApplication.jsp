<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


			<c:set var="i" value="1" />
			<c:forEach items="${showModelDto.application}"
				var="reference">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
						<h4>Application [${i}]</h4>
						</div>
						<div class="panel-body">
							<c:out value="${reference.key}" />
						</div>
					</div>
				</div>
		<c:set var="i" value="${i} + 1" />
		</c:forEach>
	
