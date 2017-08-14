<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<div class="col-md-12">
	<table class="table table-bordered">
		<tr>
			<th rowspan="3">Basic information</th>
			<th>Model name</th>
			<td>${showModelDto.workflowInformation.name}</td>
		</tr>
		<tr>
			<th>Model introduction</th>
			<td>${showModelDto.workflowInformation.introduction}</td>
		</tr>
		<tr>
			<th>Category</th>
			<td>${showModelDto.workflowInformation.workflowCategory.name}</td>

		</tr>


		<tr>
			<th rowspan="6">Authorization</th>
			<th>Author</th>
			<td>${showModelDto.workflowInformation.author.userName}</td>
		</tr>
		<tr>
			<th>Last editor</th>
			<td>${showModelDto.workflowInformation.updator.userName}</td>
		</tr>
		<tr>
			<th>Edit user group</th>
			<td>${showModelDto.workflowInformation.workflowPrivilege.editDepartment.name}</td>
		</tr>
		<tr>
			<th>Delete user group</th>
			<td>${showModelDto.workflowInformation.workflowPrivilege.executeDepartment.name}</td>
		</tr>
		<tr>
			<th>Execute user group</th>
			<td>${showModelDto.workflowInformation.workflowPrivilege.deleteDepartment.name}</td>
		</tr>
        <tr>
            <th>Show user group</th>
            <td>${showModelDto.workflowInformation.workflowPrivilege.showDepartment.name}</td>
        </tr>
		<tr>
			<th rowspan="2">Time</th>
			<th>Create time</th>
			<td>${showModelDto.workflowInformation.createdAt}</td>
		</tr>

		<tr>
			<th>Update time</th>
			<td>${showModelDto.workflowInformation.updatedAt}</td>
		</tr>
		<!--
    <tr>
        <th>Last version</th>
        <td> </td>
    </tr>
    -->

		<!--
    <tr>
        <th rowspan="1">Algorithm</th>
        <th>Algorithm</th>
        <td>
            <span class="label label-default">Algorithm 1</span>
        </td>
    </tr>
    -->



	</table>




</div>


