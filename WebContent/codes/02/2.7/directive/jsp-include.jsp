<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>jsp-include测试</title>
</head>
<body>
<!-- (1)动态导入只是使用一个include方法来插入目标页的内容,而不是将目标页面完全融入到本页面中 
	 (2)静态导入编译指令会起作用,而动态导入编译指令则失去作用
	 (3)可使用jsp:param增加额外参数
	 (4)和jsp:forward十分相似,从生成的Servlet看出,forward使用_jspx_page_context的forward()方法
	    include动作使用JspRuntimeLibrary的include()方法,forward拿目标页面代替原有页面,而include则拿目标页面插入原有页面-->
<jsp:include page="../../2.3/basicSyntax/scriptlet.jsp"></jsp:include>
</body>
</html>