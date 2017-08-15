<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<c:forEach items="${nodeProcessInformations}" var="nodeProcessInformation"
	varStatus="statusNodeInformation">

	<div class="panel panel-default">
		<div class="panel-heading" role="tab" >
			${nodeProcessInformation.name}
		</div>
		<div class="panel-body">
		<input type="hidden" class="form-control"
			name="nodeProcessInformations[${statusNodeInformation.index}].nodeFunctionId"
			value="${nodeProcessInformation.nodeFunction.id }" />
			<input type="hidden" class="form-control"
            name="nodeProcessInformations[${statusNodeInformation.index}].name"
            value="${nodeProcessInformation.name }" />
		<c:forEach items="${nodeProcessInformation.nodeProcessOptionValues}" var="nodeProcessOptionValue"
			varStatus="statusNodeOptionValue">
			<div class="col-md-12">
				<div class="form-group form-group-sm">
					<label class="">${nodeProcessOptionValue.nodeOption.label}</label> <input type="hidden"
						class="form-control"
						name="nodeProcessInformations[${statusNodeInformation.index}].nodeProcessOptionValues[${statusNodeOptionValue.index}].nodeOptionId"
						value="${nodeProcessOptionValue.nodeOption.id }" />
					<c:if
						test="${nodeProcessOptionValue.nodeOption.nodeOptionType.name == 'Numeric' || nodeProcessOptionValue.nodeOption.nodeOptionType.name == 'String'}">
						<input type="text" class="form-control" id="run_param"
							name="nodeProcessInformations[${statusNodeInformation.index}].nodeProcessOptionValues[${statusNodeOptionValue.index}].value"
							value="${nodeProcessOptionValue.value }" />
					</c:if>
					<c:if
						test="${nodeProcessOptionValue.nodeOption.nodeOptionType.name == 'Nominal specification'}">
						<select class="form-control input-sm"
							name="nodeProcessInformations[${statusNodeInformation.index}].nodeProcessOptionValues[${statusNodeOptionValue.index}].value">
							<c:forEach items="${nodeProcessOptionValue.nodeOption.nodeOptionChoices}"
								var="nodeOptionChoice" varStatus="statusNodeOptionChoice">
								<c:if test="${nodeProcessOptionValue.value == nodeOptionChoice.value}">
									<option value="${nodeOptionChoice.value}" selected="selected">${nodeOptionChoice.name}</option>
								</c:if>
								<c:if test="${nodeProcessOptionValue.value != nodeOptionChoice.value}">
									<option value="${nodeOptionChoice.value}">${nodeOptionChoice.name}</option>
								</c:if>
							</c:forEach>
						</select>
					</c:if>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>
</c:forEach>
