<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String s=request.getParameter("num");
int n;
if(s==null) n = 0;
else
	n = Integer.parseInt(s);
%>
<body>
<form>
	<table>
		<input type="text" name="num" value=0>
		<button type="submit" name="btn">단</button>
		
		
		<% for(int i=1; i<=9; i++) {%>
		<tr>
			<%=n%> x <%=i%> = <%=n*i %>
		</tr>
		<% } %>
	</table>
</form>
</body>
</html>