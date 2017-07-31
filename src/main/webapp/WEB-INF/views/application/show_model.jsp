<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="col-md-12">
	<c:forEach items="${showApplicationDto.workflowInformationList}"
		var="workflowInformation" varStatus="status">


		<div class="panel panel-default">
			<div class="panel-heading">
				<h4>${workflowInformation.name }</h4>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-12">${workflowInformation.introduction}</div>
				</div>
				<br />
				<div class="collapse " id="collapseModel${status.index}">
					<div class="row">
						<div class="col-md-12">
							<h5>How to use this model</h5>
							<div class="well">${workflowInformation.detailDescription }
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h5>Performance</h5>
							<div class="well" id="modelWell${status.index}"> ${showApplicationDto.performanceMap[workflowInformation.id]} </div>
							
							
						</div>
						<div class="col-md-offset-10 col-md-2">
							<a class="btn btn-sm btn-block btn-primary" id="modelEditBtn${status.index}" 
							     onClick="editPerformance('#modelWell${status.index}', '#modelFormGroup${status.index}', 
							     '#modelTextArea${status.index}', '#modelEditBtn${status.index}')"> 
							     Edit
							</a> 
						</div>
						<div class="form-group" id="modelFormGroup${status.index}" hidden>
							<div class="col-md-12">
								<textarea rows="10" class="form-control" id="modelTextArea${status.index}"></textarea>
							</div>
							<div class="col-md-12">&nbsp;</div>
							<div class="col-md-offset-10 col-md-2">
							     <button class="btn btn-block btn-sm btn-primary" 
							         onClick="searchAjax('#modelTextArea${status.index}', ${workflowInformation.id},${showApplicationDto.wikiPageId }, '#modelWell${status.index}', 
							         '#modelFormGroup${status.index}', '#modelTextArea${status.index}', '#modelEditBtn${status.index}')">
							         Submit
							     </button>
								<br/>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h5>Running cases</h5>
							<table class="table table-bordered">
								<tr>
<!--                                 <th>Id</th>
 -->								<th>Name</th>
								<th>Model version</th>
								<th>Share group</th>
								<th>Share input file</th>
                                <th><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</th>
                                <th><span class="glyphicon glyphicon-play" aria-hidden="true"></span>
								</th>
								<th>Action</th>
								</tr>
								<c:forEach items="${showApplicationDto.shareRecordMap[workflowInformation.id]}"
							var="shareRecord" varStatus="status2">
								<tr>
<%-- 									<td>${shareRecord.id}</td>
 --%>									<td>${shareRecord.name}</td>
									<td>${shareRecord.workflowVersion.versionName}</td>
									<td>${shareRecord.executeDepartment.name}</td>
									<td>${shareRecord.isSharedSampleInput}</td>
									<td>
									   <c:if test="${shareRecord.starUserNumber!=0}">
                                        <fmt:formatNumber maxFractionDigits="1" value="${shareRecord.allStar/shareRecord.starUserNumber}" /> 
									   </c:if>
                                    </td>
                                    <td>
                                        ${shareRecord.runningTime}
                                    </td>
									<td>
									   <a class="btn btn-sm btn-success" 
									       href="<c:url value="/execute?running_case=${shareRecord.id}&application=${showApplicationDto.wikiPageId}"/>">
									        Execute 
									   </a>
									   <a class="btn btn-sm btn-danger" 
									       href="<c:url value="/execute/running_case/${shareRecord.id}/delete?application=${showApplicationDto.path}"/>"> 
									       Delete </a>
									</td>
								</tr>
								</c:forEach>
							</table>
						</div>
					</div>
					<div class="row">
                        <div class="col-md-12">
                            <h5>History versions</h5>
                            <table class="table table-bordered">
                                <tr>
<!--                                 <th>Id</th>
 -->                                <th>Version name</th>
                                <th>Description</th>
                                <th><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</th>
                                <th><span class="glyphicon glyphicon-play" aria-hidden="true"></span>
								</th>
                                <th>Action</th>
                                </tr>
                               <c:forEach items="${workflowInformation.workflowVersions}"
									var="workflowVersion" varStatus="status1">
                                <c:if test="${workflowVersion.status == 1}">
                                <tr>
<%--                                     <td>${workflowVersion.id}</td>
 --%>                                    <td>${workflowVersion.versionName}</td>
                                    <td>${workflowVersion.versionDescription}</td>
                                    <td>
									   <c:if test="${workflowVersion.starUserNumber!=0}">
                                        <fmt:formatNumber maxFractionDigits="1" value="${workflowVersion.allStar/workflowVersion.starUserNumber}" /> 
                                    
										</c:if>
                                    </td>
                                    <td>
                                        ${workflowInformation.runningTime}
                                    </td>
                                    <td><a class="btn btn-sm btn-success" href="<c:url value="/execute?model_version=${workflowVersion.id}&application=${showApplicationDto.wikiPageId}"/>"> Execute </a></td>
                                </tr>
                                </c:if>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
					<br />
				</div>
				<div class="row">
					<div class="col-md-4 ">
						<div class="btn-group btn-group-justified btn-group-sm"
							role="group" aria-label="...">
							<a class="btn btn-sm btn-success" href="<c:url value="/execute?model=${workflowInformation.id}&application=${showApplicationDto.wikiPageId}"/>"
								<c:if test="${workflowInformation.defaultVersion == null}">
								disabled="disabled"
								</c:if>
							>
							     Execute 
							 </a> 
							<a class="btn btn-sm  btn-default" href="<c:url value="/model/${workflowInformation.id}/show"/>"> More detail </a>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-10 ">
						<h4>
							<small> 
							   <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                Star:
							   <c:if test="${workflowInformation.starUserNumber!=0}">
							     <fmt:formatNumber maxFractionDigits="1" value="${workflowInformation.allStar/workflowInformation.starUserNumber}" /> 
							   </c:if>
							   <c:if test="${workflowInformation.starUserNumber==0}">
                                None
                               </c:if>
								 &nbsp; 
							   <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
							   Execute time:
							 ${workflowInformation.runningTime}
							   
							 &nbsp; 
							 <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							 Author: ${workflowInformation.author.userName} 
							</small>
						</h4>
					</div>
					<div class="col-md-2 text-right">
						<h4>
							<small> 
							<a role="button"
								id="collapseModel${status.index}Button" data-toggle="collapse"
								href="#collapseModel${status.index}" aria-expanded="false"
								aria-controls="collapseModel${status.index}"
								data-parent="#accordion${status.index}"> <span
									class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
									More
							</a>
							</small>
						</h4>
					</div>

				</div>
				<div class="row"></div>
			</div>
		</div>

	</c:forEach>
</div>

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<script type="text/javascript">
	$(function() {
		$('.collapse') .on( 'show.bs.collapse', function(e) {
			var $buttonId = "#" + e.currentTarget.id + "Button";
			  $($buttonId).html( '<span class="glyphicon glyphicon-menu-up" aria-hidden="true"></span> Back '); 
		})
	});
	$(function() {
		$('.collapse').on( 'hide.bs.collapse', function(e) {
			var $buttonId = "#" + e.currentTarget.id + "Button";
			$($buttonId).html( '<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span> More '); 
		})
	});



	function editPerformance(modelWellId, modelFormGroupId, modelTextAreaId, modelRditBtnId){
		$(modelWellId).hide();
		$(modelRditBtnId).hide();
		$(modelTextAreaId).val($(modelWellId).html());
		$(modelFormGroupId).show();
		
		
	}
	/* function searchAjax(performanceId, workflowInformationId, wikiPageId, modelWellId, modelFormGroupId, modelTextAreaId, modelRditBtnId) {
		var data = {}
		data["performance"] = $(performanceId).val();
		data["workflowInformationId"] = workflowInformationId;
		data["wikiPageId"] = wikiPageId;
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "edit_performance",
			data : JSON.stringify(data),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data);
				$(modelWellId).show();
				$(modelRditBtnId).show();
				$(modelWellId).html($(modelTextAreaId).val());
				$(modelFormGroupId).hide();
			},
			error : function(e) {
				console.log("ERROR: ", e);

			},
			done : function(e) {
				console.log("DONE");
			}
		}); */
		function searchAjax(performanceId, workflowInformationId, wikiPageId, modelWellId, modelFormGroupId, modelTextAreaId, modelRditBtnId) {
        var data = {}
        data["performance"] = $(performanceId).val();
        data["workflowInformationId"] = workflowInformationId;
        data["wikiPageId"] = wikiPageId;
        $.ajax({
            type : "POST",
            url : "edit_performance",
            contentType : "application/json",
            data : JSON.stringify(data),
            dataType : 'jsonp',
            success : function(data) {
                console.log("SUCCESS: ", data);
                $(modelWellId).show();
                $(modelRditBtnId).show();
                $(modelWellId).html($(modelTextAreaId).val());
                $(modelFormGroupId).hide();
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