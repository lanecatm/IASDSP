<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>

<br />
<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<div class="row">
				<h3>${showModelDto.title}</h3>
				<h4>
					<small>${showModelDto.introduction}</small>
				</h4>
				<hr />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<ul class="nav nav-justified step step-square">
			
				<li role="presentation" class="info">	
						<c:choose>
						<c:when test="${ editModelDto.activePage=='info'}">
							<a href="#information" aria-controls="information" role="tab"
								data-toggle="tab" class="active">Basic Information</a>
						</c:when>
						<c:otherwise>
							<a href="#information" aria-controls="information" role="tab"
								data-toggle="tab">Basic Information</a>
						</c:otherwise>
					</c:choose></li>
					
				
				<li role="presentation" class="diagram">
					<c:choose>
						<c:when test="${ editModelDto.activePage=='diagram'}">
							<a href="#diagram" aria-controls="diagram" role="tab"
								data-toggle="tab" class="active">Flow diagram</a>
						</c:when>
						<c:otherwise>
								<a href="#diagram" aria-controls="diagram" role="tab"
								data-toggle="tab">Flow diagram</a>
							</c:otherwise>
					</c:choose></li>
					
					
				<li role="presentation" class="juridiction">
				<c:choose>
					<c:when test="${ editModelDto.activePage=='jurisdiction'}">
				<a href="#jurisdiction" aria-controls="input" role="tab"
					data-toggle="tab" class="active">Authorization</a>
					</c:when>
						<c:otherwise>
						<a href="#jurisdiction" aria-controls="input" role="tab"
					data-toggle="tab">Authorization</a>
					</c:otherwise>
					</c:choose></li>

					
					
				<li role="presentation" class="version">
				<c:choose>
					<c:when test="${ editModelDto.activePage=='version'}">
				<a href="#version" aria-controls="version" role="tab"
					data-toggle="tab" class="active">Version</a>
							</c:when>
						<c:otherwise>
							<a href="#version" aria-controls="version" role="tab"
					data-toggle="tab">Version</a>
						</c:otherwise>
					</c:choose></li>
				
					
					
			</ul>
		</div>
	</div>

	<div class="row">
		<br /> <br />
		<!-- Nav tabs -->
		<!-- Tab panes -->
		
		<div class="tab-content">
			<c:choose>
				<c:when test="${ editModelDto.activePage=='info'}">
					<div role="tabpanel" class="tab-pane info active" id="information">
				</c:when>
				<c:otherwise>
					<div role="tabpanel" class="tab-pane info " id="information">
				</c:otherwise>
			</c:choose>

			<div class="col-md-offset-3 col-md-6">
				<div class="row">
					<%@ include file="editModelInfo.jsp"%>
				</div>
			</div>
		</div>
		<!-- tab -->
		<c:choose>
				<c:when test="${ editModelDto.activePage=='diagram'}">
		 	<div role="tabpanel" class="tab-pane diagram active" id="diagram">
			</c:when>
				<c:otherwise>
				<div role="tabpanel" class="tab-pane diagram" id="diagram">
				</c:otherwise>
			</c:choose>
			<div class="col-md-offset-3 col-md-6">
				<div class="row">
					<%@ include file="editModelDiagram.jsp"%>
				</div>
			</div>
		</div>
		
				<c:choose>
				<c:when test="${ editModelDto.activePage=='jurisdiction'}">
		<div role="tabpanel" class="tab-pane jurisdiction active" id="jurisdiction">
			</c:when>
				<c:otherwise>
						<div role="tabpanel" class="tab-pane jurisdiction" id="jurisdiction">
							</c:otherwise>
			</c:choose>
		
			<div class="col-md-offset-3 col-md-6">
				<div class="row">
					<%@ include file="editModelAuthorization.jsp"%>
				</div>
			</div>
		</div>
		
		<c:choose>
				<c:when test="${ editModelDto.activePage=='version'}">
		<div role="tabpanel" class="tab-pane version active" id="version">
			</c:when>
				<c:otherwise>
				<div role="tabpanel" class="tab-pane version" id="version">
					</c:otherwise>
			</c:choose>
				
				
			<div class="col-md-offset-3 col-md-6">
				<div class="row">
					<%@ include file="editModelVersion.jsp"%>
				</div>
			</div>
		</div>
	</div>

</div>



</div>
</div>
</div>
<!-- /container -->


