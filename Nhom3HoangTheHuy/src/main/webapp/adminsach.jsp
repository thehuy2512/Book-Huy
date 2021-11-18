<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Sách</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Admin Shop</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="HtSachController">Home</a></li>
        <li><a href="#">Loại</a></li>
        <li><a href="ViewSachController">Sách</a></li>
        <li><a href="#">Khách Hàng</a></li>
        <li><a href="ViewHoaDonController">Hoá Đơn</a></li>
        <li><a href="#">Chi Tiết Hoá Đơn</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="DangXuatController"><span class="glyphicon glyphicon-log-in"></span> Log out</a></li>
      </ul>
    </div>
  </div>
</nav>
	<h2 style="text-align: center;color: red;">Chi tiết sách có trong cửa hàng</h2>
									<!-- Thêm sách -->
									
    <h4 style="text-align:right;"><a href="tam123" style="font: bold;font-size: 20px;text-align: right;">Thêm sách mới</a></h4>
    <br>								 
    <form action="">
    
    </form>							
    								<!-- tạo bảng vào đây -->
    	<table border="1" width=100% class="table table-hover">
    		<thead style="background-color: pink;text-align: center;">
    			<tr>
    				<td width="10px" height="50px" style="font-weight: bold; text-align: center; color: blue">STT</td>
    				<td width="200px" height="50px" style="font-weight: bold; text-align: center; color: blue">Mã sách</td>
    				<td width="350px" height="50px" style="font-weight: bold; text-align: center; color: blue">Tên sách</td>
    				<td width="100px" height="50px" style="font-weight: bold; text-align: center; color: blue">Số lượng</td>
    				<td width="150px" height="50px" style="font-weight: bold; text-align: center; color: blue">Giá</td>
    				<td width="100px" height="50px" style="font-weight: bold; text-align: center; color: blue">Mã loại</td>
    				<td width="100px" height="50px" style="font-weight: bold; text-align: center; color: blue">Số tập</td>
    				<td width="100px" height="50px" style="font-weight: bold; text-align: center; color: blue">Ảnh</td>
    				<td width="250px" height="50px" style="font-weight: bold; text-align: center; color: blue">Ngày nhập</td>
    				<td width="350px" height="50px" style="font-weight: bold; text-align: center; color: blue">Tác giả</td>
    				<td width="200px" style="font-weight: bold; text-align: center; color: blue;">Sửa/Xoá</td>
    			</tr>
    			
    		</thead>
    		<tbody>
    			<c:set var="stt" value="${0 }"></c:set>
    			<c:forEach items="${dssach}" var="s">
    				<tr>	
    					<c:set var="stt" value="${stt+1 }"></c:set>
    					<td style="color: red">${stt}</td>
    					<td>${s.getMasach()}</td>
    					<td>${s.getTensach()}</td>
    					<td>${s.getSoluong()}</td>
    					<td>${s.getGia()}</td>
    					<td>${s.getMaloai()}</td>
    					<td>${s.getSotap()}</td>
    					<td><img src="${s.getAnh()}" style="width: 200px;"></td>
    					<td>${s.getNgayNhap()}</td>
    					<td style="font-family: monospace;">${s.getTacgia()}</td>
    					<td>
    					<a href="tam1234?masach=${s.getMasach()}">Sửa</a><hr>
    					
    					<a href="xoaViewSachController?masach=${s.getMasach()}">Xoá</a>
    					
    					</td>
    					
    				</tr>
    			</c:forEach>
    		</tbody>
    	</table>
<footer class="container-fluid text-center">
  <p>
  Copyright @2021 Hoàng Thế Huy All rights Reserved. </b><br>
			IT Developer Huế<br>
			1/116 Phan Chu Trinh Street, Huế City, Thừa Thiên Huế Provide, Việt Nam<br>
			Giấy chứng nhận đăng ký kinh doanh số: xxx<br>
			Mã số doanh nghiệp xxxxxxx - Đăng ký thay đổi lần 8 ngày 10/11/2021<br>
			Ðiện Thoại (+84)78 8843 951 - Mail: thehuy.2pro@gmail.com<br>
			Website: <a href="https://www.facebook.com/hth.hth.790/">https://www.facebook.com/hth.hth.790/</a> và <a href="">www.chuadk.com.vn</a><br>
			Rất vui được phục vụ quý khách
  
  </p>
</footer>

</body>
</html>