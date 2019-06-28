<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
   
<%          
String policy=request.getParameter("policy");
String bname=request.getParameter("bname");
String baddress=request.getParameter("baddress");
String dmem=request.getParameter("dmem");
String icid=request.getParameter("icid");
String edate=request.getParameter("edate");
String ddate=request.getParameter("ddate");
String accident=request.getParameter("accident");
String nominee=request.getParameter("nominee");
   
int cnt=0;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/govt", "root" , "root");
	PreparedStatement ps1=con.prepareStatement("select count(*) from jjby where policy=? ");
	ps1.setString(1,policy);
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
	{
		cnt=rs.getInt(1);
	}
	if(cnt==0)
	{
		PreparedStatement ps=con.prepareStatement("insert into jjby(policy,bname,baddress,dmem,icid,edate,ddate,accident,nominee) values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, policy);
		ps.setString(2, bname);
		ps.setString(3, baddress);
		ps.setString(4, dmem);
		ps.setString(5, icid);
		ps.setString(6, edate);
		ps.setString(7, ddate);
		ps.setString(8, accident);
		ps.setString(9, nominee);
		ps.executeUpdate();
		response.sendRedirect("jjby.jsp?msg=Inserted Successful");
	}
	else
	{
		response.sendRedirect("jjby.jsp?msg=House holder already exists Try with another name");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

