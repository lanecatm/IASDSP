<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 自动把表单中的值添加到user中 -->
<!-- 没有写action，提交会给/create -->
<h1>Create 1</h1>
<sf:form method="post" modelAttribute="user" action="create1">
    Username: <sf:input path="userName"/><sf:errors path="userName"/>    <br/>
    Password: <sf:password path="encryptedPassword"/><sf:errors path="encryptedPassword"/><br/>
    Nickname: <sf:input path="phoneNumber"/><sf:errors path="phoneNumber"/>  <br/>
    Email:    <sf:input path="email"/><sf:errors path="email"/>        <br/>
    <input type="submit" value="Add user"/>

</sf:form>
</body>
</html>