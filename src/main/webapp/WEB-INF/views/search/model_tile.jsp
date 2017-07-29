
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="col-md-4 col-sm-6 hero-feature">
	<div class="thumbnail "
		style="background-color: #f8f8f8; border: #f8f8f8;">
		<div style="height:100px;display: table-cell; vertical-align: middle;text-align: center;">
		<a class="hero-a"
			href="<c:url value="/model/${workflowInformation.id}/show"/>" style="vertical-align:middle;">
			<c:if test="${workflowInformation.defaultVersion != null &&workflowInformation.defaultVersion.svg!= null }">
            <img src="<c:url value="/upload/${workflowInformation.defaultVersion.svg }"/>" alt="" style="weight:auto;vertical-align:middle;">
            </c:if>
            
		</a>
		</div>
		<div class="caption">
			<div class="hero-content">
				<h4>
					<a class="hero-a"
						href="<c:url value="/model/${workflowInformation.id}/show"/>">
						${workflowInformation.name} </a>
				</h4>
				<h5>
					<small>${workflowInformation.createdAt}</small>
				</h5>
				<p>${workflowInformation.introduction}&nbsp;</p>
			</div>
			<h5>
				<img src="${userImg}" alt="" style="width: 30px; height: 30px;"
					class="img-circle"> 
				<small> &nbsp;By ${workflowInformation.author.userName} &nbsp; 
					<span class="glyphicon glyphicon-star"></span> 
					<c:if test="${workflowInformation.starUserNumber!=0}">
						<fmt:formatNumber maxFractionDigits="1"
							value="${workflowInformation.allStar/workflowInformation.starUserNumber}" />
					</c:if> 
					<c:if test="${workflowInformation.starUserNumber==0}">
					None
					</c:if>
					
					<span class="glyphicon glyphicon-play"></span>
					${workflowInformation.runningTime}
				</small>
			</h5>

		</div>
	</div>
</div>
