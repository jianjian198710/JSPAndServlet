<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<h3>forward的原始页面</h3>
<!-- 执行forward指令时,地址不会发生改变,参数不会丢失 -->
<jsp:forward page="forward-result.jsp">
	<jsp:param name="age" value="29"/>
</jsp:forward>
</body>
</html>