<%@ page language="java" contentType="text/html; charset=GB18030" errorPage="error.jsp"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<!-- (1)JSP�ű����账���쳣,��Ϊ��Щ�ű��Ѿ�����try����
	 (2)JSP����������Ȼ��Ҫ����Checked�쳣
	 (3)ֻ�е�isErrorPage��������Ϊtrueʱ�ſɷ���Exception���ö��� -->
<title>JSP�쳣�������</title>
</head>
<body>
<%
	int a=6;
	int b=a/0;
%>
</body>
</html>