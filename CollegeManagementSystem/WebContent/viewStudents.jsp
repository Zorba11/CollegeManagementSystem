<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.CollegeManagementDAO"%>
<%@page import="pojo.Student"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Products</title>
</head>
<body>
<%@ include file="header.jsp" %>  

	<table align="center" class="studentTable">
		<thead>
			<tr>
				<th>Student ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Course</th>
				<th>Grade</th>
				<th colspan="2">Actions</th>
			</tr> 
		</thead>
		<%
			List<Student> studentList = CollegeManagementDAO.getAllStudents();
			for (Student p : studentList) {
		%>
		<tr>
			<td><%=p.getStudentId() %></td>
			<td><%=p.getStudentFirstName()%></td>
			<td><%=p.getStudentLastName()%></td>
			<td><%= p.getStudentCourse() %></td>
			<td><%= p.getStudentGrade() %></td>
			<td><button class="actionBtn" onclick="location.href = 'editStudent.jsp?studId=<%= p.getStudentId()%>';">Edit</button></td>
			<td><button class="actionBtn" onclick="location.href = 'processDeleteStudent.jsp?studId=<%= p.getStudentId()%>';">Delete</button></td>
		</tr>

		<%
}
%>
	</table>

</body>
</html>