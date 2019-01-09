<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="dao.CollegeManagementDAO"%>
<%@page import="pojo.Student"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body>
	<%@ include file="header.jsp" %>

	<div align="center">
		<form action="processAddStudent.jsp" method="post">
			<table class="studentTable">
				<thead>
					<tr>
						<th colspan="2">
							Student Details
						</th>
					</tr>
				</thead>
				<tr>
					<td>Student ID</td>
					<td><input type="text" name="studId" size="20"
						class="studentTextField" /></td>
				</tr>
				<tr>
					<td>Student First Name</td>
					<td><input type="text" name="studFName" size="20"
						class="studentTextField" /></td>
				</tr>
				<tr>
					<td>Student Last Name</td>
					<td><input type="text" name="studLName" size="20"
						class="studentTextField" /></td>
				</tr>
				<tr>
					<td>Course</td>
					<td><input type="text" name="studCourse" size="20"
						class="studentTextField" /></td>
				</tr>
				<tr>
					<td>Grade</td>
					<td><input type="text" name="studGrade" size="20"
						class="studentTextField" /></td>
				</tr>
			</table>
			<button class="actionBtn" style="margin-top:10px">Add</button>
		</form>
	</div>
</body>
</html>