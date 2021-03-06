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
			for (Student s : studentList) {
		%>
		<tr>
			<td><%=s.getStudentId() %></td>
			<td><%=s.getStudentFirstName()%></td>
			<td><%=s.getStudentLastName()%></td>
			<td><%= s.getStudentCourse() %></td>
			<td><%= s.getStudentGrade() %></td>
			<td><button class="actionBtn" onclick="location.href = 'editStudent.jsp?studId=<%= s.getStudentId()%>';">Edit</button></td>
			<td><button class="actionBtn" onclick="location.href = 'processDeleteStudent.jsp?studId=<%= s.getStudentId()%>';">Delete</button></td>
		</tr>

		<%
}
%>
	</table>

</body>
</html>