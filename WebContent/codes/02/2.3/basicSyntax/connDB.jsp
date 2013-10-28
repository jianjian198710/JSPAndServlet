<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
	String filename = "H:/Developer/Java work space/CrazyJava/DBConfig/MySql.properties";
	File file = new File(filename);
	Properties properties = new Properties();
	properties.load(new FileInputStream(file));
	String driver = properties.getProperty("driver");
	String url = properties.getProperty("url");
	String user = properties.getProperty("user");
	String password = properties.getProperty("password");
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, user, password);
	Statement state = conn.createStatement();
	ResultSet rs = state.executeQuery("select * from jdbc_test");
%>
<table bgcolor="#9999dd" border="1" width="300px">
	<tr>
		<td>jdbc_name</td>
		<td>jdbc_desc</td>
	</tr>
<% 	while(rs.next()){
%>
	<tr>
		<td><%= rs.getString(1)%></td>
		<td><%= rs.getString(2)%></td>
	</tr>		
<% 	
	}
%>
</table>
</body>
</html>