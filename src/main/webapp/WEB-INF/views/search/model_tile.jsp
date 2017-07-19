
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="col-md-4 col-sm-6 hero-feature">
	<div class="thumbnail "
		style="background-color: #f8f8f8; border: #f8f8f8;">
		<a class="hero-a" href="<c:url value="../model/${workflowInformation.id}/show"/>">
		<img src="${workflowImg }" alt="">
		</a>
		<div class="caption">
			<div class="hero-content">
				<h4>
				<a class="hero-a" href="<c:url value="../model/${workflowInformation.id}/show"/>"> ${workflowInformation.name} </a>
				</h4>
				<h5>
					<small>${workflowInformation.createdAt}</small>
				</h5>
				<p>${workflowInformation.introduction}&nbsp;</p>
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
