<%@page import="dao.CollegeManagementDAO"%>
<%@page import="pojo.Student"%>

<%

String studentId = request.getParameter("studId");

int status = CollegeManagementDAO.deleteStudent(studentId);
if(status == 1)
{
	response.sendRedirect("viewStudents.jsp"); 
}
else
{
	response.sendRedirect("error.jsp"); 
}

%>