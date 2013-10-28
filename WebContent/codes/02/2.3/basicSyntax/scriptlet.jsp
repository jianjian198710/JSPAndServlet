<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<table bgcolor="#9999dd" border="1" width="300px">
<% for(int i=0;i<10;i++){
%>
	<tr>
		<td>循环值:</td>
		<td><%=i%></td>
	</tr>
<% 	
	}
%>
</table>
</body>
</html>