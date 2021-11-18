<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.sachbean"%>
<%@page import="bo.ChiTietDatHangbo"%>
<%@page import="bean.ChiTietDatHangbean"%>
<%@page import="bean.DatHangbean"%>
<%@page import="java.util.ArrayList"%>
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
<title>Lịch sử mua hàng</title>
</head>
<body>
<%	
	request.setCharacterEncoding("utf-8") ;
	response.setCharacterEncoding("utf-8");

	String ml=request.getParameter("ml");
	String key=request.getParameter("txttk");
	
	KhachHangbean kh= (KhachHangbean)session.getAttribute("kh");
	GioHangbo gh1 = (GioHangbo) session.getAttribute("gh");
	ArrayList<DatHangbean> hd= (ArrayList<DatHangbean>)request.getAttribute("hoadon");
	//ArrayList<ChiTietDatHangbean> ct = new ArrayList<ChiTietDatHangbean>();
	sachbo sbo = new sachbo();
	ChiTietDatHangbo ctdh = new ChiTietDatHangbo();
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


<h1 align="center">Lịch sử mua hàng</h1>
<% if(kh!=null){ %>)
<h3 align="center" style="font-family: monospace;color: gray">KH: <%=kh.getHoten()%>- Address: <%=kh.getDiachi() %></h3>
<table class="table table-hover">
	
   	<% 
   	for(DatHangbean s:hd){ %>
   		<tr>
   			<hr>
   			<h4 style="color: red;padding-left: 10rem">Mã hoá đơn: <%=""+s.getMaHoaDon() %></h4>
   			<h4 style="color: black; text-align:right;">Ngày mua: <%=""+s.getNgayMua() %></h4>			
   			<table border="1" width=100%">
   				<thead style="background-color: pink;" >
   					<tr>
   						<td width="350px" height="50px" style="font-weight: bold; text-align: center; color: blue">Ảnh</td>
   						<td width="100px" style="font-weight: bold; text-align: center; color: blue">Mã sách</td>
   						<td  style="font-weight: bold; text-align: center; color: blue;">Tên sách</td>
   						<td width="300px" style="font-weight: bold; text-align: center; color: blue">Tác giả</td>
   						<td width="100px" style="font-weight: bold; text-align: center; color: blue">Số lượng</td>
   						<td width="200px" style="font-weight: bold; text-align: center; color: blue">Ghi chú</td>
   					</tr>
   				</thead>
   				<tbody>
   				<!-- viet code duyet chi tiet  -->
   				<%for (ChiTietDatHangbean ct: ctdh.getChiTietDatHang(s.getMaHoaDon())) {
   						for(sachbean sb :sbo.getsachtheoma(ct.getMaSach())){
   				%>
   					<tr>
   						<td style="text-align: center;">
   							<img src="<%=sb.getAnh()%>" style="width: 200px;">
   						</td>
   						<td style="text-align: center;font-family: monospace;"><%=ct.getMaSach() %></td>
   						<td style="text-align: left;font-family: monospace;font-weight: bold;color: red;font-size: 25px"><%=sb.getTensach() %></td>
   						<td style="text-align: left;font-family: monospace;"><%=sb.getTacgia() %></td>
   						<td style="text-align: center;font-family: monospace;font-weight: bold;font-size: 20px;"><%=ct.getSoLuongMua() %></td>
   						<td><%=ct.isDaMua() %></td>
   					</tr>
   					<%}} %>
   				</tbody>
   				
   			</table>
   			<hr>
   		</tr>
   <%}%>
 </table>
  <br>
  <%} %>
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