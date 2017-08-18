<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>
<!-- Header -->
<div class="intro-header">
	<div class="container">

		<div class="row">
			<div class="col-lg-12">
				<div class="intro-message">

					<s:url value="/resources/image/LOGO_2_w.png" var="logoLarge" />
					<img src="${logoLarge}" class="center-block" alt="image"
						style="width: 450px; height: 125px;">
					<h3>Intelligent Analytic Service Development and Sharing
						Platform</h3>
					<div class="row">
						<div class="col-lg-offset-3 col-lg-6">
							<hr />

							<sf:form method="post" modelAttribute="searchDto"
								cssClass="form-inline" action="search/all">
								<sf:select path="searchFor" cssClass="form-control"
									cssStyle="width: 20%">
									<sf:option value="Application" label="Application"
										cssClass="form-control" />
									<sf:option value="Model" label="Model" cssClass="form-control" />
								</sf:select>
								<div class="input-group" style="width: 79%">
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
				</div>
			</div>
		</div>

	</div>
	<!-- /.container -->

</div>
<!-- /.intro-header -->

<!-- Page Content -->


<%-- <div class="content-section-b">
	<div class="container">
		<br />
		<!-- Title -->
		<div class="row">
			<div class="col-lg-12 text-center">
				<h1 class="section-heading">Most popular models</h1>
			</div>
		</div>
		<!-- /.row -->

		<!-- Page Features -->
		<div class="row">
			<c:forEach items="${showHomePageDto.popularWorkflowInformationList}"
				var="workflowInformation" varStatus="status">
				<s:url value="/resources/image/user.jpg" var="userImg" />
				<%@ include file="model.jsp"%>
			</c:forEach>
		</div>
		<!-- /.row -->
	</div>
</div>

<div class="hero-bar-blue">
	<div class="container">
		<br />
		<!-- Title -->
		<div class="row ">
			<div class="col-lg-12 text-center">
				<h1 class="section-heading hero-bar-text">Most popular
					applications</h1>
			</div>
		</div>
		<br />
		<!-- Page Features -->
		<div class="row text-center">
			<c:forEach items="${showHomePageDto.popularWikiPageList}"
				var="wikiPage" varStatus="status">
				<s:url
					value="${wikiPage.imgUrl}"
					var="applicationImg" />
				<%@ include file="application.jsp"%>
			</c:forEach>
		</div>
		<!-- /.row -->
		<br /> <br />
	</div>
</div>
 --%>


<div class="content-section-b">
	<div class="container">
		<br />
		<!-- Title -->
		<div class="row">
			<div class="col-lg-12 text-center">
				<h1 class="section-heading">Latest models</h1>
			</div>
		</div>
		<!-- /.row -->

		<!-- Page Features -->
		<div class="row">
			<c:forEach items="${showHomePageDto.latestWorkflowInformationList}"
				var="workflowInformation" varStatus="status">
                <%@ include file="model.jsp"%>
			</c:forEach>
		</div>
		<!-- /.row -->
	</div>
</div>
<div class="hero-bar-black">
	<div class="container">
		<br />
		<!-- Title -->
		<div class="row ">
			<div class="col-lg-12 text-center">
				<h1 class="section-heading hero-bar-text">Latest applications</h1>
			</div>
		</div>
		<br />
		<!-- /.row -->

		<!-- Page Features -->
		<div class="row text-center">
			<c:forEach items="${showHomePageDto.latestWikiPageList}"
				var="wikiPage" varStatus="status">
				<s:url
					value="${wikiPage.imgUrl}"
					var="applicationImg" />
				<%@ include file="application.jsp"%>
			</c:forEach>
		</div>
		<!-- /.row -->
		<br /> <br />
	</div>
</div>


<div class="content-section-a">

	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-sm-6">
				<hr class="section-heading-spacer">
				<div class="clearfix"></div>
				<h2 class="section-heading">What is the platform?</h2>
				<p class="lead">This is a platform to help you analysis the data
					set, and share your model to your partner.</p>


				<a class="btn btn-default" href="#" role="button">Start
					now >></a>
			</div>
			<div class="col-lg-5 col-lg-offset-2 col-sm-6">
				<s:url value="/resources/image/Workflow.jpg" var="workflowImg" />
				<img class="img-responsive" src="${workflowImg}" alt="">
			</div>
		</div>

	</div>
	<!-- /.container -->

</div>
<!-- /.content-section-a -->

<div class="content-section-b">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
				<hr class="section-heading-spacer">
				<div class="clearfix"></div>
				<h2 class="section-heading">Turtorial</h2>
				<p class="lead">Here you can learn how to use the platform.</p>
				<a class="btn btn-default" href="#" role="button">Learn
					More >></a>
			</div>
			<div class="col-lg-5 col-sm-pull-6  col-sm-6">
				<s:url
					value="/resources/image/business-man-writing-data-analysis.jpg"
					var="businessImg" />
				<img class="img-responsive" src="${businessImg}" alt="">
			</div>
		</div>

	</div>
	<!-- /.container -->

</div>
<!-- /.content-section-b -->

<%@ include file="../layouts/footer.jsp"%>


