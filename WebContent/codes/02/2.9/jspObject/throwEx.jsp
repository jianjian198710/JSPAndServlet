<%@ page language="java" contentType="text/html; charset=GB18030" errorPage="error.jsp"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<!-- (1)JSP脚本无需处理异常,因为这些脚本已经处于try块中
	 (2)JSP声明部分依然需要处理Checked异常
	 (3)只有当isErrorPage属性设置为true时才可访问Exception内置对象 -->
<title>JSP异常处理机制</title>
</head>
<body>
<%
	int a=6;
	int b=a/0;
%>
</body>
</html>