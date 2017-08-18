
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<div class="col-md-6 col-sm-12 hero-feature">
	<div class="thumbnail "
		style="background-color: #f8f8f8; border: #f8f8f8;">
		<div
			style="height: 100px; display: table-cell; vertical-align: middle; text-align: center;">
			<a class="hero-a"
				href="<c:url value="/model/${workflowInformation.id}/show"/>"
				style="vertical-align: middle;"> <img
				src="<c:url value="/upload/${workflowVersion.svg }"/>" alt=""
				style="weight: auto; vertical-align: middle;">
			</a>
		</div>

		<div class="caption">
			<div class="hero-content">
				<h4>
					<c:if test="${workflowVersion.status == 0}">
						<span class="badge"> Editing </span>
					</c:if>
					<c:if
						test="${workflowVersion.status == 1 && workflowVersion.workflowInformation.defaultVersion.id == workflowVersion.id}">
						<span class="badge" style="background-color: #d9534F;">
							Default </span>
					</c:if>
					<c:if
						test="${workflowVersion.status == 1 && workflowVersion.workflowInformation.defaultVersion.id != workflowVersion.id}">
						<span class="badge" style="background-color: #337ab7;">
							Published </span>
					</c:if>
					<a class="hero-a" href="<c:url value="#"/>">
						${workflowVersion.versionName} </a>
				</h4>
				<h5>
					<small>${workflowVersion.createdAt}</small>
				</h5>
				<p>${workflowVersion.versionDescription}&nbsp;</p>
			</div>

			<div class="row">
				<div class="col-md-12">
					<div class="btn-group btn-group-justified  btn-group-sm"
						role="group" aria-label="...">
						<c:if test="${workflowVersion.status == 0}">
							<a type="button" class="btn btn-success btn-sm"
								id="version${status.index}PublishBtn"
								onClick="publishVersion(${workflowVersion.id})"> Publish </a>
							<shiro:hasPermission
								name="model:edit:${ workflowVersion.workflowInformation.id}">
								<a type="button" class="btn btn-info btn-sm" target="_blank"
									href="<c:url value="/graph_model/editor/graph/page/index.html?model_version=${workflowVersion.id}"/>">
									Edit </a>
							</shiro:hasPermission>
							<shiro:lacksPermission
								name="model:edit:${ workflowVersion.workflowInformation.id}">
								<a type="button" class="btn btn-info btn-sm" target="_blank"
									disabled="disabled"
									href="<c:url value="/graph_model/editor/graph/page/index.html?model_version=${workflowVersion.id}"/>">
									Edit </a>
							</shiro:lacksPermission>
							<!-- TODO change delete method -->
							<shiro:hasPermission
								name="model:delete:${ workflowVersion.workflowInformation.id}">
								<a type="button" class="btn btn-danger btn-sm"
									href="<c:url value="./version/${workflowVersion.id}/delete"/>">
									Delete </a>
							</shiro:hasPermission>
							<shiro:lacksPermission
								name="model:delete:${ workflowVersion.workflowInformation.id}">
								<a type="button" class="btn btn-danger btn-sm"
									disabled="disabled"> Delete </a>
							</shiro:lacksPermission>
						</c:if>
						<c:if test="${workflowVersion.status == 1}">
							<a type="button" disabled="disabled"
								class="btn btn-success btn-sm"
								id="version${status.index}PublishBtn"
								onClick="publishVersion(${workflowVersion.id})"> Publish </a>
							<a type="button" disabled="disabled" class="btn btn-info btn-sm"
								href="<c:url value="/graph_model/editor/graph/page/index.html?model_version=${workflowVersion.id}"/>">
								Edit </a>
							<!-- TODO change delete method -->
							<shiro:hasPermission
								name="model:delete:${ workflowVersion.workflowInformation.id}">
								<a type="button" class="btn btn-danger btn-sm"
									href="<c:url value="./version/${workflowVersion.id}/delete"/>">
									Delete </a>
							</shiro:hasPermission>
							<shiro:lacksPermission
								name="model:delete:${ workflowVersion.workflowInformation.id}">
								<a type="button" class="btn btn-danger btn-sm"
									disabled="disabled"> Delete </a>
							</shiro:lacksPermission>
						</c:if>
					</div>
				</div>
			</div>


			<h5>
			     <c:if test="${workflowVersion.author.userPicture == null }">
				<img src="${userImg}" alt="" style="width: 30px; height: 30px;"
					class="img-circle">
				</c:if>
				<c:if test="${workflowVersion.author.userPicture != null }">
				    <s:url value="${workflowVersion.author.userPicture.path}" var="userImgFound" />
                    <img src="${userImgFound}" alt="" style="width: 30px; height: 30px;"
                        class="img-circle">
                </c:if>
					 <small> &nbsp;By
					${workflowVersion.author.userName} &nbsp; <span
					class="glyphicon glyphicon-star"></span> 
					<c:if
						test="${workflowVersion.starUserNumber!=0}">
						<fmt:formatNumber maxFractionDigits="1"
							value="${workflowVersion.allStar/workflowVersion.starUserNumber}" />
					</c:if> <c:if test="${workflowVersion.starUserNumber==0}">
                    None
                    </c:if> <span class="glyphicon glyphicon-play"></span>
					${workflowVersion.runningTime}
				</small>
			</h5>
		</div>
	</div>
</div>

