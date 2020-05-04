<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
String name = request.getParameter("name");
String sex = request.getParameter("sex");
if (sex.equals("male")){
	sex="남자";
}else{
	sex="여자";
}
String 에러메시지 =null;
request.setCharacterEncoding("utf-8");
if(request.getMethod() == "POST"){
	if(name==null || name.length() == 0){
		에러메시지="이름을 입력하세요";
	}
	else if(sex == null){
		에러메시지="성별을 입력하세요";
	}
}
%>
<title>Insert title here</title>
</head>
<style>
	table {border-collapse:collapse;}
	td {border: solid 1px #eee;}
</style>
<body>
<form method = "post">
	<h1>회원 등록</h1>
<div>
	<label>이름</label>
	<input type="text" name="name">
</div>
	
<div>
	<label>성별</label>
	<input id="r1" type="radio" name="sex" value="male"/>
	<label for="r1">남자</label>

	<input id="r2" type="radio" name="sex" value="female"/>
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