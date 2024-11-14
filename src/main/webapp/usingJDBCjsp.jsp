<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*" %>
<%
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection conn = null;
 Statement stmt = null;
 ResultSet rs = null;
 
 String id = "",
		pwd = "",
		name = "",
		num1 = "",
		num2 = "",
		email = "",
		phone = "",
		zipcode = "",
		address = "",
		job = "";
 int counter = 0;
 try{
	 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "dbuser", "12345");
	 //Connection 생성
	 stmt = conn.createStatement();
	 rs = stmt.executeQuery("SELECT *FROM tblRegister");
		%>
<html>
<head>
<meta charset="UTF-8">
<title>JSP에서 데이터베이스 연동 예제</title>
<link href="style.css" rel="stylesheet" type"text/css">
</head>
<body bgcolor="#FFFFCC">
	<h2>JSP 스트립트릿에서 데이터베이스 연동 예제</h2><br/>
	<h3>회원정보</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>NUM1</strong></td>
			<td><strong>NUM2</strong></td>
			<td><strong>EMAIL</strong></td>
			<td><strong>PHONE</strong></td>
			<td><strong>ZIPCODE/ADDRESS</strong></td>
			<td><strong>JOB</strong></td>
		</tr>
		<%
			if(rs != null) {
				while (rs.next()){
					id = rs.getString("id");
					pwd = rs.getString("pwd");
					name = rs.getString("name");
					num1 = rs.getString("num1");
					num2 = rs.getString("num2");
					email = rs.getString("email");
					phone = rs.getString("phone");
					zipcode = rs.getString("zipcode");
					address = rs.getString("address");
					job = rs.getString("job");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=pwd%></td>
			<td><%=name%></td>
			<td><%=num1%></td>
			<td><%=num2%></td>
			<td><%=email%></td>
			<td><%=phone%></td>
			<td><%=zipcode%>/<%=address%></td>
			<td><%=job%></td>
			<%
				counter++;
				} //end while
			}//end if
			%>
			</tr>
	</table>
	<br/>
	total records : <%=counter%>
	<%
 }catch (SQLException aqlException){
	 System.out.println("sql exception");
 }catch(Exception exceoption) {
	 System.out.println("exception");
 }finally {
	 if (rs != null)
		 try {rs.close();}
	 	catch(SQLException ex){}
	 if (stmt != null)
		 try {stmt.close();}
	 	catch (SQLException ex){}
	 if (conn != null)
		 try {conn.close();}
	 	catch(Exception ex) {}
 }
	%>
</body>
</html>