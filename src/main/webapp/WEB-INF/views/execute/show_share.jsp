<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<hr />

<script type="text/javascript">
	$(function() {
		$(".radio").click(function() {
			$("input:radio[name='isShare']:checked").each(function() { // 遍历name=test的多选框
				if ($(this).val() == "true") {
					$("#share_use_case_form").css("display", "block");
				} else {
					$("#share_use_case_form").css("display", "none");
				}
			});
		});
	});
</script>

<sf:form method="POST" modelAttribute="shareExecuteDto" role="form"
	action="execute/share" cssClass="form-horizontal">
	<div class="panel panel-default">
		<div class="panel-heading">Rating</div>
		<div class="panel-body">
			<input id="star" name="star" value="0" type="number" class="rating" min=0
				max=5 step=1 data-size="xs">
			<sf:hidden path="applicationId" value="${param.application}"/>
			<sf:hidden path="hasApplication" value="${param.application!=null}"/>
			<sf:hidden path="processInformationId" value=""/>
			
		</div>
	</div>
    <div class="panel panel-default">
        <div class="panel-heading">Comment</div>
        <div class="panel-body">
            <div class="form-group">
                <div class="col-md-12">
                    <sf:textarea path="comment" value="" cssClass="form-control"/>
                </div>
            </div>
        </div>
    </div>
	<c:if test="${param.application!=null}">
		<div class="panel panel-default">
			<div class="panel-heading">Share</div>
			<div class="panel-body">
				<div class="form-group">
					<div class="col-md-12">
						<!-- <h4>Share</h4> -->
						<div class="radio">
							<label> <sf:radiobutton path="isShare" value="false"
									label=" I don't want to share this running case." />
							</label>
						</div>
						<div class="radio">
							<label> <sf:radiobutton path="isShare" value="true"
									label=" I want to share this running case." />
							</label>
						</div>
					</div>
				</div>


				<div id="share_use_case_form" style="display: none">

					<div class="form-group">

						<label class="col-md-12">Running case name</label>
						<div class="col-md-12">
							<sf:input path="runningCaseName" cssClass="form-control" />
						</div>
					</div>
					<!--  <input path=""/> --defaultdiv>
		</div>
		<div class="form-group">
			<label class="col-md-12">Running case description</label>
			<div class="col-md-12">
				<%--  <sf:textarea path=""/> --%>
			</div>
		</div>
		<!-- 选择是否带上文件 -->

					<div class="form-group">
						<label class="col-md-12">Belong to application</label>
						<div class="col-md-12">
							<select id="applicationId"
								name="applicationId" class="form-control">
								<c:forEach items="${shareExecuteDto.applicationList}"
									var="application">
									<c:choose>
										<c:when
											test="${shareExecuteDto.defaultApplicationId == application.key}">
											<option selected="true" value="${application.key }">${application.value}</option>
										</c:when>
										<c:otherwise>
											<option value="${application.key }">${application.value}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>
					</div>





					<!-- 选择执行的用户组 -->
					<div class="form-group">
						<label class="col-md-12">Shared User Group</label>
						<div class="col-md-12">
							<select id="departmentInformationId"
								name="departmentInformationId" class="form-control">
								<c:forEach items="${shareExecuteDto.departmentList}"
									var="department">
									<c:choose>
										<c:when
											test="${shareExecuteDto.departmentInformationId == department.key}">
											<option selected="true" value="${department.key }">${department.value}</option>
										</c:when>
										<c:otherwise>
											<option value="${department.key }">${department.value}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="form-group">
						<div class="col-md-12">
							<div class="checkbox">
								<label> <sf:checkbox path="shareInputFile"
										label="Share running case with the input file" />
								</label>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</c:if>
	<div id="return_button">
		<div class="form-group">
			<div class="col-md-12">
				<hr />
			</div>

			<div class="col-md-offset-8 col-md-4">
				<button class="btn btn-primary btn-sm btn-block">Save</button>
			</div>
		</div>
	</div>
</sf:form>