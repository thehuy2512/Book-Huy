<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thêm sách</title>
</head>
<body>
<h1 style="text-align: center;color: red;font-family: monospace;">Thêm thông tin sách</h1>
<div style="border: 1;font-size: 30px;">
	<form method="post" action="tam123" enctype="multipart/form-data">
		Mã sách: <input type="text" name="txtmasach" placeholder="Nhập mã sách" style="font-size: 30px">  
		<hr> 
		Tên sách: <input type="text" name="txttensach" placeholder="Nhập tên sách" style="font-size: 30px">  
		<hr> 
		Số lượng: <input type="text" name="txtsoluongsach" placeholder="Nhập số lượng sách" style="font-size: 30px">  
		<hr> 
		Giá: <input type="text" name="txtgiasach" placeholder="Nhập giá sách" style="font-size: 30px">  
		<hr> 
		Mã loại: <select name="txtmaloaisach" style="font-size: 30px;"> 
			<c:forEach items="${dsloai }" var="i">
				<option value="${i.getMaloai() }">${i.getTenloai() } </option>
			</c:forEach>
		</select>  
		<hr> 
		Số tập: <input type="text" name="txtsotapsach" placeholder="Nhập số tập" style="font-size: 30px">  
		<hr> 
		Ảnh: <input type="file" name="txtanhsach" placeholder="Nhập ảnh" style="font-size: 30px">  
		<hr> 
		Tác giả: <input type="text" name="txttacgiasach" placeholder="Nhập tác giả" style="font-size: 30px">  
		<hr> 
		<input type="submit" value="Thêm" style="font-size: 30px;">
	</form>
</div>	
</body>
</html>