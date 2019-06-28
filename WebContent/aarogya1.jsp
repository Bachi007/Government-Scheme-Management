<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
   
<%          
String hcard=request.getParameter("hcard");
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String presentadd=request.getParameter("presentadd");
String Permadd=request.getParameter("Permadd");
String aadhar=request.getParameter("aadhar");
String family=request.getParameter("family");
String religion=request.getParameter("religion");
String caste=request.getParameter("caste");


int cnt=0;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/govt", "root" , "root");
	PreparedStatement ps1=con.prepareStatement("select count(*) from aarogyasri where hcard=? ");
	ps1.setString(1,hcard);
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
	{
		cnt=rs.getInt(1);
	}
	if(cnt==0)
	{
		PreparedStatement ps=con.prepareStatement("insert into aarogyasri(hcard,name,gender,dob,present_add,perm_add,aadhar,family,religion,caste) values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, hcard);
		ps.setString(2, name);
		ps.setString(3, gender);
		ps.setString(4, dob);
		ps.setString(5, presentadd);
		ps.setString(6, Permadd);
		ps.setString(7, aadhar);
		ps.setString(8, family);
		ps.setString(9, religion);
		ps.setString(10, caste);
		ps.executeUpdate();
		response.sendRedirect("arogya.jsp?msg=Inserted Successful");
	}
	else
	{
		response.sendRedirect("arogya.jsp?msg=House holder already exists Try with another name");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

