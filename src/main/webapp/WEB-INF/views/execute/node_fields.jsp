<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<c:forEach items="${nodeFunctions}" var="nodeFunction"
    varStatus="statusNodeFunction">
	<input type="hidden" class="form-control" 
	  name="nodeProcessInformations[${statusNodeFunction.index}].nodeFunctionId" value="${nodeFunction.id }"/>
	<c:forEach items="${nodeFunction.nodeOptions}" var="nodeOption"
		varStatus="statusNodeOption">
		<div class="col-md-12">
			<div class="form-group form-group-sm">
				<label class="">${nodeOption.label}</label>
				<input type="hidden" class="form-control" 
				  name="nodeProcessInformations[${statusNodeFunction.index}].nodeProcessOptionValues[${statusNodeOption.index}].nodeOptionId" value="${nodeOption.id }"/>
				<c:if
					test="${nodeOption.nodeOptionType.name == 'Numeric' || nodeOption.nodeOptionType.name == 'String'}">
					<c:if test="${nodeOption.label == 'N'}">
						<input type="text" class="form-control" id="run_param" 
						  name="nodeProcessInformations[${statusNodeFunction.index}].nodeProcessOptionValues[${statusNodeOption.index}].value" />
					</c:if>
					<c:if test="${nodeOption.label != 'N'}">
						<input type="text" class="form-control"
						  name="nodeProcessInformations[${statusNodeFunction.index}].nodeProcessOptionValues[${statusNodeOption.index}].value" />
					</c:if>
				</c:if>
				<c:if
					test="${nodeOption.nodeOptionType.name == 'Nominal specification'}">
					<select class="form-control input-sm"
						name="nodeProcessInformations[${statusNodeFunction.index}].nodeProcessOptionValues[${statusNodeOption.index}].value" > 
						<c:forEach items="${nodeOption.nodeOptionChoices}"
							var="nodeOptionChoice" varStatus="statusNodeOptionChoice">
							<option value="${nodeOptionChoice.value}">${nodeOptionChoice.name}</option>
						</c:forEach>
					</select>
				</c:if>
			</div>
		</div>
	</c:forEach>
</c:forEach>
