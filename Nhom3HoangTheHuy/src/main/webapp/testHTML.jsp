<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="dd.css" />

<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center" width="1000px" cellspacing="0" class="bang">
	<tr>
      <td colspan="3" bgcolor="blue"> menu </td>
    </tr>
    <tr>
      <td valign="top" width="200px" bgcolor="gray"> menu trai 1 <hr>menu trai 2 </td>
      <td width="600px"> 
      <img src="img03.jpg" alt="không tìm thấy ảnh"><hr>
         <a href="tc.jsp?ts=tt"> Tin tuc </a> <hr>
         <a href="tc.jsp?ts=thao"> The thao</a> <hr>
         <a href="tc.jsp?ts=kd"> Kinh doanh</a> <hr>
         <form action="tc.jsp" method="post">
             User name: <input type="text" name="txtun" id="txtun" value="" placeholder="Enter a un"><hr>
             Pasword    <input type="password" name="txtpass" value="login"> <br>
             Giới tính    <input type="radio" name="txtpass" value="login"> <br>
             Sở thích   <input type="checkbox" name="txtpass" value="login"><br>
             Gửi kèm file   <input type="file" name="txtpass" value="login"><br>
             <input type="submit" name="btlogin" value="login">
              html5
              Email   <input type="email" name="txtpass" value="login"><br>
              Ngay sinh   <input type="date" name="txtpass" value="login"><br>
              Tuoi <input type="number" name="txtpass" value="login"><br>
               <input type="submit" name="btlogin" value="login">
         </form>
             
      
      </td>
      <td valign="top" width="200px"> Tim kiem </td>
    </tr>
   <tr>
      <td colspan="3"> Ban quyen: ..... </td>
    </tr>  
	
	</table>
</body>
</html>