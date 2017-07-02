<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>
<!-- Header -->
<a name="about"></a>
<div class="intro-header">
	<div class="container">

		<div class="row">
			<div class="col-lg-12">
				<div class="intro-message">
					<img src="./assets/LOGO_2_w.png" class="center-block" alt="image"
						style="width: 450px; height: 125px;">
					<h3>Intelligent Analytic Service Development and Sharing
						Platform</h3>
					<div class="row">
						<div class="col-lg-offset-3 col-lg-6">
							<hr />


							
							<sf:form  method="POST" modelAttribute="searchDto" cssClass="form-inline" >
								<sf:select path="searchFor" cssClass="form-control" cssStyle="width: 20%">
								<sf:option value="0" label="application"  cssClass="form-control"/>
								<sf:option value="1" label="model"  cssClass="form-control"/>
								</sf:select>
								<div class="input-group" style="width: 79%">
									<sf:input path="searchContent" cssClass="form-control"/>
								
									<div class="input-group-btn">
										<input class="btn btn-primary btn-block" type="submit" value="Submit" />
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

<a name="services"></a>
<div class="content-section-a">

	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-sm-6">
				<hr class="section-heading-spacer">
				<div class="clearfix"></div>
				<h2 class="section-heading">What is the platform?</h2>
				<p class="lead">This is a platform to help you analysis the data
					set, and share your model to your partner.</p>
				<a class="btn btn-default" href="./Example1.htm" role="button">Start
					now »</a>
			</div>
			<div class="col-lg-5 col-lg-offset-2 col-sm-6">
				<img class="img-responsive" src="/assets/Workflow.jpg" alt="">
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
				<a class="btn btn-default" href="./Example1.htm" role="button">Learn
					More »</a>
			</div>
			<div class="col-lg-5 col-sm-pull-6  col-sm-6">
				<img class="img-responsive"
					src="assets/business-man-writing-data-analysis.jpg" alt="">
			</div>
		</div>

	</div>
	<!-- /.container -->

</div>
<!-- /.content-section-b -->

<%@ include file="../layouts/footer.jsp"%>


