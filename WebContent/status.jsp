<%@page import="java.sql.*" %>
<%
String name=(String)session.getAttribute("name");
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/govt","root","root");
	PreparedStatement ps=con.prepareStatement("select * from aarogyasri where name='"+name+"'");
	ResultSet rs=ps.executeQuery();
	PreparedStatement ps1=con.prepareStatement("select * from yojana where name='"+name+"'");
	ResultSet rs1=ps1.executeQuery();
	PreparedStatement ps2=con.prepareStatement("select * from awas where name='"+name+"'");
	ResultSet rs2=ps2.executeQuery();
	PreparedStatement ps3=con.prepareStatement("select * from jjby where nominee='"+name+"'");
	ResultSet rs3=ps3.executeQuery();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<style>
table {display: block;
    overflow-x: auto;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Government Scheme Management System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2065 Goodoo
http://www.tooplate.com/view/2065-goodoo
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />

<script type="text/javascript" src="js/jquery-1.6.3.min.js" ></script>
<script type="text/javascript" src="js/jquery-ui.min.js" ></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#featured > ul").tabs({fx:{opacity: "toggle"}}).tabs("rotate", 5000, true);
	});
</script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "tooplate_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="js/slimbox2.js"></script> 



</head>
<body>

<div id="tooplate_header_wrapper">
	<div id="tooplate_header" class="center">
    	
		
		<div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="chome.jsp"><span></span>Home</a></li>
                <li><a href="#" ><span></span>Schemes</a>
                    <ul>
                        <li><a href="arogya.jsp">Aarogyasri</a></li>
                        <li><a href="yojana.jsp	">Yojana Schemes</a></li>
                        <li><a href="gramina.jsp">Gramina Awas Yojana</a></li>
                        <li><a href="jjby.jsp">JJBY</a></li>                  
                  </ul>
                </li>
                <li><a href="status.jsp"  class="selected"><span></span>View status</a></li>
                <li><a href="index.html"><span></span>Logout</a></li>                
            </ul>
            <br style="clear: left" />
        </div> <!-- end of tooplate_menu -->
        <div class="clear"></div>
    </div> <!-- END of header -->
</div> <!-- END of header_wrapper -->
<div id="tooplate_middle_wrapper">
	<div id="tooplate_middle" class="center">
    	<p class="homepage_intro">"Government Scheme Management System"</p>
        <a href="#" class="more_button_02 center">MORE</a>
    </div> <!-- END of middle -->
</div> <!-- END of middle_wrapper -->

<div id="tooplate_main" class="center">
	<div class="content_wrapper content_mb_60">
        <div class="col_1">
            <center><h3>View Aarogyasri applicant status</h3></center>
                <center> <table border="1">
            	<tr>
            		<th>Id</th>
            		<th>House Hold Card Number</th>
            		<th>Name</th>
            		<th>Gender</th>
            		<th>DOB</th>
            		<th>Present Address</th>
            		<th>Permanent Address</th>
            		<th>Aadhar card</th>
            		<th>Family members details</th>
            		<th>Religion</th>
            		<th>Caste</th>
            		<th>Status</th>
            	</tr>
            	<%while(rs.next())
			{
				%>
			 <tr>
			 <td align="center"><font color="green"><%=rs.getString(1)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(2)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(3)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(4)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(5)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(6)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(7)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(8)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(9)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(10)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(11)%></font></td>
			 <td align="center"><font color="green"><%=rs.getString(12)%></font></td>
			 </tr>
			 <%}%>


            	
            </table></center><br><br>
            <center><h3>View Yojana Scheme applicant status</h3></center>
                <center> <table border="1">
            	<tr>
            		<th>Id</th>
            		<th>Name</th>
            		<th>Father Name</th>
            		<th>Mother Name</th>
            		<th>Gender</th>
            		<th>DOB</th>
            		<th>Present Address</th>
            		<th>Permanent Address</th>
            		<th>Aadhar card</th>
            		<th>Family members details</th>
            		<th>Religion</th>
            		<th>Caste</th>
            		<th>Marital</th>
            		<th>Education qualification</th>
            		<th>Trainee Centre Name</th>
            		<th>Trainee Centre Address</th>
            		<th>Status</th>
            	</tr>
            	<%while(rs1.next())
			{
				%>
			 <tr>
			 <td align="center"><font color="green"><%=rs1.getString(1)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(2)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(3)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(4)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(5)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(6)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(7)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(8)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(9)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(10)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(11)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(12)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(13)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(14)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(15)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(16)%></font></td>
			 <td align="center"><font color="green"><%=rs1.getString(17)%></font></td>
			 </tr>
			 <%}%>

            	
            </table></center><br><br>
            <center><h3>View Gramina Awas Yojana applicant status</h3></center>
                <center> <table border="1">
            	<tr>
            		<th>Id</th>
            		<th>Name</th>
            		<th>Father Name</th>
            		<th>Mother Name</th>
            		<th>DOB</th>
            		<th>Gender</th>
            		<th>Present Address</th>
            		<th>Permanent Address</th>
            		<th>Aadhar card</th>
            		<th>Family members details</th>
            		<th>Religion</th>
            		<th>Caste</th>
            		<th>Marital</th>
            		<th>Nationality</th>
            		<th>Telephone No.</th>
            		<th>Education qualification</th>
            		<th>Whether the family owns any house</th>
            		<th>Ownership details of existing house</th>
            		<th>Average monthly income of household</th>
            		<th>Status</th>
            	</tr>
            	<%while(rs2.next())
			{
				%>
			 <tr>
			 <td align="center"><font color="green"><%=rs2.getString(1)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(2)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(3)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(4)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(5)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(6)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(7)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(8)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(9)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(10)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(11)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(12)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(13)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(14)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(15)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(16)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(17)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(18)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(19)%></font></td>
			 <td align="center"><font color="green"><%=rs2.getString(20)%></font></td>
			 </tr>
			 <%}%>

            	
            </table></center><br><br>
            <center><h3>View JEEVAN JYOTI BIMA YOJANA applicant status</h3></center>
                <center> <table border="1">
            	<tr>
            		<th>Id</th>
            		<th>Policy</th>
            		<th>Bank Name</th>
            		<th>Bank address</th>
            		<th>Full name of the deceased memmber</th>
            		<th>Insurance company ID</th>
            		<th>Date of entry into scheme by member</th>
            		<th>Date of the death of member</th>
            		<th>Whether death is due to accident</th>
            		<th>Name of nominee</th>
            		<th>Status</th>
            	</tr>
            	<%while(rs3.next())
			{
				%>
			 <tr>
			 <td align="center"><font color="green"><%=rs3.getString(1)%></font></td>
			 <td align="center"><font color="green"><%=rs3.getString(2)%></font></td>
			 <td align="center"><font color="green"><%=rs3.getString(3)%></font></td>
			 <td align="center"><font color="green"><%=rs3.getString(4)%></font></td>
			 <td align="center"><font color="green"><%=rs3.getString(5)%></font></td>
			 <td align="center"><font color="green"><%=rs3.getString(6)%></font></td>
			 <td align="center"><font color="green"><%=rs3.getString(7)%></font></td>
			 <td align="center"><font color="green"><%=rs3.getString(8)%></font></td>
			 <td align="center"><font color="green"><%=rs3.getString(9)%></font></td>
			 <td align="center"><font color="green"><%=rs3.getString(10)%></font></td>
			 <td align="center"><font color="green"><%=rs3.getString(11)%></font></td>
			 </tr>
			 <%}%>

            	
            </table></center>
            
        </div>
        
        	
    </div>
     <%}
catch(Exception e)
{
out.println(e);
}
 %>
    
    <div class="clear"></div>
</div>
<div id="tooplate_footer_wrapper">
    <div id="tooplate_footer" class="center">
        
            <div class="col_1">            
	            Copyright © 2017 Government Scheme Management System<br />
            	</div>
        </div>
        <div class="clear"></div>
    </div> <!-- END of tooplate_footer -->    
</div> <!-- END of tooplate_wrapper -->


</body>
</html>