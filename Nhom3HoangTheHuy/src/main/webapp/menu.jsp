<%@page import="bean.DangNhapbean"%>
<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="bo.KhachHangbo"%>
<%@page import="bean.KhachHangbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="bo.loaibo"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <link rel="stypesheet" type="text/css" href="styletest.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Menu Shop</title>
</head>
<body>
<%	
	request.setCharacterEncoding("utf-8") ;
	response.setCharacterEncoding("utf-8");
	
	//lay ve ds loai , ds sach 
	ArrayList<sachbean> ds= (ArrayList<sachbean>)request.getAttribute("dssach");
	ArrayList<loaibean> dsloai= (ArrayList<loaibean>)request.getAttribute("dsloai");
	//ArrayList<KhachHangbean> kh= (ArrayList<KhachHangbean>)request.getAttribute("kh");
	KhachHangbean kh= (KhachHangbean)session.getAttribute("kh");
	DangNhapbean admin1=(DangNhapbean)session.getAttribute("admin1");
%>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Book Huy</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="HtSachController">Trang ch???</a></li>
      <li><a href="htGioHang.jsp">Gi??? h??ng</a></li>
      <li><a href="#">Thanh to??n</a></li>
      <li><a href="LichSuMuaHangController">L???ch s??? mua h??ng</a></li>
      <% if(admin1!=null){ %>
      <li><a href="adminhome.jsp">Admin Home</a></li>
      <%}%>
    </ul>
    
   	
  	
   	<ul class="nav navbar-nav navbar-right">
   		
	     
	    	<%
	    	if(admin1!=null){%>
	    		<li><a>Xin ch??o admin: <%=admin1.getTenDangNhap() %></a>
	    		<li><a href="DangXuatController">Log out</a></li>
	    	<% } else {if(kh!= null) {%>	    		
	    		<li><a>Xin ch??o: <%=kh.getHoten() %></a></li>   			
	    		<li><a href="DangXuatController">Log out</a></li>
	    		<%} else {
	    		 if (kh==null){	%>
	    		<li><a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-log-in"></span> ????ng k??</a></li>
	    		<li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> ????ng nh???p</a></li>  		  			    		   		
	    		<% } %>    		
	    		<%  if(session.getAttribute("tb")=="1"){
	    			out.print("<script>alert('????ng nh???p sai !');</script>" );
	    		 	} 
	    			if(session.getAttribute("tb")=="2"){
	    			out.print("<script>alert('????ng k??: t??i kho???n t???n t???i !');</script>" );
	    			}
	    			if(session.getAttribute("tb")=="3"){
		    			out.print("<script>alert('????ng k??: m???t kh???u kh??ng kh???p !');</script>" );
		    			}
	    			if(session.getAttribute("tb")=="4"){
		    			out.print("<script>alert('????ng k??: th??nh c??ng h??y ????ng nh???p !');</script>" );
		    			}
	    			if(session.getAttribute("tb")=="5"){
		    			out.print("<script>alert('????ng k??: th???t b???i l???i sql !');</script>" );
		    			}
	    		 %>
	    		<% }}%> 
	     	
	    	
    </ul>
   	
   	
   	
  </div>
</nav>

<!-- The Modal1 -->
<div class="modal" id="myModal1">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Th??ng tin ????ng k??</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      
      <div class="modal-body">      	
        <form method="post" action="KtDangKyController">
        	H??? v?? t??n: <input type="text" name="txtname" placeholder="Nh???p h??? t??n kh??ch h??ng" class="form-control">  <br> 
        	?????a ch???: <input type="text" name="txtaddress" placeholder="Nh???p ?????a ch??? kh??ch h??ng" class="form-control">  <br> 
			T??n ????ng nh???p: <input type="text" name="txtundk" placeholder="Nh???p m?? kh??ch h??ng" class="form-control">  <br>  
			M???t kh???u: <input type="password" name="txtpassdk" placeholder="Nh???p m???t kh???u" class="form-control">  <br>
			X??c nh???n m???t kh???u: <input type="password" name="txtconfirmpass" placeholder="Nh???p l???i m???t kh???u" class="form-control">  <br>    
			<input type="submit" name="butRegister" value="????ng k??" class="btn-primary">  
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
        <h4 class="modal-title">Th??ng tin ????ng nh???p</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      
      <div class="modal-body">      	
        <form method="post" action="KtDangNhapController">
			T??n ????ng nh???p: <input type="text" name="txtun" placeholder="Nh???p m?? kh??ch h??ng" class="form-control">  <br>  
			M???t kh???u: <input type="password" name="txtpass" placeholder="Nh???p m???t kh???u" class="form-control">  <br>  
			<input type="submit" name="butLogin" value="????ng nh???p" class="btn-primary">  
        </form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

	<%
      //Lay ve all sach, cac thong tin client    
      %>
    <table align="left" cellspacing="0" width="100%" >
    <tr>
       <td valign="top" width="200">
            
            <table class="table table-hover" style="background-color: navy;"> 
           
           <%
               for(loaibean loai: dsloai){
           %>
               <tr style="text-align: center">
                  <td>
                      <a href="HtSachController?ml=<%=loai.getMaloai()%>"><b style="font-size: 15px;"><%=loai.getTenloai()%></b></a>
                  </td>
               </tr>
               <%} %>
   			 </table>
            
       </td>
       
       
       <td valign="top" width="600">
							<div class="container">
							 
							  <div id="myCarousel" class="carousel slide" data-ride="carousel">
							    <!-- Indicators -->
							    <ol class="carousel-indicators">
							      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							      <li data-target="#myCarousel" data-slide-to="1"></li>
							      <li data-target="#myCarousel" data-slide-to="2"></li>
							    </ol>
							
							    <!-- Wrapper for slides -->
							    <div class="carousel-inner">
							
							      <div class="item active">
							        <img src="image_sach/imgslider1.jpg" alt="BookSpace" style="width:50%;align-content: center;">
							        <div class="carousel-caption" style="text-align: right;color: blue">
							          <h3>Book Space</h3>
							          <p>Kh??ng gian s???ch s??? tho??ng m??t.</p>
							        </div>
							      </div>
							
							      <div class="item">
							        <img src="image_sach/imgslider3.jpg" alt="??ng ch???" style="width:50%;align-content: center;">
							        <div class="carousel-caption" style="text-align: right;color: blue">
							          <h3>Ho??ng Th??? Huy - General Manager</h3>
							          <p>Welcome to Huy Book Store. You need read many book before you leave!</p>
							        </div>
							      </div>
							    
							      <div class="item">
							        <img src="image_sach/imgslider4.jpg" alt="?????c Nh??n T??m" style="width:50%;align-content: center;">
							        <div class="carousel-caption" style="text-align: right;color: blue">
							          <h3>Cu???n s??ch b??n ch???y nh???t</h3>
							          <p>Thank you everyone! </p>
							        </div>
							      </div>
							  
							    </div>
							
							    <!-- Left and right controls -->
							    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
							      <span class="glyphicon glyphicon-chevron-left"></span>
							      <span class="sr-only">Previous</span>
							    </a>
							    <a class="right carousel-control" href="#myCarousel" data-slide="next">
							      <span class="glyphicon glyphicon-chevron-right"></span>
							      <span class="sr-only">Next</span>
							    </a>
							  </div>
							</div>			
			  <table class="table table-hover">
			  
			     <%
			      int n=ds.size();
			     for(int i=0;i<n;i++){
			      sachbean s= ds.get(i);
			     %>
			       <tr style="text-align: center;">
			          <td>
			             <img src="<%=s.getAnh()%>" style="width: 200px"><br>
			              <a href="GioHangController?ms=<%=s.getMasach() %>&tg=<%=s.getTacgia() %>&ts=<%=s.getTensach() %>&gia=<%=s.getGia() %>&anh=<%=s.getAnh()%>">  <img src="image_sach/mua.jpg"></a> <br>
			              <h4 style="color: Blue;font-family: monospace;"><%=s.getTensach() %> </h4> <br>
			              <%=s.getTacgia()%> <br>
			              Gi?? b??n: <b><%=s.getGia()%> ??</b> <br>
			          </td>
 					  <%i++;
			            if(i<n){
			            	s= ds.get(i);
			           	          %>
			          <td>
			             <img src="<%=s.getAnh()%> " style="width: 200px"><br>
			              <a href="GioHangController?ms=<%=s.getMasach() %>&tg=<%=s.getTacgia() %>&ts=<%=s.getTensach() %>&gia=<%=s.getGia() %>&anh=<%=s.getAnh()%>">  <img src="image_sach/mua.jpg"></a> <br>
			              <h4 style="color: Blue;font-family: monospace;"><%=s.getTensach() %> </h4> <br>
			              <%=s.getTacgia()%> <br>
			              Gi?? b??n: <b><%=s.getGia()%> ??</b> <br>
			          </td>
			          <%} %>
			          <%i++;
			            if(i<n){
			            	s= ds.get(i);
			            	%>
					    <td>
					       <img src="<%=s.getAnh()%>" style="width: 200px"><br>
					       <a href="GioHangController?ms=<%=s.getMasach() %>&tg=<%=s.getTacgia() %>&ts=<%=s.getTensach() %>&gia=<%=s.getGia() %>&anh=<%=s.getAnh()%>">  <img src="image_sach/mua.jpg"></a> <br>
					       <h4 style="color: Blue;font-family: monospace;"><%=s.getTensach() %> </h4> <br>
					       <%=s.getTacgia()%> <br>
					       Gi?? b??n: <b><%=s.getGia()%> ??</b> <br>
					    </td>
						<%} %>
				
				</tr>
			<%} %>
			</table>
 		</td>
 	
	   <td valign="top" width="200">		
		<form action="HtSachController" method="post" align="right">
			<input type="text" name="txttk" />
			<input type="submit" value="Search" name="but1" />
          </form>
       </td>
	   
  </table>
<hr>
<div class="footer">
		<center>
			
			<br><br>
			<b>Copyright @2021 Ho??ng Th??? Huy All rights Reserved. </b><br>
			IT Developer Hu???<br>
			1/116 Phan Chu Trinh Street, Hu??? City, Th???a Thi??n Hu??? Provide, Vi???t Nam<br>
			Gi???y ch???ng nh???n ????ng k?? kinh doanh s???: xxx<br>
			M?? s??? doanh nghi???p xxxxxxx - ????ng k?? thay ?????i l???n 8 ng??y 10/11/2021<br>
			??i???n Tho???i (+84)78 8843 951 - Mail: thehuy.2pro@gmail.com<br>
			Website: <a href="https://www.facebook.com/hth.hth.790/">https://www.facebook.com/hth.hth.790/</a> v?? <a href="">www.chuadk.com.vn</a><br>
			R???t vui ???????c ph???c v??? qu?? kh??ch
		</center>
	</div>
</body>
</html>