<%@page import="bean.GioHangbean"%>
<%@page import="bo.GioHangbo"%>
<%@page import="bean.KhachHangbean"%>
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
<title>Lịch sử đặt hàng</title>
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
      <a class="navbar-brand" href="#">Shop Huy</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="HtSachController">Trang chủ</a></li>
      <li><a href="giohang.jsp">Giỏ hàng(<%=gh1!=null ? gh1.Tongsach() : 0 %>)</a></li>
      <li><a href="#">Thanh toán</a></li>
      <li><a href="#">Lịch sử mua hàng</a></li>
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
        <form method="post" action="menu.jsp">
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

<table class="table table-hover" align="center" >
    <thead style="background-color: pink" >
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
        <img src="<%=g1.getAnh()%>">Mã sách: <%=g1.getMasach() %>  Tên sách: <%=g1.getTensach()%></td>
        <td valign="top" width="200"><%=g1.getGia() %></td>
        <td valign="top" width="400">Số lượng:<%=g1.getSlmua() %>
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
		}
		%>
  </div>
  <div class="footer" style="background-color: gray">
		<center>
			
			<br><br>
			<b>Copyright @1999-2009 MINHKHAI.VN All rights Reserved. </b><br>
			Công Ty TNHH Minh Khai S.G (Nhà sách Minh Khai) <br>
			249 Nguyễn Thị Minh Khai, F. Nguyễn Cư Trinh, Q.1, Tp. Hồ Chí Minh<br>
			Giấy chứng nhận đăng ký kinh doanh số: 4102019159<br>
			Mã số doanh nghiệp 0303209716 - Đăng ký thay đổi lần 6 ngày 30/07/2010<br>
			Ðiện Thoại (028)39250590 - (028)39250591 -Fax: (028)39257837<br>
			Website: <a href="">www.minhkhai.vn</a> và <a href="">www.minhkhai.com.vn</a><br>
			E-mail:<b>mk.book@minhkhai.vn</b> hoặc <b>mk.book@minhkhai.com.vn </b>
		</center>
	</div>
 
</body>
</html>