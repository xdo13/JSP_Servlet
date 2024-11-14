<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Post Servlet 방식</title>
</head>
<body>
	<h1>Post Servlet 방식</h1>
	<form method="post"  action="postServlet">
	<table>
		<tr>
		<td>id:</td><td><input name="id"></td>
		</tr>
		<tr>
		<td>pwd:</td><td><input type="password" name="pwd"></td>
		</tr>
		<tr>
		<td>email:</td><td><input type="email" name="email"></td><!-- 이메일 타입 새로 생김 -->
		</tr>
	</table>
		
		<input type="submit" value="가입">
		</form>


</body>
</html>