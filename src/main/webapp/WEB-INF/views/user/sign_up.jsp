
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
			<h2>Sign up</h2>
			<hr />
			<form action="/sjtu/user/sign_up" method="post"
				class="form-horizontal">
				<div class="form-group">
					<label class="col-md-12">Department</label>
					<div class="col-md-12">
						<select id="departmentInformationId"
							name="departmentInformation.id" class="form-control">
							<c:forEach items="${departmentList}" var="department">
								<c:choose>
									<c:when
										test="${user.departmentInformation.id == department.id}">
										<option selected="true" value="${department.id }">
										<c:if test="${department.name=='All'}">
											Admin
										</c:if>
										<c:if test="${department.name!='All'}">
											${department.name}
										</c:if>
										</option>
									</c:when>
									<c:otherwise>
										<option value="${department.id }">
                                        <c:if test="${department.name=='All'}">
                                            Admin
                                        </c:if>
                                        <c:if test="${department.name!='All'}">
                                            ${department.name}
                                        </c:if>
                                        </option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-12">Email</label>
					<div class="col-md-12">
						<input type="text" class="form-control" name="email" />
						<sf:errors path="email"/> 
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-12">Username</label>
					<div class="col-md-12">
						<input type="text" class="form-control" name="userName" />
						<sf:errors path="userName"/> 
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-12">Password</label>
					<div class="col-md-12">
						<input class="form-control" type="password" name="password" />
					</div>
				</div>

				<input type="hidden" name="userPicture.id" id="userPicture_id" />
				<div class="form-group">
					<div class="col-md-3 col-md-offset-9">
						<input type="submit" value="Sign up"
							class="btn btn-primary btn-block" />
					</div>
				</div>
			</form>

		</div>
	</div>
</div>
<%@ include file="../layouts/footer.jsp"%>
