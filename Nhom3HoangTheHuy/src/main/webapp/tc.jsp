<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ha ha</title>
</head>
<body>
	Xin chào mọi người.<br>
	Tôi là Huy.
	<hr>
	<h1>ĐƠN XIN PHÉP</h1>
	LẪN LỘN 4 LOẠI
	1. Văn bản thường gõ thế nào xuất ra thế đó.<br>
	2. Thẻ HTML -> thi hành chức năng của thẻ.<br>
	3. Đoạn javascript
	<script type="text/javascript">alert('Xin chào');</script> 
	4. Code java
	<%
		for(int i=1;i<=100;i++)
		{
			out.print(i*i+"<hr>");
		}
	%>
</body>
</html>