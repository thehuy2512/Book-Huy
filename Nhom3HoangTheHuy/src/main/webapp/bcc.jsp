<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table align="center" border="1" cellspaceing="0">
   <%for(int i=1; i<=10; i++){%>
   
   <tr><%
	   for(int j=1; j<10; j++){ %>
	     <td><%out.print(j+" x "+i+ "= "+ i*j);%></td>
	   <%}%>
	</tr><%
   
   }%>   
</table>
</body>
</html>