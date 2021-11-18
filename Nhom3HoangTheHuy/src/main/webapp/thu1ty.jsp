<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="thu1ty.jsp">
		n= <input type="text" name ="txtn"> <br>
		<input type="submit" name ="but1" value="Tong">
	</form>
	<%
	if(session.getAttribute("ss")==null)
		session.setAttribute("ss", (long)0);
	String tamn = request.getParameter("txtn");
	if(tamn!=null){
		//b1 gan session vao 1 bien nao do
		long s=(long)session.getAttribute("ss");
		//b2 thao tac tren bien
		s=s+Long.parseLong(tamn);
		//b3 luu gia tri vao section
		session.setAttribute("ss", s);
	}
		
	
	%>
	Tong: <%=session.getAttribute("ss") %>
</body>
</html>