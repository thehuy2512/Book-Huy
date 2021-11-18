<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Xổ số kiến thiết</title>
</head>
<body>
<%
Calendar c = Calendar.getInstance();
// lấy ngày giờ hệ thống
int ngay = c.get(Calendar.DAY_OF_MONTH);// lay ngay gio he thong
int thang = c.get(Calendar.MONTH)+1;// 0..11
int nam = c.get(Calendar.YEAR);
%>
<div align="right">
Hôm nay, ngày <%=ngay %> tháng <%=thang %> năm <%=nam %>
</div>
<form action="KetQuaXoSo.jsp" method="POST">
Chọn ngày: 
	<select name="sngay">
		<option> <%=ngay %></option>
    	<%for(int i=1;i<=31;i++){ %>
    	<option <%=(i==ngay?"selected":"" )%>> <%=i %> </option>
    	<%} %>
	</select>
Chọn tháng:  
	<select name="sthang">
		<option> <%=thang %></option>
  		<%for(int i=1;i<=12;i++){ %>
    	<option <%=(i==thang?"selected":"")%>> <%=i %> </option>
    	<%} %>
	</select>
Chọn năm:  
	<select name="snam">
		<option> <%=nam %></option>
    	<%for(int i=nam-10;i<=nam;i++){ %>
    	<option <%=(i==nam?"selected":"")%>> <%=i %> </option>
    	<%} %>
	</select>

<input type="Submit" name="butSub" value="XemKetQuaXoSo">
</form>


</body>
</html>