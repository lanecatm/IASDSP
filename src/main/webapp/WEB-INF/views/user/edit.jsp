
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
			<h2>Setting</h2>
			<hr />

			<form class="form-horizontal" enctype="multipart/form-data"
				id="uploadUserPicForm" name="uploadUserPicForm"
				action="/sjtu/user/upload" method="post">

				<div class="form-group">
					<div class="col-md-12">
						<label class="">User picture</label> <input name="files"
							id="uploadUserPics" type="file" class="filestyle"
							data-input="true" data-buttonText="Find file">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-9" id="upload_status"></label>
                    <div class="col-md-3">
						<input type="button" value="Upload" name="submit"
							onclick="uploadUserPicFunction()"
							class="btn btn-success btn-block" />
					</div>
				</div>
			</form>
			<hr/>
			<form action="/sjtu/user/update" method="post"
				class="form-horizontal">
				<input type="hidden" name="id" value="${user.id }"/>
				<div class="form-group">
					<label class="col-md-12">Department</label>
					<div class="col-md-12">
						<select id="departmentInformationId"
							name="departmentInformation.id" class="form-control">
							<c:forEach items="${departmentList}" var="department">
								<c:choose>
									<c:when
										test="${user.departmentInformation.id == department.id}">
										<option selected="true" value="${department.id }">${department.name}</option>
									</c:when>
									<c:otherwise>
										<option value="${department.id }">${department.name}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</select>
					</div>
				</div>
<!-- 				<div class="form-group">
					<label class="col-md-12">Password</label>
					<div class="col-md-12">
						<input class="form-control" type="password" name="password" />
					</div>
				</div> -->

				<input type="hidden" name="userPicture.id" id="userPicture_id" />
				<div class="form-group">
					<div class="col-md-3 col-md-offset-9">
						<input type="submit" value="Update"
							class="btn btn-primary btn-block" />
					</div>
				</div>
			</form>

		</div>
	</div>
</div>
<%@ include file="../layouts/footer.jsp"%>
<script>
	function uploadUserPicFunction() {
		var fileElement = document.getElementById("uploadUserPics");

		if (!fileElement.value) {
			console.log("No files selected.")
			return;
		}
		$("#uploadUserPicForm").ajaxForm({
			success : function(data) {
				console.log("Files Uploaded:" + data)
				var jsonData = JSON.parse(data);
				$("#userPicture_id").val(jsonData["message"]);
				$("#upload_status").html("Upload file succ!");
			},
			dataType : "text"
		}).submit();
	}
</script>