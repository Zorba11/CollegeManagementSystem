<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%
	if(session.getAttribute("userName") == null)
	{
		response.sendRedirect("login.jsp"); 
	}
	%>
	<nav class="navbar">
		<ul class="navbar-nav">
			<li><a href="home.jsp">Home</a></li>
			<li><a href="addStudent.jsp">Add Student</a></li>
			<li><a href="viewStudents.jsp">View Students</a></li>
			<li><a href="searchStudent.jsp">Search Student</a></li>
			<li style="float:right;margin-right:10px"><a href="logout.jsp">Logout</a></li>
		</ul>
	</nav>
</body>
</html>