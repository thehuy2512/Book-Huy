<%@page import="bean.GioHangbean"%>
<%@page import="bo.GioHangbo"%>
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

	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	String msSua = request.getParameter("buttonsua");
	String sl = request.getParameter("txtsoluong");
	String msXoa = request.getParameter("buttonxoa");
	GioHangbo gh = (GioHangbo)session.getAttribute("gh");
	if(msSua!=null && sl!="0"){
		gh.Sua(msSua, Integer.parseInt(sl));
	}
	if(msXoa!=null){
		gh.Xoa(msXoa);
		
	}
	
	
	session.setAttribute("gh", gh);
	response.sendRedirect("htGioHang.jsp");
	

%>
</body>
</html>