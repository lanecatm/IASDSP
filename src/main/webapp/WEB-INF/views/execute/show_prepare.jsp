<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<hr />
<form class="form-horizontal" enctype="multipart/form-data"
	id="uploadFileForm" name="uploadFileForm" action="execute/upload"
	method="post">

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
				class="btn btn-success btn-block">
		</div>
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
			},
			dataType : "text"
		}).submit();
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
