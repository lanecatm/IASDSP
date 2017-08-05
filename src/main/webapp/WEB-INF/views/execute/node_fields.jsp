<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<c:forEach items="${nodeFunctions}" var="nodeFunction"
	varStatus="statusNodeFunction">
	<input type="hidden" class="form-control"
		name="nodeProcessInformations[${statusNodeFunction.index}].nodeFunctionId"
		value="${nodeFunction.id }" />
	<c:forEach items="${nodeFunction.nodeOptions}" var="nodeOption"
		varStatus="statusNodeOption">
		<div class="col-md-12">
			<div class="form-group form-group-sm">
				<label class="">${nodeOption.label}</label> <input type="hidden"
					class="form-control"
					name="nodeProcessInformations[${statusNodeFunction.index}].nodeProcessOptionValues[${statusNodeOption.index}].nodeOptionId"
					value="${nodeOption.id }" />
				<c:if
					test="${nodeOption.nodeOptionType.name == 'Numeric' || nodeOption.nodeOptionType.name == 'String'}">
					<input type="text" class="form-control" id="run_param"
						name="nodeProcessInformations[${statusNodeFunction.index}].nodeProcessOptionValues[${statusNodeOption.index}].value"
						value="${nodeOption.defaultValue }" />
				</c:if>
				<c:if
					test="${nodeOption.nodeOptionType.name == 'Nominal specification'}">
					<select class="form-control input-sm"
						name="nodeProcessInformations[${statusNodeFunction.index}].nodeProcessOptionValues[${statusNodeOption.index}].value">
						<c:forEach items="${nodeOption.nodeOptionChoices}"
							var="nodeOptionChoice" varStatus="statusNodeOptionChoice">
							<c:if test="${'0' == nodeOptionChoice.value}">
								<option value="${nodeOptionChoice.value}" selected="selected">${nodeOptionChoice.name}</option>
							</c:if>
							<c:if test="${'0' != nodeOptionChoice.value}">
                                <option value="${nodeOptionChoice.value}">${nodeOptionChoice.name}</option>
                            </c:if>
						</c:forEach>
					</select>
				</c:if>
			</div>
		</div>
	</c:forEach>
</c:forEach>
