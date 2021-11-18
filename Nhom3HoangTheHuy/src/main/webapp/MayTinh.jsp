<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Calculator</title>
</head>
<body>

<%=session.getAttribute("alo") %>
<%
 String[] ds=(String[])request.getAttribute("dsht");
	for(String ht :ds)
		out.print(ht+"<hr>");


	long kq=0;
	if (request.getAttribute("kq")!=null)
	{
		kq=(long)request.getAttribute("kq");
	}
%>
		<form action="MayTinhController" method="post" align="center">
		  a=   <input name="txta" value="0" type="number"> <br>
		  b=   <input name="txtb" value="0" type="number"> <br> 
		  Ket qua:  <%=kq %><br>
		    <input name="butcong" value="+" type="submit">
		    <input name="buttru" value="-" type="submit">
		    <input name="butnhan" value="*" type="submit">
		    <input name="butchia" value="/" type="submit">
		</form>
       
</body>
</html>