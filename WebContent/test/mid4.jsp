<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
String name = request.getParameter("name");
String sex = request.getParameter("sex");
String 에러메시지 =null;
request.setCharacterEncoding("utf-8");

if(request.getMethod() == "POST"){
	if(name==null || name.length() == 0){
		에러메시지="이름을 입력하세요";
	}
	else if(sex == null || sex.length() == 0){
		에러메시지="성별을 입력하세요";
	}
}
%>
<title>Insert title here</title>
</head>
<style>
	table {border-collapse:collapse; margin-top: 30px;}
	tr {width:80px;}
	td {border: solid 1px #eee;}
	div.radio {margin-top: 10px;}
	button {margin-top: 10px; padding: 3px;}
	div.error { margin: 10px; padding: 10px 20px; background-color: #fdd; border: 1px solid #faa; }
</style>
<body>
<form method = "post">
	<h1>회원 등록</h1>
<div>
	<label>이름</label> </br>
	<input type="text" name="name">
</div>
	
<div class="radio">
	<label>성별</label> </br>
	<input id="r1" type="radio" name="sex" value="male"<%= sex.equals("male")?"checked":"" %>>
	<label for="r1">남자</label>
	</br>
	<input id="r2" type="radio" name="sex" value="female"<%= sex.equals("female")?"checked":"" %>>
	<label for="r2">여자</label>
</div>
	
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

<% if(에러메시지 !=null){ %>
	<div class="error">
		회원등록 실패: <%=에러메시지 %>
	</div>
<%} %>

</body>
</html>