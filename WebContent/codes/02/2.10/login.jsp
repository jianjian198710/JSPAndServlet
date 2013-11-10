<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<span style="color:red;font-weight:bold">
<% if(request.getAttribute("err")!=null){
	out.println(request.getAttribute("err")+"<br/>");
}%>
</span>
<form id="login" method="post" action="../../../LoginServlet">
ÓÃ»§Ãû:<input type="text" name="username"><br/>
ÃÜÂë:&nbsp;&nbsp;<input type="password" name="password"><br/>
<input type="submit" value="µÇÂ¼"><br/>
</form>
</body>
</html>