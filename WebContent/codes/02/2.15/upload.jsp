<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>文件上传</title>
</head>
<body>
<form method="post" action="/JSPAndServlet/upload" enctype="multipart/form-data">
	文件名:<input type="text" id="name" name="name"/><br/>
	选择文件:<input type="file" id="file" name="file"/><br/>
	<input type="submit" value="上传"/><br/>
</form>
</body>
</html>