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
String nationality=request.getParameter("nationality");
String tele=request.getParameter("tele");
String edu=request.getParameter("edu");
String ownhouse=request.getParameter("ownhouse");
String ownership=request.getParameter("ownership");
String income=request.getParameter("income");

   
int cnt=0;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/govt", "root" , "root");
	PreparedStatement ps1=con.prepareStatement("select count(*) from awas where name=? ");
	ps1.setString(1,name);
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
	{
		cnt=rs.getInt(1);
	}
	if(cnt==0)
	{
		PreparedStatement ps=con.prepareStatement("insert into awas(name,fname,mname,dob,gender,present_add,perm_add,aadhar,family,religion,caste,marital,nationality,tele,edu,ownhouse,ownership,income) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, fname);
		ps.setString(3, mname);
		ps.setString(4, dob);
		ps.setString(5, gender);
		ps.setString(6, presentadd);
		ps.setString(7, Permadd);
		ps.setString(8, aadhar);
		ps.setString(9, family);
		ps.setString(10, religion);
		ps.setString(11, caste);
		ps.setString(12, marital);
		ps.setString(13, nationality);
		ps.setString(14, tele);
		ps.setString(15, edu);
		ps.setString(16, ownhouse);
		ps.setString(17, ownership);
		ps.setString(18, income);
	   ps.executeUpdate();
		response.sendRedirect("awas.jsp?msg=Inserted Successful");
	}
	else
	{
		response.sendRedirect("awas.jsp?msg=House holder already exists Try with another name");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

