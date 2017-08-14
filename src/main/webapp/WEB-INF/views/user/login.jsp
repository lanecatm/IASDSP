
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../layouts/application.jsp"%>
<br />
<br />
<div class="container">
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<h2>Login</h2>
			<hr />
			<form action="/sjtu/user/login" method="post" class="form-horizontal">
				<div class="form-group">
					<label class="col-md-12">Username</label>
					<div class="col-md-12">
						<input type="text" class="form-control" name="userName" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-12">Password</label>
					<div class="col-md-12">
						<input class="form-control" type="password" name="password" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-2 col-md-offset-10">
						<input type="submit" value="Sign in"
							class="btn btn-primary btn-block" />
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<%@ include file="../layouts/footer.jsp"%>