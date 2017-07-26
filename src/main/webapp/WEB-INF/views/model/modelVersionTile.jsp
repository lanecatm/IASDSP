
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="col-md-6 col-sm-12 hero-feature">
	<div class="thumbnail "
		style="background-color: #f8f8f8; border: #f8f8f8;">
		<a class="hero-a" href="<c:url value="#"/>"> <img
			src="${workflowImg }" alt="">
		</a>
		${ workflowVersion.svg }
		<div class="caption">
			<div class="hero-content">
				<h4>
					<c:if test="${workflowVersion.status == 0}">
					<span class="badge"> 
					Editing 
					</span>
					</c:if> 
					<c:if test="${workflowVersion.status == 1 && workflowVersion.workflowInformation.defaultVersion.id == workflowVersion.id}">
					<span class="badge" style="background-color:#d9534F;"> 
						Default
					</span>
					</c:if> 
					<c:if test="${workflowVersion.status == 1 && workflowVersion.workflowInformation.defaultVersion.id != workflowVersion.id}">
					<span class="badge" style="background-color:#337ab7;"> 
						Published
					</span>
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
							<a type="button" class="btn btn-success btn-sm" id="version${status.index}PublishBtn" onClick="publishVersion(${workflowVersion.id})"> 
							     Publish 
							</a>
						<a type="button" class="btn btn-info btn-sm"
                            href="<c:url value="/graph_model/editor/graph/page/index.html?model_version=${workflowVersion.id}"/>"> Edit </a>
						<!-- TODO change delete method -->
						<a type="button" class="btn btn-danger btn-sm"
							href="<c:url value="./version/${workflowVersion.id}/delete"/>"> Delete </a>
						</c:if> 
						  <c:if test="${workflowVersion.status == 1}">
                            <a type="button" disabled="disabled" class="btn btn-success btn-sm" id="version${status.index}PublishBtn" onClick="publishVersion(${workflowVersion.id})"> 
                                 Publish 
                            </a>
                        <a type="button" disabled="disabled" class="btn btn-info btn-sm"
                            href="<c:url value="/graph_model/editor/graph/page/index.html?model_version=${workflowVersion.id}"/>"> Edit </a>
                        <!-- TODO change delete method -->
                        <a type="button" class="btn btn-danger btn-sm"
                            href="<c:url value="./version/${workflowVersion.id}/delete"/>"> Delete </a>
                        </c:if> 
					</div>
				</div>
			</div>
			
			
			<h5>
				<img src="${userImg}" alt="" style="width: 30px; height: 30px;"
                    class="img-circle"> 
                <small> &nbsp;By ${workflowVersion.author.userName} &nbsp; 
                    <span class="glyphicon glyphicon-star"></span> 
                    <c:if test="${workflowVersion.starUserNumber!=0}">
                        <fmt:formatNumber maxFractionDigits="1"
                            value="${workflowVersion.allStar/workflowVersion.starUserNumber}" />
                    </c:if> 
                    <c:if test="${workflowVersion.starUserNumber==0}">
                    None
                    </c:if>
                    
                    <span class="glyphicon glyphicon-play"></span>
                    ${workflowVersion.runningTime}
                </small>
			</h5>
		</div>
	</div>
</div>

