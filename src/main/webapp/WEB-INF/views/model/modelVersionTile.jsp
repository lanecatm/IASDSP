
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="col-md-6 col-sm-12 hero-feature">
	<div class="thumbnail "
		style="background-color: #f8f8f8; border: #f8f8f8;">
		<a class="hero-a" href="<c:url value="#"/>"> <img
			src="${workflowImg }" alt="">
		</a>
		<div class="caption">
			<div class="hero-content">
				<h4>
					<span class="badge"> <c:if
							test="${workflowVersion.status == 0}">Editing</c:if> <c:if
							test="${workflowVersion.status == 1}">Published</c:if>
					</span> <a class="hero-a" href="<c:url value="#"/>">
						${workflowVersion.versionName} </a>
				</h4>
				<h5>
					<small>${workflowVersion.createdAt}</small>
				</h5>
				<p>${workflowVersion.versionDescription}&nbsp;</p>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<div class="btn-group btn-group-justified  btn-group-sm"
						role="group" aria-label="...">
						<a type="button"
							class="btn btn-success btn-sm" href="<c:url value=""/>"> Execute
						</a> 
						<a type="button" class="btn btn-info btn-sm"
							href="<c:url value="./edit"/>"> Edit </a>
						<!-- TODO change delete method -->
						<a type="button" class="btn btn-danger btn-sm"
							href="<c:url value="./delete"/>"> Delete </a>
					</div>
				</div>
			</div>
			
			
			<h5>
				<img src="${userImg}" alt="" style="width: 30px; height: 30px;"
					class="img-circle"> <small> &nbsp;By Admin &nbsp; <span
					class="glyphicon glyphicon-star"></span>4.6 <span
					class="glyphicon glyphicon-play"></span>150 times
				</small>
			</h5>
		</div>
	</div>
</div>
