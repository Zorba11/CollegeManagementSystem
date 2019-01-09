<%@page import="dao.CollegeManagementDAO"%>
<%@page import="pojo.Student"%>

<%

String studentId = request.getParameter("studId");
String studentFirstName = request.getParameter("studFName");
String studentLastName = request.getParameter("studLName");
String studentCourse = request.getParameter("studCourse");
Integer studentGrade = Integer.parseInt(request.getParameter("studGrade"));

Student student = new Student(studentId,studentFirstName,studentLastName,studentCourse,studentGrade);

int status = CollegeManagementDAO.updateStudent(student);
if(status == 1)
{
	response.sendRedirect("viewStudents.jsp"); 
}
else
{
	response.sendRedirect("error.jsp"); 
}

%>