<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<hr />
<form class="form-horizontal" id="saveProcessParamDto" onsubmit="return submitParamAjax()"
    action="/sjtu/execute/save_param" method="POST">
	<%@ include file="node_fields.jsp"%>
    <div class="form-group">
        <div class="col-md-offset-9 col-md-3">
            <input type="submit" value="Submit" name="submit" 
                class="btn btn-success btn-block"/>
        </div>
        <label class="col-md-12" id="upload_status"></label> 
    </div>
</form>
<form class="form-horizontal" enctype="multipart/form-data"
	id="uploadFileForm" name="uploadFileForm" action="execute/upload"
	method="post">

<!--     <div class="form-group">
        <div class="col-md-12">
            <label class="">N</label> 
			<input type="text" class="form-control" id="run_param"/>        
		</div>
    </div> -->
    
    
    
    
    
    
    
	<div class="form-group">
		<div class="col-md-12">
			<label class="">Input file</label> <input name="files"
				id="uploadFiles" type="file" class="filestyle" data-input="true"
				data-buttonText="Find file">
		</div>
	</div>
	<div class="form-group">
		<div class="col-md-offset-9 col-md-3">
			<input type="button" value="Upload" name="submit" onclick="uploadJqueryForm()"
				class="btn btn-success btn-block"/>
		</div>
		<label class="col-md-12" id="upload_status"></label> 
	</div>
</form>

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
			    $("#upload_status").html("Upload succ!");
			},
			dataType : "text"
		}).submit();
	}


	function submitParamAjax() {
            $.ajax({
                type:'POST',
                url:'/sjtu/execute/save_param',
                data:$('#saveProcessParamDto').serialize(),
                success:function(data){
                    alert(data);
                },
                error:function()
                {
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
