<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<hr />
<form class="form-horizontal" role="form">
	<div class="form-group">
		<div class="col-md-12">
		
		  <s:url value="/resources/image/Example1.png" var="workflowImg" />
			<img src="${workflowImg }" alt="" style="max-width: 100%; max-height: 100%;">
		</div>
		<div class="col-md-2 col-md-offset-10">
			<a class="btn btn-primary btn-block" onClick="runAjax(${param.model_version}, ${param.running_case})">Run</a>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12">
		<hr/>
		<h4>Process</h4>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="60"
					aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div>
			</div>
		</div>
		<div class="col-md-9">
			<label> Now running </label>
			<hr />
		</div>
		<div class="col-md-12">
			<h4>Result</h4>
		</div>
		<div class="col-md-12">
			<div class="well"></div>
		</div>
	</div>

</form>


<script>
function runAjax(workflowVersionId, sharedProcessRecordId) {
    var data = {}
    data["workflowVersionId"] = workflowVersionId;
    data["sharedProcessRecordId"] = sharedProcessRecordId;
    
    $.ajax({
        type : "POST",
        contentType : "application/json",
        url : "./execute/run",
        data : JSON.stringify(data),
        dataType : 'json',
        timeout : 100000,
        success : function(data) {
            console.log("SUCCESS: ", data);
            $("#processInformationId").val(data["processInformationId"]);
            $("#other").css("display", "block");
            
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