<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="col-md-4 col-sm-6 ">

	<c:url value="/application/${wikiPage.path}/show"
		var="applicationUrl">
	</c:url>
	<c:if test="${(status.index) % 4 =='0'}">
		<div class="thumbnail tile tile-wide tile-blue">
			<a href="${applicationUrl}"> <br /> <img src="${applicationImg}" alt=""
				style="width: 45px; height: 45px;" class="img-circle" /> <br />
				<h3>${wikiPage.title}</h3>
				<p class="hero-bar-text">${wikiPage.createdAt}</p>
			</a>
		</div>
	</c:if>
	<c:if test="${(status.index) % 4 =='1'}">
		<div class="thumbnail tile tile-wide tile-clouds">
			<a href="${applicationUrl}"> <br /> <img src="${applicationImg}" alt=""
				style="width: 45px; height: 45px;" class="img-circle" /> <br />
				<h3>${wikiPage.title}</h3>
				<p>${wikiPage.createdAt}</p>
			</a>
		</div>
	</c:if>
	<c:if test="${(status.index) % 4 =='2'}">
        <div class="thumbnail tile tile-wide tile-peter-river">
            <a href="${applicationUrl}"> <br /> <img src="${applicationImg}" alt=""
                style="width: 45px; height: 45px;" class="img-circle" /> <br />
                <h3>${wikiPage.title}</h3>
                <p class="hero-bar-text">${wikiPage.createdAt}</p>
            </a>
        </div>
    </c:if>
    <c:if test="${(status.index) % 4 =='3'}">
        <div class="thumbnail tile tile-wide tile-wet-asphalt">
            <a href="${applicationUrl}"> <br /> <img src="${applicationImg}" alt=""
                style="width: 45px; height: 45px;" class="img-circle" /> <br />
                <h3>${wikiPage.title}</h3>
                <p class="hero-bar-text">${wikiPage.createdAt}</p>
            </a>
        </div>
    </c:if>
</div>