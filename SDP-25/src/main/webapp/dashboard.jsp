<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>
<%
    // Retrieve the username from the session
    String username = (String) session.getAttribute("username");
%>
<h1>Login Success! Welcome, <%= username %></h1>
<script>
    // Redirect to the main page after 3 seconds
    setTimeout(function() {
        window.location.href = 'main.jsp';
    }, 3000);
</script>
</body>
</html>
