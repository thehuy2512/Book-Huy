<%@page import="bean.SinhVienbean"%>
<%@page import="bo.SinhVienbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Sinh Viên</title>
</head>
<body>
	htSinhVien.jsp:
	
	
<form action="">
	Nhập tên sv: <input type="text" name="txttensv" value="" placeholder="Nhập tên sv">
	<input type="submit" name="buttim" >
</form>

<%
    SinhVienbo svbo= new SinhVienbo();

  %>
  <table class="table table-bordered">
      <%for(SinhVienbean sv: svbo.getsv()){ %>
         <tr>
         	 
             <td><%=sv.getMasv() %> </td>
             <td><%=sv.getHoten() %> </td>
 			 <td><%=sv.getDiachi()%> </td>
             <td><%=sv.getDtb() %> </td>
             <td><%=sv.getMalop() %> </td>
           
          </tr> 
          <%} %>    
  </table>
	
</body>
</html>