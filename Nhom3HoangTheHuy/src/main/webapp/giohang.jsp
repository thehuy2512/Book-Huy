<%@page import="bo.GioHangbo"%>
<%@page import="bean.GioHangbean"%>
<%@page import="bo.KhachHangbo"%>
<%@page import="bean.KhachHangbean"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stypesheet" type="text/css" href="styletest.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Giỏ hàng</title>
</head>
<body>

<%
    request.setCharacterEncoding("utf-8") ;
   response.setCharacterEncoding("utf-8");

	String masach = request.getParameter("ms");
	String tensach = request.getParameter("ts");
	String tacgia = request.getParameter("tg");
	String tamanh = request.getParameter("anh");
	String tamgia = request.getParameter("gia");
	GioHangbo gh =null;
	if(masach!=null){	
	if(session.getAttribute("gh")==null){
		gh= new GioHangbo();
		session.setAttribute("gh", gh);
	}
	
		gh = (GioHangbo) session.getAttribute("gh");
		gh.Them(masach, tensach, tacgia, tamanh,Long.parseLong(tamgia), (int)1);
		gh.Tongsach();
		gh.Tongtien();
		session.setAttribute("gh", gh);
	}
	
	response.sendRedirect("htGioHang.jsp");

	
 %>


</body>
</html>