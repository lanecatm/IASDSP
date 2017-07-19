<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<hr/>
<sf:form method="POST" modelAttribute="editModelDto" role="form"
	action="updateVersion" cssClass="form-horizontal">
	<div class="form-group">
		<label class="col-md-12 ">Version name</label> 
		<div class="col-md-12">
			<sf:input path="versionName" cssClass="form-control" />
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-12">Version Description
			 <small class="text-muted">(optional)</small>
	    </label>
		<div class="col-md-12">
			<sf:textarea path="versionDescription" cssClass="form-control" />
		</div>
	</div>
	<hr />
	<div class="form-group">
		<div class="col-md-offset-3 col-md-3">
			<input class="btn btn-default btn-block" type="submit" value="Cancle" />
		</div>
		<div class="col-md-3">
			<input class="btn btn-primary btn-block" type="submit" value="Save" />
		</div>
		<div class="col-md-3">
			<input class="btn btn-success btn-block" type="submit" value="Publish" />
		</div>
	</div>
</sf:form>
