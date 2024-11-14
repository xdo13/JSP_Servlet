<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet Session</title>
</head>
<body>
	<h1>Servlet Session</h1>
	<%
	if(id != null){
	%>
	<%=id%>님 반갑습니다 <p/>
	<a href='logout.jsp'>로그아웃</a>
	<%
	}else{
	%>
	<form method="post" action="loginServlet">
	id: <input name="id"><br/>
	pwd: <input type="password" name="pwd"><br/>
	<input type="submit" value="로그인">
	</form>
	<%} %>
</body>
</html>