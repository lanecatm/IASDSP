<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<hr />
<div class="row">
	<div class="col-md-12">
		<h4>Create a new version</h4>
	</div>
</div>

<sf:form method="POST" modelAttribute="editModelDto" role="form"
	action="version/create" cssClass="form-horizontal">
	<div class="form-group">
		<label class="col-md-12 ">Version name</label>
		<div class="col-md-12">
			<sf:input path="versionName" cssClass="form-control" />
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-12">Version Description <small
			class="text-muted">(optional)</small>
		</label>
		<div class="col-md-12">
			<sf:textarea path="versionDescription" cssClass="form-control" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-md-offset-9 col-md-3">
			<input class="btn btn-primary btn-block" type="submit" value="Create" />
		</div>
	</div>
	<hr />
</sf:form>



<div class="row">
	<div class="col-md-12">
		<h4>Existing version</h4>
	</div>
	<c:forEach items="${editModelDto.workflowVersions}"
		var="workflowVersion" varStatus="status">
		<s:url value="/resources/image/user.jpg" var="userImg" />
		<s:url value="/resources/image/Example1.png" var="workflowImg" />
		<%@ include file="modelVersionTile.jsp"%>
	</c:forEach>
</div>
<div class="form-group">
	<div class="col-md-offset-9 col-md-3">
	   <a class="btn btn-default btn-block" href="<c:url value="/model/${editModelDto.workflowInformationId}/show"/>"> Go to Model </a>
	</div>
</div>
<script>
function publishVersion(versionId) {
    var data = {}
    
    $.ajax({
        type : "POST",
        contentType : "application/json",
        url : "./version/" + versionId + "/publish",
        data : JSON.stringify(data),
        dataType : 'json',
        timeout : 100000,
        success : function(data) {
            console.log("SUCCESS: ", data);
            window.location = "./edit?active_page=diagram";
        },
        error : function(e) {
            console.log("ERROR: ", e);

        },
        done : function(e) {
            console.log("DONE");
        }
    });
}
</script>