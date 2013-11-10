<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>EL表达式-内置对象</title>
<!-- EL表达式11个内置对象
	 pageScope,requestScope,sessionScope,applicationScope,
	 param,paramValues,header,headerValues,
	 initParam,cookie -->
</head>
<body>
<form action="ELobjects.jsp" method="POST">
<input type="text" name="name" value="${param['name']}"/>
<input type="submit" value="submit"/>
<%  session.setAttribute("user", "abc"); 
	Cookie c = new Cookie("name","yeeku");
	c.setMaxAge(24*3600);
	response.addCookie(c);
%>
<table border="1" width="660" bgcolor="#aaaadd">
	<tr>
		<td width="170"><b>功能</b></td>
		<td width="200"><b>表达式语言</b></td>
		<td width="300"><b>计算结果</b></td>
	</tr>
	<tr>
		<td>取得请求参数的数值</td>
		<td>\${param["name"]}</td>
		<td>${param["name"]}</td>
	</tr>
	<tr>
		<td>取得请求参数的数值</td>
		<td>\${param.name}</td>
		<td>${param.name}</td>
	</tr>
	<tr>
		<td>取得请求头的值</td>
		<td>\${header.host}</td>
		<td>${header.host}</td>
	</tr>
	<tr>
		<td>取得session的属性值</td>
		<td>\${sessionScope["user"]}</td>
		<td>${sessionScope["user"]}</td>
	</tr>
	<tr>
		<td>取得指定的Cookie的值</td>
		<td>\${cookie["name"].value}</td>
		<td>${cookie["name"].value}</td>
	</tr>
</table>
</form>
</body>
</html>