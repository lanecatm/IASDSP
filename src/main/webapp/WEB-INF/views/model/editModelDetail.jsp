<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<hr/>
<sf:form method="POST" modelAttribute="editModelDto" role="form"
	action="updateDetail" cssClass="form-horizontal">
	
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
