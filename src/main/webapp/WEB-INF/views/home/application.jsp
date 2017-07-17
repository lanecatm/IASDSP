
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="col-md-3 col-sm-6 ">
	
	<img src="${ applicationImg}" alt="" style="width: 80px; height: 80px;"
		class="img-circle">

	<h3 class="hero-bar-text">${ wikiPage.title}</h3>

	<h5>
		<small class="hero-bar-text">${wikiPage.createdAt}</small>
	</h5>
</div>