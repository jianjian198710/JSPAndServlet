<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie cookie = new Cookie("username","AAA");
	//使用Cookie必须设置生存期限,否则Cookie将会随浏览器关闭而关闭
	cookie.setMaxAge(2*3600);
	response.addCookie(cookie);
%>
</body>
</html>