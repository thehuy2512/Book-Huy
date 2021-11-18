<%@page import="bean.Khoabean"%>
<%@page import="bo.Khoabo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.SinhVienbean"%>
<%@page import="bo.SinhVienbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>DS Sinh Viên</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	htSinhVien.jsp:
<%
    
	request.setCharacterEncoding("utf-8") ;
    response.setCharacterEncoding("utf-8");
    SinhVienbo svbo= new SinhVienbo();
    Khoabo kbo= new Khoabo();
    String mk=request.getParameter("mk");
    String key=request.getParameter("txtTim");
    ArrayList<SinhVienbean> ds=svbo.getsv();
    if(mk!=null) ds=svbo.TimMaKhoa(mk);
    else
    	if(key!=null) ds=svbo.Tim(key);
	
  %>
  <table align="center" cellspacing="0" width="1000">
  	<tr>
  		<td valign="top" width="200">
  		
  		<% for(Khoabean k: kbo.getkhoa()) { %>
  			<a href="htSinhVien.jsp?mk=<%=k.getMakhoa()%>"><%=k.getTenkhoa() %></a><hr>
  			<% } %>
  		</td>
  		<td>
  			<table class="table table-striped">
      		<%
     		for(SinhVienbean sv: ds){ %>
     			    <tr>
           			  <td><%=sv.getMasv() %> </td>
           			  <td><%=sv.getHoten() %> </td>
 					  <td><%=sv.getDiachi()%> </td>
            		  <td><%=sv.getDtb() %> </td>
             		  <td><%=sv.getMalop() %> </td>
          
          			</tr> 
          			<%} %>    
  			</table>
  		</td>
  		<td>
  			<form action="htSinhVien.jsp" method="post" align="right">
			<input type="text" name="txtTim" />
			<input type="submit" value="Search" />
</form>
  		</td>
  			
  </table>

</body>
</html>