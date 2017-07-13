<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 


<br />
<br />
<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<div class="row">
				<!--  <div class="col-md-12"> -->
				<h1>Edit ${editApplicationDto.getTitle()}</h1>
				<!-- </div> -->
				<!--  
				<div class="col-md-6">
					<h4>
						<small>Revised on ${showApplicationDto.getTime() } by
							${showApplicationDto.getAuthorName()}</small>
					</h4>
				</div>
				<div class="col-md-6">
				</div>
				-->
			</div>

			<div class="row">
				<hr />
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
						    <div id="education_fields"></div>
							<c:forEach items="${editApplicationDto.referenceList}"
								var="reference" varStatus="status">

								<div class="form-group">
									<label class="col-md-2">[${status.index}]</label>
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
                                        <button class="btn btn-danger" type="button" onclick="remove_education_fields(${status.index});"> 
                                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> 
                                        </button>
									</div>
								</div>
								<hr />
							</c:forEach>
							<c:set var="listSize" value="${fn:length(editApplicationDto.referenceList)}"></c:set>
							<div class="form-group">
								<label class="col-md-2">[${listSize}]</label>
								<div class="col-md-4">
									<sf:hidden
										path="referenceList[${listSize}].id"
										value="${listSize}" />
									<sf:input
										path="referenceList[${listSize}].content"
										value="${reference.content}" cssClass="form-control"
										placeholder="Content" />

								</div>
								<div class="col-md-4">
									<sf:input
										path="referenceList[${listSize}].url"
										value="${reference.url}" cssClass="form-control"
										placeholder="Url" />
								</div>
								<div class="col-md-2">
									<button class="btn btn-success" type="button"
										onclick="education_fields();">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Related pages</h4>
						</div>
						<div class="panel-body">
							<h5>
								<c:forEach items="${showApplicationDto.relatedWikiPageList}"
									var="relatedPage">
									<span class="label label-default">${relatedPage.title}</span>
								</c:forEach>
							</h5>
						</div>
					</div>
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
				</sf:form>
			</div>
		</div>
	</div>
</div>
<!-- 
<div id="education_fields"></div>
<div class="col-sm-3 nopadding">
	<div class="form-group">
		<input type="text" class="form-control" id="referenceList1.content"
			name="referenceList[1].content" value="" placeholder="Content">
	</div>
</div>
<div class="col-sm-3 nopadding">
	<div class="form-group">
		<div class="input-group">
			<input type="text" class="form-control" id="referenceList1.url"
				name="referenceList[1].url" value="" placeholder="Url">
			<div class="input-group-btn">
				<button class="btn btn-success" type="button"
					onclick="education_fields();">
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
				</button>
			</div>
		</div>
	</div>
</div>
<div class="clear"></div>  -->
<p id="listSize">${listSize}</p>

<script>

 	var room = document.getElementById('listSize').innerHTML;
	function education_fields() {

		room++;
		var objTo = document.getElementById('education_fields')
		var divtest = document.createElement("div");
		divtest.setAttribute("class", "removeclass" + room);
		var rdiv = 'removeclass' + room;
		divtest.innerHTML = '	<div class="form-group">'
				+ '         <label class="col-md-2">[' + room + ']</label>'
				+ '	        <div="col-md-4">'
				+ '             <input type="text" class="form-control" id="referenceList' + room + '.content"'
	            + '                name="referenceList[' + room + '].content" value="" placeholder="Content"/>'
				+ '         </div>'
				+ '	        <div class="col-md-4">'
                + '             <input type="text" class="form-control" id="referenceList' + room + '.url"'
                + '                name="referenceList[' + room + '].url" value="" placeholder="Url"/>'
				+ '	        </div>'
				+ '	        <div class="col-md-2">'
                + '	               <button class="btn btn-success" type="button" onclick="education_fields();">'
				+ '		               <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>'
				+ '		           </button>' 
				+ '         </div>' 
				+ '    </div>'
				+ '    <div class="clear"></div>';


		objTo.appendChild(divtest)
	}
	function remove_education_fields(rid) {
		$('.removeclass' + rid).remove();
	} 
	
</script>