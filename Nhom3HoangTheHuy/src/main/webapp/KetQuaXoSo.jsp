<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kết quả xổ số</title>
</head>
<body>
<%	
	Random x = new Random();
	String tamngay =request.getParameter("sngay");
	String tamthang =request.getParameter("sthang");
	String tamnam =request.getParameter("snam");
	if( tamngay!= null && tamthang!= null && tamnam!= null ){
		%>
		<h1 align="center" >Kết quả xổ số kiến thiết</h1>
		<h2 align="center"><% out.print("Ngày "+tamngay+" tháng "+tamthang+" năm "+tamnam);%></h2>  
		<table align="center" border="1" cellspaceing="0" style="width:600px; height: 100px; background-color: white; color: red; text-align: center; vertical-align: middle;">
			<% for(int i=8;i>=0;i--) {%>
				<tr>
					<td>Giải <%= i==0?"đặc biệt":i %></td>
					<td>
						<%
						if (i==8) {
							out.print(x.nextInt(100));
						}
						if (i==7) {
							out.print(x.nextInt(1000));
						}
						if (i==6) {
							out.print(x.nextInt(10000)+"---");
							out.print(x.nextInt(10000)+"---");
							out.print(x.nextInt(10000));
						}
						if (i==5) {
							out.print(x.nextInt(1000));
						}
						if (i==4) {
							out.print(x.nextInt(100000)+"---");
							out.print(x.nextInt(100000)+"---");
							out.print(x.nextInt(100000)+"---");
							out.print(x.nextInt(100000)+"---");
							out.print(x.nextInt(100000));
						}
						if (i==3) {
							out.print(x.nextInt(100000)+"---");
							out.print(x.nextInt(100000));
						}
						if (i==2) {
							out.print(x.nextInt(100000));
						}
						if (i==1) {
							out.print(x.nextInt(100000));
						}
						if (i==0) {
							out.print(x.nextInt(100000));
						}
						%>
					</td>
				</tr>
				
			<%}	
			
			%>
		
		</table>
	<%}
	
	
	
%>
</body>
</html>