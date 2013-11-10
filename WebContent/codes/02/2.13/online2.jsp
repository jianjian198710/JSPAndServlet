<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="codes2_10.loginServlet.DbDAO" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
在线用户:
<table width="640" border="1">
<%
	DbDAO dd = new DbDAO("com.mysql.jdbc.Driver","jdbc:mysql://127.0.0.1:3306/jianjian",
			"root","198710");
	ResultSet rs = dd.query("select * from online_inf");
	while(rs.next()){
%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
	</tr>
<%} %>
</table>
</body>
</html>