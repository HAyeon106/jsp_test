<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String n = request.getParameter("num");
if(n==null){
	n="one";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	select {margin-top: 10px; padding:3px;}
	button {margin-top: 10px;}
</style>
<body>
<form>
<div class="radio">
	<input id="r1" type="radio" name="num" value="one" <%= n.equals("one")?"checked":"" %>/>
	<label for="r1">one</label>
	
	<input id="r2" type="radio" name="num" value="two" <%= n.equals("two")?"checked":"" %>/>
	<label for="r2">two</label>
	
	<input id="r3" type="radio" name="num" value="three" <%= n.equals("three")?"checked":"" %>/>
	<label for="r3">three</label>
</div>

<div class="select">
	<select>
		<option value="one" <%= n.equals("one")?"selected":"" %>>one</option>
		<option value="one" <%= n.equals("two")?"selected":"" %>>two</option>
		<option value="one" <%= n.equals("three")?"selected":"" %>>three</option>	
	</select>
</div>
	
	<button type="submit" name="btn">Ok</button>
</form>
</body>
</html>