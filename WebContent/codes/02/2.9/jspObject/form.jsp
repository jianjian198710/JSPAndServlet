<%@ page language="java" contentType="text/html; charset=GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�ռ������ı�ҳ</title>
</head>
<body>
<form id="form1" method="GET" action="request2.jsp">
�û���:<br/>
<input type="text" name="name"><hr/>
�Ա�:<br/>
��:<input type="radio" name="gender" value="��">
Ů:<input type="radio" name="gender" value="Ů"><hr/>
ϲ������ɫ:<br/>
��:<input type="checkbox" name="color" value="��">
��:<input type="checkbox" name="color" value="��">
��:<input type="checkbox" name="color" value="��"><hr/>
���ԵĹ���:<br/>
<select name="country">
	<option value="�й�">�й�</option>
	<option value="����">����</option>
	<option value="�ձ�">�ձ�</option>
</select>
<input type="submit" value="�ύ">
<input type="reset" value="����">
</form>
</body>
</html>