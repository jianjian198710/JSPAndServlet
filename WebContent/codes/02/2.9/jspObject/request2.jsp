<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>��ȡGET�������</title>
</head>
<body>
<%  //��ȡ����������Ĳ�ѯ�ַ���
	String rawQueryStr = request.getQueryString();
	out.println("ԭʼ��ѯStringΪ:"+rawQueryStr+"<hr/>");
	//ʹ��URLDecoder����
	String queryStr = java.net.URLDecoder.decode(rawQueryStr,"utf-8");
	out.println("������StringΪ:"+queryStr+"<hr/>");
	String[] paramPairs = queryStr.split("&");
	for(String paramPair:paramPairs){
		out.println("ÿ�����������,ֵΪ:"+paramPair+"<br/>");
		String[] nameValue = paramPair.split("=");
		out.println(nameValue[0]+"----->"+nameValue[1]);
	}
%>
</body>
</html>