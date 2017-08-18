<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<hr />
<img src="<c:url value="/upload/${workflowVersion.svg }"/>" alt=""
	style="max-width: 100%; max-height: 100%;">

<br />
<hr />

<div class="panel panel-default">
	<div class="panel-heading" role="tab">Start</div>
	<div class="panel-body">
		<form class="form-horizontal">
			<c:if test="${sharedProcessRecord.isSharedSampleInput}">
				<div class="form-group">
					<div class="col-md-12">
						<div class="checkbox">
							<label> 
							<input type="checkbox" name="useOriginInput" id="useOriginInput"/>
								Use shared input file 
								<s:url value="${sharedProcessRecord.processInformation.uploadFile.relativePath}" var="originFileUrl" />
								
								<a href="${originFileUrl}"> 
								    Download
								</a>
							</label>
						</div>
					</div>

				</div>
			</c:if>
		</form>
		<form class="form-horizontal" enctype="multipart/form-data"
			id="uploadFileForm" name="uploadFileForm"
			action="/sjtu/execute/upload" method="post">

			<div class="form-group">
				<div class="col-md-12">
					<label class="">Input file</label> <input name="files"
						id="uploadFiles" type="file" class="filestyle" data-input="true"
						data-buttonText="Find file">
				</div>
			</div>
			<!-- 	<div class="form-group">
				<div class="col-md-offset-9 col-md-3">
					<input type="button" value="Upload" name="submit" onclick="uploadJqueryForm()"
						class="btn btn-success btn-block"/>
				</div>
				<label class="col-md-12" id="upload_status"></label> 
			</div> -->
		</form>
	</div>
</div>

<form class="form-horizontal" id="saveProcessParamDto"
	onsubmit="return submitParamAjax()" action="/sjtu/execute/save_param"
	method="POST">
	<c:if test="${!fromShared}">
		<%@ include file="node_fields.jsp"%>
	</c:if>
	<c:if test="${fromShared}">
		<%@ include file="shared_node_fields.jsp"%>
	</c:if>
	<div class="form-group">
		<div class="col-md-offset-9 col-md-3">
			<input type="submit" value="Submit" name="submit"
				class="btn btn-success btn-block" />
		</div>
		<label class="col-md-12" id="upload_status"></label>
	</div>
</form>
<script type="text/javascript">
	$(function() {
		$("#useOriginInput").click(function() {
				if ($("#useOriginInput").is(':checked') == true) {
					$("#uploadFileForm").css("display", "none");
				} else {
					$("#uploadFileForm").css("display", "block");
				}
		});
	});
</script>
<c:if test="${ sharedProcessRecord != null}">
<script>


function copyOriginFile() {
    var data = {}
    
    data["sharedProcessRecordId"] = ${sharedProcessRecord.id};
    
    $.ajax({
        type : "POST",
        contentType : "application/json",
        url : "./execute/copy_origin_file",
        data : JSON.stringify(data),
        dataType : 'json',
        timeout : 100000,
        success : function(data) {
            console.log("SUCCESS: ", data);
            $("#uploadFileId").val(data["message"]);
            $("#upload_status").html("Upload file succ!");
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
</c:if>
<script>

	function uploadJqueryForm() {
		var fileElement = document.getElementById("uploadFiles");

		if (!fileElement.value) {
			console.log("No files selected.")
			return;
		}
		$("#uploadFileForm").ajaxForm({
			success : function(data) {
				console.log("Files Uploaded:" + data)
				var jsonData = JSON.parse(data);
				$("#uploadFileId").val(jsonData["message"]);
				$("#upload_status").html("Upload file succ!");
			},
			dataType : "text"
		}).submit();
	}

	var nodeInformationList;

	function submitParamAjax() {
		$.ajax({
			type : 'POST',
			url : '/sjtu/execute/save_param',
			data : $('#saveProcessParamDto').serialize(),
			success : function(data) {
				console.log(data);
				nodeInformationList = data;
				$("#upload_status").html("Upload param succ!");
				if ($("#useOriginInput").is(':checked') == false) {
				    uploadJqueryForm();
				}
				else{
					copyOriginFile();
				}

			},
			error : function() {
				alert("error");

			}
		});
		return false;

	}
	/* 	function getXMLHTTP() {
	 var x = false;
	 try {
	 x = new XMLHttpRequest();
	 } catch (e) {
	 try {
	 x = new ActiveXObject("Microsoft.XMLHTTP");
	 } catch (ex) {
	 try {
	 req = new ActiveXObject("Msxml2.XMLHTTP");
	 } catch (e1) {
	 x = false;
	 }
	 }
	 }
	 return x;
	 }

	 function submitForm() {
	 var fileElement = document.getElementById("uploadFiles");

	 if (!fileElement.value) {
	 console.log("No files selected.")
	 return;
	 }
	 var form = document.getElementById("uploadFileForm");
	 var formData = new FormData(form);
	 var xhr = getXMLHTTP();
	 xhr.open('POST', "execute/upload");
	 xhr.onreadystatechange = function() {
	 if (xhr.readyState == 4 && xhr.status == 200) {
	 console.log("Files Uploaded")

	 }
	 }
	 xhr.send(formData);
	 return false;
	 } */
</script>
