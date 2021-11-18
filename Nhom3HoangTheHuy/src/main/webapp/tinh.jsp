<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	String tama = request.getParameter("txta");
	String tamb = request.getParameter("txtb");
	Long kq=(long)0;
	if(tama!=null && tamb!=null){
		Long a = Long.parseLong(tama);
		Long b = Long.parseLong(tamb);
		if( request.getParameter("butcong")!=null)
			kq=a+b;
		if( request.getParameter("buttru")!=null)
			kq=a-b;
		if( request.getParameter("butnhan")!=null)
			kq=a*b;
		if( request.getParameter("butchia")!=null)
			if (b!=0) 
				kq= a/b;
			
		//out.print(" Ket qua "+ kq.toString());
		response.sendRedirect("MayTinh.jsp?kq="+kq.toString()+"&tama="+a+"&tamb="+b);
	}
%>
</body>
</html>