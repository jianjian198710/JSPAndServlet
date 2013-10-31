<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<!-- (1)JSP中application对应Servlet中ServletContext对象 
	 (2)可通过getInitParam读取Web.xml中context-param的值
	 (3)一般用于存放整个Web的状态数据-->
<body>
<% String driver = application.getInitParameter("driver");
   String url = application.getInitParameter("url");
   String user = application.getInitParameter("user");
   String pass = application.getInitParameter("pass");
   Class.forName(driver);
   Connection conn = DriverManager.getConnection(url, user, pass);
   Statement state = conn.createStatement();
   ResultSet rs = state.executeQuery("select * from jdbc_test");
%>
<table bgcolor="#9999dd" border="1" width="480">
<% while(rs.next()){
%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>