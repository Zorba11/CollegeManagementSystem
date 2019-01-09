<%
session.invalidate();
response.sendRedirect("login.jsp");
//session invalidates and takes the user to the login page.
%>