<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>EL���ʽ-���ö���</title>
<!-- EL���ʽ11�����ö���
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
		<td width="170"><b>����</b></td>
		<td width="200"><b>���ʽ����</b></td>
		<td width="300"><b>������</b></td>
	</tr>
	<tr>
		<td>ȡ�������������ֵ</td>
		<td>\${param["name"]}</td>
		<td>${param["name"]}</td>
	</tr>
	<tr>
		<td>ȡ�������������ֵ</td>
		<td>\${param.name}</td>
		<td>${param.name}</td>
	</tr>
	<tr>
		<td>ȡ������ͷ��ֵ</td>
		<td>\${header.host}</td>
		<td>${header.host}</td>
	</tr>
	<tr>
		<td>ȡ��session������ֵ</td>
		<td>\${sessionScope["user"]}</td>
		<td>${sessionScope["user"]}</td>
	</tr>
	<tr>
		<td>ȡ��ָ����Cookie��ֵ</td>
		<td>\${cookie["name"].value}</td>
		<td>${cookie["name"].value}</td>
	</tr>
</table>
</form>
</body>
</html>