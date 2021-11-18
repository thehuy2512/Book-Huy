<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kết quả bảng cửu chương</title>
</head>
<body>
<%
	String tamgt = request.getParameter("txtgt");
	Long gt= Long.parseLong(tamgt);
	if(tamgt!=null) {
		%>
		<h1 align="center">Kết quả của bảng cửu chương : <%=gt %></h1>
		<table align="center" border="1" cellspacing="0" width="300" heigh="600" style="text-align: center;">
			<%
				for(int i=1;i<=9;i++){
					
					%>
				<tr>
					<td><%out.print( gt+"x"+i+"="+ gt*i);%></td>				
				</tr>
					
					<%
				}
			%>
			
		</table>
	 <%}
%>
</body>
</html>