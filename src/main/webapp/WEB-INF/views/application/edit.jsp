<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../layouts/application.jsp"%>


<br />
<br />
<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<div class="row">
				<h1>Edit ${editApplicationDto.getTitle()}</h1>
			</div>

			<div class="row">
				<hr />
				
				
				<form class="form-horizontal" enctype="multipart/form-data"
                id="uploadApplicationPicForm" name="uploadApplicationPicForm"
                action="/sjtu/application/upload" method="post">	
				<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Image</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
									<input name="files" id="uploadApplicationPics" type="file"
										class="filestyle" data-input="true"
										data-buttonText="Find file" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-9" id="upload_application_pic_status"></label>
								<div class="col-md-3">
									<input type="button" value="Upload" name="submit"
										onclick="uploadApplicationPicFunction()"
										class="btn btn-success btn-block" />
								</div>
							</div>
						</div>
					</div>
				</form>
				<sf:form method="post" modelAttribute="editApplicationDto"
					cssClass="form-horizontal" role="form" action="update">
					<sf:hidden path="wikiPageId" />
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Introduction</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
									<sf:textarea path="introduction" cssClass="form-control"
										rows="20" />
								</div>
							</div>
						</div>
					</div>


					


					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Reference</h4>
						</div>
						<div class="panel-body">
							<div id="reference_fields">
								<c:forEach items="${editApplicationDto.referenceList}"
									var="reference" varStatus="status">

									<div class="removeclass${status.index}">
										<div class="form-group">
											<label class="col-md-2 control-label">[${status.index + 1}]</label>
											<div class="col-md-4">
												<sf:hidden path="referenceList[${status.index}].id"
													value="${reference.id}" />
												<sf:input path="referenceList[${status.index}].content"
													value="${reference.content}" cssClass="form-control"
													placeholder="Content" />

											</div>
											<div class="col-md-4">
												<sf:input path="referenceList[${status.index}].url"
													value="${reference.url}" cssClass="form-control"
													placeholder="Url" />
											</div>
											<div class="col-md-2">
												<button class="btn btn-danger" type="button"
													onclick="remove_reference_fields(${status.index});">
													&nbsp;<span class="glyphicon glyphicon-minus"
														aria-hidden="true"></span>&nbsp;
												</button>
											</div>
										</div>
										<!-- form-group -->
									</div>
									<!-- removeclass -->
								</c:forEach>
								<!-- removeclass -->

							</div>
							<!-- reference_fields -->
							<div class="form-group">
								<div class="col-md-offset-2 col-md-8">
									<button class="btn btn-success btn-block" type="button"
										onclick="reference_fields();">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
										Add a new reference
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Related application</h4>
						</div>
						<div class="panel-body">
							<div id="wiki_page_tags">
								<c:forEach items="${editApplicationDto.relatedWikiPageList}"
									var="relatedPage" varStatus="status">
									<div class="form-group tag${status.index}">
										<label class="col-md-2 control-label">[${status.index + 1}]</label>
										<div class="col-md-8">
											<sf:hidden path="relatedWikiPageList[${status.index}].id"
												value="${relatedPage.id}" />
											<a class="btn btn-default btn-block ">${relatedPage.title}</a>
										</div>
										<div class="col-md-2">
											<button class="btn btn-danger" type="button"
												onclick="remove_wiki_page_tags(${status.index});">
												&nbsp;<span class="glyphicon glyphicon-minus"
													aria-hidden="true"></span>&nbsp;
											</button>
										</div>
									</div>
								</c:forEach>
							</div>

							<!-- wiki_page_tags -->
							<div class="form-group">
								<div class="col-md-offset-2 col-md-8">
									<select id="select_wiki_page" class="form-control">
										<c:forEach items="${editApplicationDto.allWikiPageList}"
											var="wikiPage" varStatus="status">
											<option class="form-control" value="${wikiPage.key}">${wikiPage.value}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-md-2">
									<button class="btn btn-success" type="button"
										onclick="add_wiki_page();">
										&nbsp;<span class="glyphicon glyphicon-plus"
											aria-hidden="true"></span>&nbsp;
									</button>
								</div>
							</div>
							<!-- form-group -->
						</div>
						<!-- panel-body -->
					</div>
					<!-- panel -->
					<hr />

					<div class="form-group">
						<div class="col-md-offset-6 col-md-3">
							<input type="submit" name="cancel" value="Cancel"
								class="btn btn-default btn-block" />
						</div>
						<div class="col-md-3">
							<input type="submit" name="save"
								class="btn btn-primary btn-block" value="Save page" />
						</div>
					</div>

					<sf:hidden path="imgUrl" />
				</sf:form>
				
				
			
			</div>
		</div>
	</div>
</div>

<c:set var="listSize"
	value="${fn:length(editApplicationDto.referenceList)}"></c:set>
<p id="listSize" style="display: none">${listSize}</p>
<c:set var="tagSize"
	value="${fn:length(editApplicationDto.relatedWikiPageList)}"></c:set>
<p id="tagSize" style="display: none">${tagSize}</p>
<%@ include file="../layouts/footer.jsp"%>

<script>

 	var room = document.getElementById('listSize').innerHTML - 1;
 	var wiki_page_num = document.getElementById('tagSize').innerHTML - 1;
	function reference_fields() {

		room++;
		var objTo = document.getElementById('reference_fields')
		var divtest = document.createElement("div");
		divtest.setAttribute("class", "removeclass" + room);
		var rdiv = 'removeclass' + room;
		divtest.innerHTML = '	<div class="form-group">'
				+ '         <label class="col-md-2 control-label">[' + (room+1) + ']</label>'
				+ '	        <div class="col-md-4">'
				+ '             <input type="hidden" id="referenceList' + room + '.id" name="referenceList[' + room + '].id" value="-1">'
				+ '             <input type="text" class="form-control" id="referenceList' + room + '.content"'
	            + '                name="referenceList[' + room + '].content" value="" placeholder="Content"/>'
				+ '         </div>'
				+ '	        <div class="col-md-4">'
                + '             <input type="text" class="form-control" id="referenceList' + room + '.url"'
                + '                name="referenceList[' + room + '].url" value="" placeholder="Url"/>'
				+ '	        </div>'
				+ '	        <div class="col-md-2">'
				+ '             <button class="btn btn-danger" type="button" onclick="remove_reference_fields('+ room +');">'
				+ '                 &nbsp;<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>&nbsp;'
				+ '             </button>'
				+ '         </div>' 
				+ '    </div>'
				+ '    ';


		objTo.appendChild(divtest)
	}
	function remove_reference_fields(rid) {
		$('.removeclass' + rid).remove();
	} 
	function add_wiki_page(){
		wiki_page_num++;
		var selectWikiPageObj = document.getElementById("select_wiki_page");
		var addTo = document.getElementById("wiki_page_tags");
		
		var divAdd = document.createElement("div");
		divAdd.setAttribute("class", "form-group tag" + wiki_page_num);
		for(i=0;i<selectWikiPageObj.length;i++){
			   if(selectWikiPageObj[i].selected==true){
				   divAdd.innerHTML = '<label class="col-md-2 control-label">['+ (wiki_page_num + 1) + ']</label>'
                                    + '<div class="col-md-8">'
                                    + '    <input type="hidden" id="relatedWikiPageList' + wiki_page_num + '.id" name="relatedWikiPageList[' + wiki_page_num + '].id" value="'+selectWikiPageObj[i].value+'"/>'
                                    + '    <a class="btn btn-default btn-block ">' + selectWikiPageObj[i].innerText + '</a>'
                                    + '</div>'
                                    + '<div class="col-md-2">'
                                    + '    <button class="btn btn-danger" type="button"'
                                    + '      onclick="remove_wiki_page_tags('+ wiki_page_num + ');">'
                                    + '        &nbsp;<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>&nbsp;'
                                    + '    </button>'
                                    + '</div>'
				   addTo.appendChild(divAdd);   
				   break;
			   }
		}
	}
	function remove_wiki_page_tags(rid) {
        $('.tag' + rid).remove();
    } 
	
</script>
<script>
    function uploadApplicationPicFunction() {
        var fileElement = document.getElementById("uploadApplicationPics");

        if (!fileElement.value) {
            console.log("No files selected.")
            return;
        }
        $("#uploadApplicationPicForm").ajaxForm({
            success : function(data) {
                console.log("Files Uploaded:" + data)
                var jsonData = JSON.parse(data);
                $("#imgUrl").val(jsonData["message"]);
                $("#upload_application_pic_status").html("Upload file succ!");
            },
            dataType : "text"
        }).submit();
    }
</script>