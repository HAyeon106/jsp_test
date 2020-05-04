<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String s=request.getParameter("num");
int n;
if(s==null) n = 0;
else
	n = Integer.parseInt(s);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table {border-collapse:collapse; margin-top: 10px; width:150px;}
	td {border:solid 1px #eee; padding:3px;}
	input {width: 150px;}
</style>
<body>
<form>
	<input type="text" name="num" value=0>
	<button type="submit" name="btn">단</button>
<div>
	<table>
		<% for(int i=1; i<=9; i++) {%>
		<tr>
			<td colspan="2"> 
			<%=n%> x <%=i%> = <%=n*i %>
			</td>
		</tr>
		<% } %>
	</table>
</div>
</form>
</body>
</html>