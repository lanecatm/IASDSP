<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<c:forEach items="${nodeFunction.nodeOptions}" var="nodeOption"
	varStatus="status">
	<div class="col-md-12">
		<div class="form-group form-group-sm">
			<label class="">${nodeOption.label}</label>
			<c:if test="${nodeOption.nodeOptionType.name == 'Numeric' || nodeOption.nodeOptionType.name == 'String'}">
				<c:if test="${nodeOption.label == 'N'}">
				<input type="text" class="form-control" id="run_param" />
                </c:if>
				<c:if test="${nodeOption.label != 'N'}">
				<input type="text" name="node[option][${status.index}]"
					id="node_option_${nodeOption.id }" class="form-control input-sm"
					value="${nodeOption.defaultValue}">
				</c:if>
			</c:if>
			<c:if
				test="${nodeOption.nodeOptionType.name == 'Nominal specification'}">
				<select class="form-control input-sm"
					name="node[option][${nodeOption.id}]"
					id="node_option_${nodeOption.id}" class="form-control input-sm">
					<c:forEach items="${nodeOption.nodeOptionChoices}"
						var="nodeOptionChoice" varStatus="status1">

						<option value="${nodeOptionChoice.name}">${nodeOptionChoice.name}</option>
					</c:forEach>
				</select>
			</c:if>
		</div>
	</div>
</c:forEach>

