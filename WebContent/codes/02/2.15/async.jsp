<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<ul>
<c:forEach items="${books}" var="book">
	<li>${book}</li>
</c:forEach>
</ul>
</body>
</html>