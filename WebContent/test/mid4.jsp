<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String name = request.getParameter("name");
String sex = request.getParameter("sex");
%>
<body>
<form>
	<h1>회원 등록</h1>
	
	<label>이름</label>
	<input type="text" name="name">
	
	<label>성별</label>
	<input id="r1" type="radio" name="sex" value="male" checked/>
	<label for="r1">남자</label>
	
	<input id="r2" type="radio" name="sex" value="femle"/>
	<label for="r2">여자</label>
	
	<button type="submit" name="btn">회원 등록</button>
	
	<table>
		<tr>
			<td>이름</td>
			<td><%=name %></td>
		</tr>
		
		<tr>
			<td>성별</td>
			<td><%= sex %></td>
		</tr>
	</table>
</form>
</body>
</html>