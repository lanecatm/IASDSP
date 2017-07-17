<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="col-md-12">
	<c:forEach items="${showApplicationDto.workflowInformationList}"
		var="workflowInformation" varStatus="status">
		<div class="panel-group" id="accordion">

			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>${workflowInformation.name }</h4>


				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-12">${workflowInformation.introduction}</div>
					</div>
					<br />
					<div class="collapse" id="collapseModel${status.index}">
						<div class="row">
							<div class="col-md-12">
							<h5>How to use this model</h5>
								<div class="well">
									${workflowInformation.detailDescription }
								</div>
							</div>
						</div>
						<div class="row">
                            <div class="col-md-12">
								<h5>Performance</h5>
								<div class="well">
								    ${workflowInformation.detailDescription }
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
                                        <td><a class="btn btn-sm btn-success"> Execute </a> </td>
								    </tr>
								</table>
                            </div>
                        </div>
                        <br/>
					</div>
					<div class="row">
						<div class="col-md-6 ">
							<div class="btn-group btn-group-justified btn-group-sm"
								role="group" aria-label="...">
								<a class="btn btn-sm btn-success"> Execute </a> 
								<a class="btn btn-sm btn-primary"> Edit performance </a> 
								<a
									class="btn btn-sm  btn-default"> More detail </a>
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
										<span class="glyphicon glyphicon-star-empty"
										aria-hidden="true"></span>
								</span> &nbsp; &nbsp; Author Admin &nbsp; &nbsp; Execute time 20
								</small>
							</h4>
						</div>
						<div class="col-md-2 text-right ">
							<h4>
								<small> 
								    <a role="button" data-toggle="collapse" href="#collapseModel${status.index}" aria-expanded="false" aria-controls="collapseModel${status.index}">
								        <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
										More 
								    </a>
								</small>
							</h4>
						</div>

					</div>
					<div class="row"></div>
				</div>

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