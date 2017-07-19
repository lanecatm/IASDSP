<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>


<br />
<br />

<!-- 表单 -->
<div class="container">
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<div class="row">
				<h2>Create a new model</h2>
				<h4>
					<small> A model include basic information and workflow
						diagrom. </small>
				</h4>
				<hr/>
				<sf:form method="POST" modelAttribute="createDto"
					cssClass="form-horizontal">
					<div class="form-group">
						<label class="col-md-12 ">Model name</label>
						<div class="col-md-12">
							<sf:input path="name" cssClass="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-12 ">Model introduction <small
							class="text-muted">(optional)</small></label>
						<div class="col-md-12">
							<sf:textarea path="introduction" cssClass="form-control"/>
						</div>
					</div>
					<hr />
					<div class="form-group">
						<div class="col-md-12"></div>
						<div class="col-md-12">
							<input class="btn btn-primary btn-block" type="submit"
								value="Create" />
						</div>
					</div>
				</sf:form>

			</div>
		</div>
	</div>
</div>
<!-- /container -->




<%@ include file="../layouts/footer.jsp"%>