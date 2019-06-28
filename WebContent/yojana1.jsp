<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
   
<%          
String name=request.getParameter("name");
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String presentadd=request.getParameter("presentadd");
String Permadd=request.getParameter("Permadd");
String aadhar=request.getParameter("aadhar");
String family=request.getParameter("family");
String religion=request.getParameter("religion");
String caste=request.getParameter("caste");
String marital=request.getParameter("marital");
String edu=request.getParameter("edu");
String cname=request.getParameter("cname");
String caddress=request.getParameter("caddress");

   
int cnt=0;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/govt", "root" , "root");
	PreparedStatement ps1=con.prepareStatement("select count(*) from yojana where name=? ");
	ps1.setString(1,name);
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
	{
		cnt=rs.getInt(1);
	}
	if(cnt==0)
	{
		PreparedStatement ps=con.prepareStatement("insert into yojana(name,fname,mname,gender,dob,present_add,perm_add,aadhar,family,religion,caste,marital,edu,cname,caddress) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, fname);
		ps.setString(3, mname);
		ps.setString(4, gender);
		ps.setString(5, dob);
		ps.setString(6, presentadd);
		ps.setString(7, Permadd);
		ps.setString(8, aadhar);
		ps.setString(9, family);
		ps.setString(10, religion);
		ps.setString(11, caste);
		ps.setString(12, marital);
		ps.setString(13, edu);
		ps.setString(14, cname);
		ps.setString(15, caddress);
		ps.executeUpdate();
		response.sendRedirect("yojana.jsp?msg=Inserted Successful");
	}
	else
	{
		response.sendRedirect("yojana.jsp?msg=House holder already exists Try with another name");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

