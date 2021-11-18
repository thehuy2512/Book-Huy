<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
dung code java:<br>
<%
    String tb=(String)request.getAttribute("tb");
    out.print(tb);
%>
<hr> Dung thu vien the: <br>
<c:out value="${tb }"></c:out>
<br>C2:
${tb}
dung code java:<br>
<%
    String[] ht=(String[]) session.getAttribute("ht");
     for(String h: ht){
    	 out.print(h+ "<hr>");
     }
%>
<hr> Dung thu vien the: <br>
<c:forEach items="${sessionScope.ht }" var="h">
       ${h} <hr>
   </c:forEach>
   dung code java:<br>
<%
    ArrayList<loaibean> dsloai=( ArrayList<loaibean>)request.getAttribute("dsloai");
    for(loaibean L: dsloai)
    	 out.print(L.getMaloai()+":"+ L.getTenloai());
%>
<hr> Dung thu vien the: <br>
<h1 align="center">Loại</h1>
<c:forEach  items="${dsloai}" var="L">
    ${L.getMaloai() } |
    ${L.getTenloai() }
    <hr> 
</c:forEach>
<br>
<h1 align="center">Sách</h1>
<c:forEach items="${dssach}" var="S">
	${S.getMasach()} |
	${S.getTensach()} |
	${S.getMaloai()}
	<hr>
</c:forEach>
</body>
</html>