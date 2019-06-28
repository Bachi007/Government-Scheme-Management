<%@page import="java.sql.*" %>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%String id=request.getParameter("id");
String status="Rejected";
%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/govt","root","root");
	PreparedStatement ps=con.prepareStatement("update aarogyasri set status=? where id='"+id+"'");
	ps.setString(1,status);
	ps.executeUpdate();
response.sendRedirect("scheme.jsp?Rejected Successful");

%>