<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<s:url value="/resources/stylesheet/bootstrap-tagsinput.css"
	var="tagsinputCss" />
<link rel="stylesheet" media="all" href="${tagsinputCss}" />

<s:url value="/resources/javascript/bootstrap-tagsinput.js"
	var="tagsinputJs" />
<script src="${tagsinputJs}"></script>

<hr/>

<sf:form method="post" modelAttribute="editModelDto"
	cssClass="form-horizontal" role="form" action="update" id="update_form">
	<div class="form-group">
		<label class="col-md-12 ">Category</label>
		<div class="col-md-12">
			<select id="category" name="category" class="form-control">
				<c:forEach items="${editModelDto.categoryList}" var="category">
					<c:choose>
						<c:when test="${editModelDto.category == category.value}">
							<option selected="true" value="${category.key }">${category.value}</option>
						</c:when>
						<c:otherwise>
							<option value="${category.key }">${category.value}</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</select>
		</div>
	</div>
	<hr/>
	
	<div class="form-group">
        <label class="col-md-12 ">Tag</label>
		<div class="col-md-12">
			<input id="tagsinput" name="tagsinput" type="text"
				data-role="tagsinput" value="${editModelDto.tagsinput}" />
		</div>
	</div>
	<hr/>
	
	<div class="form-group">
	   <label class="col-md-12 ">Related applications</label>
	</div>
	<div id="wiki_page_tags">
		<p>${editmodelDto.relatedWikiPageList}</p>
		<c:forEach items="${editModelDto.relatedWikiPageList}"
			var="relatedAppli" varStatus="status">
			<div class="form-group tag${status.index}">
				<label class="col-md-1 control-label">[${status.index + 1}]</label>
				<div class="col-md-9">
					<sf:hidden path="relatedWikiPageList[${status.index}].id"
						value="${relatedAppli.id}" />
					<a class="btn btn-default btn-block ">${relatedAppli.title}</a>
				</div>
				<div class="col-md-2">
					<button class="btn btn-danger btn-block" type="button"
						onclick="remove_wiki_page_tags(${status.index});">
						&nbsp;<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>&nbsp;
					</button>
				</div>
			</div>
		</c:forEach>
	</div>

	<!-- wiki_page_tags -->
	<div class="form-group">
		<div class="col-md-offset-1 col-md-9">
			<select id="select_application" name="xml" class="form-control">
				<c:forEach items="${editModelDto.allApplicationList}" var="appli"
					varStatus="status">
					<option value="${appli.key }">${appli.value}</option>

				</c:forEach>
			</select>
		</div>
		<div class="col-md-2">
			<button class="btn btn-success btn-block" type="button"
				onclick="add_wiki_page();">
				&nbsp;<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;
			</button>
		</div>
	</div>
	<hr/>
	
	
	<!-- form-group -->
	<div class="form-group">
	   <label class="col-md-12 ">How to use this model</label>
		<div class="col-md-12">
			<sf:textarea path="detailedInformation"
				value="${editModelDto.detailedInformation}" cssClass="form-control"
				rows="15" />
		</div>
	</div>
	<hr/>

	<div class="form-group">
		<div class="col-md-offset-6 col-md-3">
			<input type="button" name="cancel" value="Cancel"
				class="btn btn-default btn-block" />
		</div>
		<div class="col-md-3">
			<input type="submit" name="save" class="btn btn-primary btn-block"
				value="Save page" />
		</div>
	</div>
</sf:form>



<c:set var="tagSize"
	value="${fn:length(editModelDto.relatedWikiPageList)}"></c:set>
<p id="tagSize" hidden>${tagSize}</p>


<script>

var wiki_page_num = document.getElementById('tagSize').innerHTML - 1;

function add_wiki_page(){
	wiki_page_num++;
	var selectWikiPageObj = document.getElementById("select_application");
	var addTo = document.getElementById("wiki_page_tags");
	
	var divAdd = document.createElement("div");
	divAdd.setAttribute("class", "form-group tag" + wiki_page_num);
	for(i=0;i<selectWikiPageObj.length;i++){
		   if(selectWikiPageObj[i].selected==true){
			   divAdd.innerHTML = '<label class="col-md-1 control-label">['+ (wiki_page_num + 1) + ']</label>'
                                + '<div class="col-md-9">'
                                + '    <input type="hidden" id="relatedWikiPageList' + wiki_page_num + '.id" name="relatedWikiPageList[' + wiki_page_num + '].id" value="'+selectWikiPageObj[i].value+'"/>'
                                + '    <a class="btn btn-default btn-block ">' + selectWikiPageObj[i].innerText + '</a>'
                                + '</div>'
                                + '<div class="col-md-2">'
                                + '    <button class="btn btn-danger btn-block" type="button"'
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
$('#update_form').on('keyup keypress', function(e) {
	  var keyCode = e.keyCode || e.which;
	  if (keyCode === 13) { 
	    e.preventDefault();
	    return false;
	  }
	});
</script>