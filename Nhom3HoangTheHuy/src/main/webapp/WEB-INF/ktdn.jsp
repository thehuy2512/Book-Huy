
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String user = request.getParameter("txtuser");
	String pass = request.getParameter("txtpass");
	if(user.equals("abc") && pass.equals("123")){
		response.sendRedirect("menu.jsp");
		session.setAttribute("noti", "dang nhap thanh cong");
		session.setAttribute("user", user);
		session.setAttribute("pass", pass);
	} else{
		response.sendRedirect("menu.jsp");
		session.setAttribute("noti", "Ten dang nhap hoac mat khau sai");
	}
		
%>
</body>
</html>