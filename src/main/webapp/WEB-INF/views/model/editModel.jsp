<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>

<br />
<br />
<div class="container">
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
				<h2>${editModelDto.title}</h2>
				<h4>
					<small>Revised on ${editModelDto.creationTime } by
						${editModelDto.author.userName}</small>
				</h4>
				<hr />
		</div>
	</div>
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<ul class="nav nav-justified step step-square">



			<c:choose>
            <c:when test="${ editModelDto.activePage=='info' || editModelDto.activePage==null}">
                <li role="presentation" class="active">
                    <a href="#information" aria-controls="information" role="tab"
                        data-toggle="tab" >Basic Information</a>
                </li>
            </c:when>
            <c:otherwise>
                <li role="presentation">
                    <a href="#information" aria-controls="information" role="tab"
                        data-toggle="tab" >Basic Information</a>
                </li>
            </c:otherwise>
            </c:choose>

            <c:choose>
            <c:when test="${ editModelDto.activePage=='detail'}">
                <li role="presentation" class="active">
                    <a href="#detail" aria-controls="detail" role="tab"
                        data-toggle="tab" >Detail Information</a>
                </li>
            </c:when>
            <c:otherwise>
                <li role="presentation">
                    <a href="#detail" aria-controls="detail" role="tab"
                        data-toggle="tab" >Detail Information</a>
                </li>
            </c:otherwise>
            </c:choose> 


			<c:choose>
            <c:when test="${ editModelDto.activePage=='jurisdiction'}">
                <li role="presentation" class="active">
                    <a href="#jurisdiction" aria-controls="jurisdiction" role="tab"
                        data-toggle="tab" >Authorization</a>
                </li>
            </c:when>
            <c:otherwise>
                <li role="presentation">
                    <a href="#jurisdiction" aria-controls="jurisdiction" role="tab"
                        data-toggle="tab" >Authorization</a>
                </li>
            </c:otherwise>
            </c:choose>	
				
		    <c:choose>
            <c:when test="${ editModelDto.activePage=='diagram'}">
                <li role="presentation" class="active">
                    <a href="#diagram" aria-controls="diagram" role="tab"
                        data-toggle="tab" >Flow diagram</a>
                </li>
            </c:when>
            <c:otherwise>
                <li role="presentation">
                    <a href="#diagram" aria-controls="diagram" role="tab"
                        data-toggle="tab" >Flow diagram</a>
                </li>
            </c:otherwise>
            </c:choose>





			</ul>
		</div>
	</div>

	<div class="row">
		<!-- Nav tabs -->
		<!-- Tab panes -->

		<div class="tab-content">
		<c:choose>
		<c:when test="${ editModelDto.activePage=='info'|| editModelDto.activePage==null}">
			<div role="tabpanel" class="tab-pane information active" id="information">
		</c:when>
		<c:otherwise>
			<div role="tabpanel" class="tab-pane information " id="information">
		</c:otherwise>
		</c:choose>
				<div class="col-md-offset-3 col-md-6">
					<%@ include file="editModelInfo.jsp"%>
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
					<%@ include file="editModelDiagram.jsp"%>
				</div>
			</div>

		<c:choose>
		<c:when test="${ editModelDto.activePage=='jurisdiction'}">
			<div role="tabpanel" class="tab-pane jurisdiction active"
				id="jurisdiction">
		</c:when>
		<c:otherwise>
			<div role="tabpanel" class="tab-pane jurisdiction" id="jurisdiction">
		</c:otherwise>
		</c:choose>
				<div class="col-md-offset-3 col-md-6">
					<%@ include file="editModelAuthorization.jsp"%>
				</div>
			</div>

		<c:choose>
		<c:when test="${ editModelDto.activePage=='detail'}">
			<div role="tabpanel" class="tab-pane detail active" id="detail">
		</c:when>
		<c:otherwise>
			<div role="tabpanel" class="tab-pane detail" id="detail">
		</c:otherwise>
		</c:choose>
				<div class="col-md-offset-3 col-md-6">
						<%@ include file="editModelDetail.jsp"%>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /container -->
<%@ include file="../layouts/footer.jsp"%>

