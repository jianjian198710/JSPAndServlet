<%@ page language="java" contentType="text/html; charset=GB18030" isErrorPage="true"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>异常处理页面</title>
</head>
<body>
异常类型是:<%=exception.getClass() %><br/>
异常信息是:<%=exception.getMessage() %>
</body>
</html>