<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<%
session.removeAttribute("userid");
session.invalidate(); 
%>
<h2>Logout successfully</h2>
<a href="loginPage.jsp">Login Page</a>
</body>
</html>