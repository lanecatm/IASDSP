<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <c:forEach items="${testSharedProcessRecordList}"
        var="sharedProcessRecord" varStatus="status">
        shared process record ${sharedProcessRecord.id}
        <br/>
        equal to process ${sharedProcessRecord.testProcessInformation}
		<br/>
        include process:
        <c:forEach items="${sharedProcessRecord.subTestProcessInformations}"
        var="testProcessInformation" varStatus="status">
            Process ${testProcessInformation.id} with star ${testProcessInformation.testProcessStar.id}
            <br/>
        </c:forEach>
        <hr/>
    </c:forEach>
</body>
</html>