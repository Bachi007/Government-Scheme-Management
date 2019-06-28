<%@page import="java.sql.*" %>
<%
String email=request.getParameter("email");
String pswd=request.getParameter("pswd");
int cnt=0;
System.out.println(email);
System.out.println(pswd);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/govt","root","root");
PreparedStatement ps1=con.prepareStatement("select count(*) from reg where email=? and pswd=?");
ps1.setString(1,email);
ps1.setString(2,pswd);
ResultSet rs=ps1.executeQuery();
while(rs.next())
{
	cnt=rs.getInt(1);
}

PreparedStatement ps2=con.prepareStatement("select * from reg where email=?");
ps2.setString(1,email);
ResultSet rs1=ps2.executeQuery();
rs1.next();

	System.out.println(rs1.getString(1));
	session.setAttribute("name",rs1.getString(2));
	session.setAttribute("emailid",rs1.getString(4));

if (cnt==1)
{
	
	session.setAttribute("email",email);
	response.sendRedirect("chome.jsp?msg=Login Successful");
	
}
else
{
	response.sendRedirect("customer.jsp?msg=Invalid credentials. Please try again");
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
