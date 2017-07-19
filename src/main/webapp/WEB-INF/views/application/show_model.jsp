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
								<th>
								<td>Running case name</td>
								<td>Description</td>
								<td>Star</td>
								<td>Execution times</td>
								<td>Action</td>
								</th>
								<tr>
									<td>1</td>
									<td>Running case 1</td>
									<td>xxxxxxxxxx</td>
									<td>2</td>
									<td>12</td>
									<td><a class="btn btn-sm btn-success"> Execute </a></td>
								</tr>
							</table>
						</div>
					</div>
					<br />
				</div>
				<div class="row">
					<div class="col-md-4 ">
						<div class="btn-group btn-group-justified btn-group-sm"
							role="group" aria-label="...">
							<a class="btn btn-sm btn-success"> Execute </a> 
							<a class="btn btn-sm  btn-default"> More detail </a>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-10 ">
						<h4>
							<small> Star<span> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
									<span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
							</span> &nbsp; &nbsp; Author Admin &nbsp; &nbsp; Execute time 20
							</small>
						</h4>
					</div>
					<div class="col-md-2 text-right">
						<h4>
							<small> <a role="button"
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
	function searchAjax(performanceId, workflowInformationId, wikiPageId, modelWellId, modelFormGroupId, modelTextAreaId, modelRditBtnId) {
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
		});
	}
</script>