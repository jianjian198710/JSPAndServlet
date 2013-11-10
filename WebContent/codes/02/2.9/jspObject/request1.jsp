<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.nio.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>获取POST请求参数</title>
</head>
<body>
<%	//request.setCharacterEncoding("utf-8");
	Enumeration<String> headerNames = request.getParameterNames();
	while(headerNames.hasMoreElements()){
		String headerName = headerNames.nextElement();
		out.println(headerName+"------>"+request.getParameter(headerName)+"<br/>");
	}
	out.println("<hr/>");
	
	//设置编码字符集
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	//如果有多个相同的属性,该属性会有多个值 
	String[] colors = request.getParameterValues("color");
	String national = request.getParameter("country");
%>
您的名字:<%=name%><br/>
您的性别:<%=gender %><br/>
您喜欢的颜色:<%for(String color:colors){out.println(color+" ");} %>
您来自的国家:<%=national %><br/>
</body>
</html>