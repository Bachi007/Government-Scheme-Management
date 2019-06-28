<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<% 
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String pswd=request.getParameter("pswd");
String dob=request.getParameter("dob");
String address=request.getParameter("address");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");

int cnt=0;

try
{
	System.out.println("h1ooo");
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("h01");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/govt", "root" , "root");
	/*PreparedStatement ps1=con.prepareStatement("select count(*) from reg where email=? ");
	ps1.setString(1,email);
	ResultSet rs=ps1.executeQuery();
	
	while(rs.next())
	{
		cnt=rs.getInt(1);
	}
	if(cnt==0)
	{*/System.out.println("h11");
		PreparedStatement ps=con.prepareStatement("insert into reg(fname,lname,pswd,dob,address,mobile,email) values(?,?,?,?,?,?,?)");
		ps.setString(1, fname);
		ps.setString(2, lname);
		ps.setString(3, pswd);
		ps.setString(4, dob);
		ps.setString(5, address);
		ps.setString(6, mobile);
		ps.setString(7, email);
		System.out.println("h2");
		int uc=ps.executeUpdate();
		System.out.println("h3");
	if(uc>0)
	{
		response.sendRedirect("customer.jsp?msg=Registered Successful");
	}
	else
	{
		response.sendRedirect("reg.jsp?msg=User already exists Try with another name");
	}
}
catch(Exception e)
{
	System.out.println("hi");
	
}

%>