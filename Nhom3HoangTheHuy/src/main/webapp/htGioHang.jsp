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
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
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

	

	String ml=request.getParameter("ml");
	String key=request.getParameter("txttk");
	

	

	KhachHangbean kh= (KhachHangbean)session.getAttribute("kh");
	GioHangbo gh1 = (GioHangbo) session.getAttribute("gh");

%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Book Huy</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="HtSachController">Trang chủ</a></li>
      <li><a href="htGioHang.jsp">Giỏ hàng(<%=gh1!=null ? gh1.Tongsach() : 0 %>)</a></li>
      <li><a href="#">Thanh toán</a></li>
      <li><a href="LichSuMuaHangController">Lịch sử mua hàng</a></li>
    </ul>
    
   	
  
   	<ul class="nav navbar-nav navbar-right">
	      <%
	    	
	    	if(kh!= null) {%>	    		
	    		<li><a>Xin chào: <%=kh.getHoten() %></a></li>   			
	    		<li><a href="DangXuatController">Log out</a></li>
	    		<%} else {
	    		 if (kh==null){	%>
	    		<li><a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-log-in"></span> Đăng ký</a></li>
	    		<li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>  		  			    		   		
	    		<% } %>    		
	    		<%  if(session.getAttribute("tb")=="1"){
	    			out.print("<script>alert('Đăng nhập sai !');</script>" );
	    		 	} 
	    			if(session.getAttribute("tb")=="2"){
	    			out.print("<script>alert('Đăng ký: tài khoản tồn tại !');</script>" );
	    			}
	    			if(session.getAttribute("tb")=="3"){
		    			out.print("<script>alert('Đăng ký: mật khẩu không khớp !');</script>" );
		    			}
	    			if(session.getAttribute("tb")=="4"){
		    			out.print("<script>alert('Đăng ký: thành công hãy đăng nhập !');</script>" );
		    			}
	    			if(session.getAttribute("tb")=="5"){
		    			out.print("<script>alert('Đăng ký: thất bại lỗi sql !');</script>" );
		    			}
	    		 %>
	    		<% }%> 
    </ul>
   	
   	
   	
  </div>
</nav>
<!-- The Modal1 -->
<div class="modal" id="myModal1">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Thông tin đăng ký</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      
      <div class="modal-body">      	
        <form method="post" action="KtDangKyController">
        	Họ và tên: <input type="text" name="txtname" placeholder="Nhập họ tên khách hàng" class="form-control">  <br> 
        	Địa chỉ: <input type="text" name="txtaddress" placeholder="Nhập địa chỉ khách hàng" class="form-control">  <br> 
			Tên đăng nhập: <input type="text" name="txtundk" placeholder="Nhập mã khách hàng" class="form-control">  <br>  
			Mật khẩu: <input type="password" name="txtpassdk" placeholder="Nhập mật khẩu" class="form-control">  <br>
			Xác nhận mật khẩu: <input type="password" name="txtconfirmpass" placeholder="Nhập lại mật khẩu" class="form-control">  <br>    
			<input type="submit" name="butRegister" value="Đăng ký" class="btn-primary">  
        </form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Thông tin đăng nhập</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">      	
        <form method="post" action="KtDangNhapController">
			Tên đăng nhập: <input type="text" name="txtun" placeholder="Nhập mã khách hàng" class="form-control">  <br>  
			Mật khẩu: <input type="password" name="txtpass" placeholder="Nhập mật khẩu" class="form-control">  <br>  
			<input type="submit" name="butLogin" value="Đăng nhập" class="btn-primary">  
        </form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


<h1 align="center">Giỏ hàng của bạn</h1>
<h4 align="center" style="color: blue;">Tổng số sách đã mua: <%=gh1!=null ? gh1.Tongsach() : 0%> </h4>

<table class="table table-hover">
    <thead style="background-color: pink;"  >
      <tr>
        <th>Tên sách</th>
        <th>Giá</th>
        <th>Số lượng</th>
        <th>Cập nhật/ Xoá</th>
      </tr>
    </thead>
    <tbody>
   	<%
   	if (gh1!=null)
   		for(GioHangbean g1: gh1.ds){   	
   	%>
      <tr>
      	
        <td valign="top" width="600" style="color: red">
        <img src="<%=g1.getAnh()%>" style="width: 200px">Mã sách: <%=g1.getMasach() %>  Tên sách: <%=g1.getTensach()%></td>
        <td valign="top" width="200"><%=""+g1.getGia() %></td>
        <td valign="top" width="400">Số lượng:<%=""+g1.getSlmua() %>
        	<form action="SuaGioHangController" method="get">
        	<input type="number" min="0" name="txtsoluong" value="0">
        </td>  
        <td valign="top" width="200">
        		    <button class="btn-link" name="buttonsua" value="<%=g1.getMasach()%>">Cập Nhật</button>	<hr>	
        	        <button class="btn-link" name="buttonxoa" value="<%=g1.getMasach()%>">Xoá</button>
        </td>  
        	</form>
        	
      </tr>
      <%}  %>
    </tbody>
  </table>
  <br>
  <div align="center" style="font-family: monospace;">
	
  	<h2>Tổng tiền: <%=gh1!=null ? gh1.Tongtien() : 0%> Đồng</h2>
  	
  </div>
   <div align="center" >
   	
	<a href="HtSachController" style="border: 1; color:blue; font-size: 30px">Tiếp tục mua hàng |</a>
	<a href="DatHangController" style="border: 1; color:green; font-size: 30px">Xác nhận đặt mua |</a>
  	<a href="" style="border: 1; color: red; font-size: 30px">Thanh toán</a>
  	<% if(session.getAttribute("tb")=="6"){
		out.print("<script>alert('Phải đăng nhập mới có thể đặt mua !');</script>" );
		} 
  	if(session.getAttribute("tb")=="7"){
		out.print("<script>alert('Đã đặt mua !');</script>" );
		session.setAttribute("tb", "-1");
		}
		%>
  </div>
  <div class="footer" style="background-color: gray">
		<center>
			
			<br><br>
			<b>Copyright @2021 Hoàng Thế Huy All rights Reserved. </b><br>
			IT Developer Huế<br>
			1/116 Phan Chu Trinh Street, Huế City, Thừa Thiên Huế Provide, Việt Nam<br>
			Giấy chứng nhận đăng ký kinh doanh số: xxx<br>
			Mã số doanh nghiệp xxxxxxx - Đăng ký thay đổi lần 8 ngày 10/11/2021<br>
			Ðiện Thoại (+84)78 8843 951 - Mail: thehuy.2pro@gmail.com<br>
			Website: <a href="https://www.facebook.com/hth.hth.790/">https://www.facebook.com/hth.hth.790/</a> và <a href="">www.chuadk.com.vn</a><br>
			Rất vui được phục vụ quý khách
		</center>
	</div>
  
</body>
</html>