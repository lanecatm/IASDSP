<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<c:forEach items="${nodeInformations}" var="nodeInformation"
	varStatus="statusNodeInformation">

	<div class="panel panel-default">
		<div class="panel-heading" role="tab" >
			${nodeInformation.name}
		</div>
		<div class="panel-body">
		<input type="hidden" class="form-control"
			name="nodeProcessInformations[${statusNodeInformation.index}].nodeFunctionId"
			value="${nodeInformation.nodeFunction.id }" />
		<c:forEach items="${nodeInformation.nodeOptionValues}" var="nodeOptionValue"
			varStatus="statusNodeOptionValue">
			<div class="col-md-12">
				<div class="form-group form-group-sm">
					<label class="">${nodeOptionValue.nodeOption.label}</label> <input type="hidden"
						class="form-control"
						name="nodeProcessInformations[${statusNodeInformation.index}].nodeProcessOptionValues[${statusNodeOptionValue.index}].nodeOptionId"
						value="${nodeOptionValue.nodeOption.id }" />
					<c:if
						test="${nodeOptionValue.nodeOption.nodeOptionType.name == 'Numeric' || nodeOptionValue.nodeOption.nodeOptionType.name == 'String'}">
						<input type="text" class="form-control" id="run_param"
							name="nodeProcessInformations[${statusNodeInformation.index}].nodeProcessOptionValues[${statusNodeOptionValue.index}].value"
							value="${nodeOptionValue.value }" />
					</c:if>
					<c:if
						test="${nodeOptionValue.nodeOption.nodeOptionType.name == 'Nominal specification'}">
						<select class="form-control input-sm"
							name="nodeProcessInformations[${statusNodeInformation.index}].nodeProcessOptionValues[${statusNodeOptionValue.index}].value">
							<c:forEach items="${nodeOptionValue.nodeOption.nodeOptionChoices}"
								var="nodeOptionChoice" varStatus="statusNodeOptionChoice">
								<c:if test="${nodeOptionValue.value == nodeOptionChoice.value}">
									<option value="${nodeOptionChoice.value}" selected="selected">${nodeOptionChoice.name}</option>
								</c:if>
								<c:if test="${nodeOptionValue.value != nodeOptionChoice.value}">
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
