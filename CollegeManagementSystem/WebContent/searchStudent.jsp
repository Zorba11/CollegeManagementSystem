<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.CollegeManagementDAO"%>
<%@page import="pojo.Student"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Product</title>
</head>
<body>
<%@ include file="header.jsp" %>  
<div align="center" style="padding-top:25px;">
	<form action="searchStudent.jsp">
		<label>Enter Student ID: </label>
		<input type="text" name="studId" size="25" class="searchTextField"/>
		<button class="actionBtn">Search</button>
	</form>
</div> 
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
			String studentId = request.getParameter("studId");
			if(studentId != null)
			{
				Student s = CollegeManagementDAO.getStudentById(studentId);
			
				if(s != null)
				{
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
	    <%		}
				else
				{
		%>
			<tr>
				<td colspan="5">No record to display</td>
			</tr>
		<% 
				}
			}
			else 
			{
		%>
			<tr>
				<td colspan="5">No record to display</td>
			</tr>
		<% 
			}
		%>
	</table>

</body>
</html>