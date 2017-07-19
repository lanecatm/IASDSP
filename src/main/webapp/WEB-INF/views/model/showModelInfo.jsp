<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<div class="col-md-12">
	<table class="table table-bordered">
		<tr>
			<th rowspan="3">Basic information</th>
			<th>Model name</th>
			<td>${showModelDto.title}</td>
		</tr>
		<tr>
			<th>Model introduction</th>
			<td>${showModelDto.introduction}</td>
		</tr>
		<tr>
			<th>Category</th>
			<td>${showModelDto.category}</td>

		</tr>


		<tr>
			<th rowspan="5">Authorization</th>
			<th>Author</th>
			<td>${showModelDto.author.userName}</td>
		</tr>
		<tr>
			<th>Last editor</th>
			<td>${showModelDto.lastEditor.userName}</td>
		</tr>
		<tr>
			<th>Edit user group</th>
			<td>${showModelDto.editUserGroup}</td>
		</tr>
		<tr>
			<th>Delete user group</th>
			<td>${showModelDto.deleteUserGroup}</td>
		</tr>
		<tr>
			<th>Execute user group</th>
			<td>${showModelDto.exectuteUserGroup}</td>
		</tr>

		<tr>
			<th rowspan="3">Version</th>
			<th>Version</th>
			<td>${showModelDto.versionName}</td>
		</tr>
		<tr>
			<th>Create time</th>
			<td>${showModelDto.creationTime}</td>
		</tr>

		<tr>
			<th>Update time</th>
			<td>${showModelDto.updateTime}</td>
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


