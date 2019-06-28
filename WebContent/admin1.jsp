<%@page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String pswd=request.getParameter("pswd");
if(name.equals("admin")&&pswd.equals("admin"))
{
	response.sendRedirect("ahome.jsp?msg=Login Successfully");
}else{
	response.sendRedirect("admin.jsp?msg=Please enter valid credentials");
}
%>
