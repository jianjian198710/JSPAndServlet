<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>jsp-include����</title>
</head>
<body>
<!-- (1)��̬����ֻ��ʹ��һ��include����������Ŀ��ҳ������,�����ǽ�Ŀ��ҳ����ȫ���뵽��ҳ���� 
	 (2)��̬�������ָ���������,����̬�������ָ����ʧȥ����
	 (3)��ʹ��jsp:param���Ӷ������
	 (4)��jsp:forwardʮ������,�����ɵ�Servlet����,forwardʹ��_jspx_page_context��forward()����
	    include����ʹ��JspRuntimeLibrary��include()����,forward��Ŀ��ҳ�����ԭ��ҳ��,��include����Ŀ��ҳ�����ԭ��ҳ��-->
<jsp:include page="../../2.3/basicSyntax/scriptlet.jsp"></jsp:include>
</body>
</html>