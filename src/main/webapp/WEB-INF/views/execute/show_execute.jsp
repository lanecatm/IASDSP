<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<hr />
<form class="form-horizontal" role="form">
	<div class="form-group">
		<div class="col-md-12">
		  <input type="hidden" id="uploadFileId">
		
		  <s:url value="/resources/image/Example1.png" var="workflowImg" />
			<img src="<c:url value="/upload/${workflowVersion.svg }"/>" alt="" style="max-width: 100%; max-height: 100%;">
		</div>
		<div class="col-md-12"> &nbsp;</div>
		<div class="col-md-2 col-md-offset-10">
			<a class="btn btn-primary btn-block" onClick="runAjax(${param.model_version}, ${param.running_case})">Run</a>
		</div>
		     
	</div>

	<div class="row">
		<div class="col-md-12">
		<hr/>
		<h4>Process</h4>
			<div class="progress" id="processBar">
				<div class="progress-bar" role="progressbar" aria-valuenow="0"
					aria-valuemin="0" aria-valuemax="100" style="width: 0%;" ></div>
			</div>
		</div>
		<div class="col-md-9">
			<label id="processStatus"></label>
			<hr />
		</div>
		<div class="col-md-12">
			<h4>Result</h4>
		</div>
		<div class="col-md-12">
			<div class="well" id="processResult"></div>
		</div>
		<div class="col-md-3 col-md-offset-9">
		      <a type="button" class="btn btn-default btn-block" onclick="downloadAjax()"> Download</a>
        </div>
<!-- 		<div class="col-md-2">
		  <a type="button" class="btn btn-default btn-block" onclick="refreshAjax()"> Refresh</a>
        </div> -->
	</div>

</form>


<script>

function downloadAjax() {

    window.location.href = '/sjtu/execute/download/' + $("#processInformationId").val();
}

function runAjax(workflowVersionId, sharedProcessRecordId) {
    var data = {}
    data["workflowVersionId"] = workflowVersionId;
    data["sharedProcessRecordId"] = sharedProcessRecordId;
    data["uploadFileId"] = $("#uploadFileId").val();
    data["nodeInformationList"] = nodeInformationList;

    
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
            $(function(){
            	setInterval(refreshAjax,100);
            }) 
            
        },
        error : function(e) {
            console.log("ERROR: ", e);

        },
        done : function(e) {
            console.log("DONE");
        }
    });
}
var processPercentage = 0;
var receiveMessageNum = 0;
var isReceiveResult = false;
function refreshAjax() {
	if(receiveMessageNum == 6){
        console.log("receive all");
		return;
	}
    var data = {}
    data["processId"] = $("#processInformationId").val();
    data["isReceiveResult"] = isReceiveResult;
    
    $.ajax({
        type : "POST",
        contentType : "application/json",
        url : "./execute/receive",
        data : JSON.stringify(data),
        dataType : 'json',
        timeout : 100000,
        success : function(data) {
            console.log("SUCCESS: ", data);
            if(data["result"] != null){
                $("#processResult").html(data["result"]);
                isReceiveResult = true;
            }
            if(data["processStr"] != null){
                $("#processStatus").html(data["processStr"]);
                processPercentage = processPercentage + 17;
                receiveMessageNum = receiveMessageNum + 1;
                if(receiveMessageNum == 6){
                	processPercentage = 100;
                    $("#processStatus").html("Finished");
                	
                }
                $("#processBar").html('<div class="progress-bar" role="progressbar" ' 
                    + 'aria-valuenow="' + processPercentage + '" aria-valuemin="0" aria-valuemax="100" '
                    + 'style="width: '+ processPercentage + '%;" ></div>');
            }
            
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
