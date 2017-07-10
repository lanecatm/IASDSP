<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<div class="col-md-12">





<table class="table table-striped table-bordered">
    <tr>
        <th>ID </th>
        <th>Version</th>
        <th>Version description</th>
        <th>Update time</th>
    </tr>
        <tr>
            <td>
                45
            </td>
            <td>
                ${showModelDto.versionName}
            </td>
            <td>
                This version is the first test version
            </td>
            <td>
                ${showModelDto.creationTime}
            </td>
        </tr>
                <tr>
            <td>
                46
            </td>
            <td>
                ${showModelDto.versionName}
            </td>
            <td>
                This version is the first test version
            </td>
            <td>
                ${showModelDto.creationTime}
            </td>
        </tr>
                <tr>
            <td>
                47
            </td>
            <td>
                ${showModelDto.versionName}
            </td>
            <td>
                This version is the first test version
            </td>
            <td>
                ${showModelDto.creationTime}
            </td>
</table>
	
	
	
	
</div>


