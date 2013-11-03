<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>获取GET请求参数</title>
</head>
<body>
<%  //获取请求里包含的查询字符串
	String rawQueryStr = request.getQueryString();
	out.println("原始查询String为:"+rawQueryStr+"<hr/>");
	//使用URLDecoder解码
	String queryStr = java.net.URLDecoder.decode(rawQueryStr,"gbk");
	out.println("解码后的String为:"+queryStr+"<hr/>");
	String[] paramPairs = queryStr.split("&");
	for(String paramPair:paramPairs){
		out.println("每个请求参数名,值为:"+paramPair+"<br/>");
		String[] nameValue = paramPair.split("=");
		out.println(nameValue[0]+"----->"+nameValue[1]);
	}
%>
</body>
</html>