
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="col-md-3 col-sm-6 hero-feature">
	<div class="thumbnail "
		style="background-color: #f8f8f8; border: #f8f8f8;">
		<img src="${workflowImg }" alt="">
		<div class="caption">
			<div class="hero-content">
				<h4>${workflowInformation.name} </h4>
				<h5>
					<small>${workflowInformation.createdAt}</small>
				</h5>
				<p >${workflowInformation.introduction} &nbsp;</p>
			</div>
			<p>
				<img src="${userImg}" alt="" style="width: 40px; height: 40px;"
					class="img-circle"> &nbsp; &nbsp;By Admin
			</p>

		</div>
	</div>
</div>
