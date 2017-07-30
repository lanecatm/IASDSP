<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>

<br />
<br />
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
                <h2>Execute Model</h2>
                
                <hr />
        </div>
    </div>
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <ul class="nav nav-justified step step-square">

			<c:choose>
			<c:when test="${ editModelDto.activePage=='param' || editModelDto.activePage==null}">
				<li role="presentation" class="active">
					<a href="#param" aria-controls="param" role="tab"
						data-toggle="tab" >Choose parameter</a>
				</li>
			</c:when>
			<c:otherwise>
				<li role="presentation">
					<a href="#param" aria-controls="param" role="tab"
						data-toggle="tab" >Choose parameter</a>
				</li>
			</c:otherwise>
			</c:choose>
					
			<c:choose>
            <c:when test="${ editModelDto.activePage=='execute'}">
                <li role="presentation" class="active">
                    <a href="#execute" aria-controls="execute" role="tab"
                        data-toggle="tab" >Execute</a>
                </li>
            </c:when>
            <c:otherwise>
                <li role="presentation">
                    <a href="#execute" aria-controls="execute" role="tab"
                        data-toggle="tab" >Execute</a>
                </li>
            </c:otherwise>
            </c:choose>
            
            <c:choose>
            <c:when test="${ editModelDto.activePage=='other'}">
                <li role="presentation" class="active">
                    <a href="#other" aria-controls="other" role="tab"
                        data-toggle="tab" >Other</a>
                </li>
            </c:when>
            <c:otherwise>
                <li role="presentation">
                    <a href="#other" aria-controls="other" role="tab"
                        data-toggle="tab" >Other</a>
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
        <c:when test="${ editModelDto.activePage=='param'|| editModelDto.activePage==null}">
            <div role="tabpanel" class="tab-pane param active" id="param">
        </c:when>
        <c:otherwise>
            <div role="tabpanel" class="tab-pane param " id="param">
        </c:otherwise>
        </c:choose>
                <div class="col-md-offset-3 col-md-6">
                    <%@ include file="show_prepare.jsp"%>
                </div>
            </div>
        <!-- tab -->
        <c:choose>
        <c:when test="${ editModelDto.activePage=='execute'}">
            <div role="tabpanel" class="tab-pane execute active" id="execute">
        </c:when>
        <c:otherwise>
            <div role="tabpanel" class="tab-pane execute" id="execute">
        </c:otherwise>
        </c:choose>
                <div class="col-md-offset-3 col-md-6">
                   <%@ include file="show_execute.jsp"%>
                </div>
            </div>

        <c:choose>
        <c:when test="${ editModelDto.activePage=='other'}">
            <div role="tabpanel" class="tab-pane other active"
                id="other" style="display: none">
        </c:when>
        <c:otherwise>
            <div role="tabpanel" class="tab-pane other" id="other"  style="display: none">
        </c:otherwise>
        </c:choose>
                <div class="col-md-offset-3 col-md-6">
                    <%@ include file="show_share.jsp"%>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- /container -->
<%@ include file="../layouts/footer.jsp"%>

