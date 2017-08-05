<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="col-md-12">
<c:forEach items="${showModelDto.workflowInformation.workflowVersions}"
        var="workflowVersion" varStatus="status">
        <s:url value="/resources/image/user.jpg" var="userImg" />
        <s:url value="/resources/image/Example1.png" var="workflowImg" />
        <%@ include file="modelVersionTile.jsp"%>
    </c:forEach>
</div>

<script>
function publishVersion(versionId) {
    var data = {}
    
    $.ajax({
        type : "POST",
        contentType : "application/json",
        url : "./version/" + versionId + "/publish",
        data : JSON.stringify(data),
        dataType : 'json',
        timeout : 100000,
        success : function(data) {
            console.log("SUCCESS: ", data);
            window.location = "./show?active_page=diagram";
        },
        error : function(e) {
            console.log("ERROR: ", e);

        },
        done : function(e) {
            console.log("DONE");
        }
    });
}
</script>