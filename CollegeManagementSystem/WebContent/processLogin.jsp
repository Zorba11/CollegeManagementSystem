<%@page import="dao.LoginDAO"%>
<%@page import="pojo.LoginInfo"%>
<%

String userName = request.getParameter("userName");
String password = request.getParameter("password");

if(LoginDAO.isUserValid(new LoginInfo(userName,password)))
{
	session.setAttribute("userName",userName);
	session.setMaxInactiveInterval(200); 
	//seting the active time for session
	//we need to check if the session attribute is not null in every page so the user won't be able to login directly with the URL
	
	response.sendRedirect("home.jsp"); 
}
else 
{
	response.sendRedirect("loginFailed.jsp"); 
}
%>