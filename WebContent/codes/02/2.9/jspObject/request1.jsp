<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ page import="java.util.*" %>
<%@ page import="java.nio.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��ȡPOST�������</title>
</head>
<body>
<%
	Enumeration<String> headerNames = request.getParameterNames();
	while(headerNames.hasMoreElements()){
		String headerName = headerNames.nextElement();
		out.println(headerName+"------>"+request.getParameter(headerName)+"<br/>");
	}
	out.println("<hr/>");
	request.setCharacterEncoding("gbk");
	//���ñ����ַ���
	String name = request.getCharacterEncoding();
	String gender = new String(request.getParameter("gender").getBytes("ISO-8859-1"),"GBK");
	//����ж����ͬ������,�����Ի��ж��ֵ 
	String[] colors = request.getParameterValues("color");
	String national = request.getParameter("country");
%>
��������:<%=name%><br/>
�����Ա�:<%=gender %><br/>
��ϲ������ɫ:<%for(String color:colors){out.println(color+" ");} %>
�����ԵĹ���:<%=national %><br/>
</body>
</html>