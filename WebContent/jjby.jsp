<%String name=(String)session.getAttribute("name"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
                <li><a href="#"  class="selected"><span></span>Schemes</a>
                    <ul>
                        <li><a href="arogya.jsp">Aarogyasri</a></li>
                        <li><a href="yojana.jsp	">Yojana Schemes</a></li>
                        <li><a href="gramina.jsp">Gramina Awas Yojana</a></li>
                        <li><a href="jjby.jsp">JJBY</a></li>                  
                  </ul>
                </li>
                <li><a href="status.jsp"><span></span>View status</a></li>
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
            <center><h3>Application for PRADHAN MANTRI JEEVAN JYOTI BIMA YOJANA - CLAIM FORM</h3></center>
                <form method="post" name="contact" action="jjby1.jsp" >
             	<table align="center">
             		<tr>
             			<td>Policy no</td>
             			<td><input type="text" name="policy" required></td>
             		</tr>
             		<tr> 
             			<td>Bank Name</td>
             			<td><input type="text" name="bname" required></td>
             		</tr>
					<tr> 
             			<td>Bank address</td>
             			<td><textarea clos="10" rows="5" name="baddress" required></textarea></td>
             		</tr>
             		<tr>
             			<td>Full name of the deceased memmber</td>
             			<td><input type="text" name="dmem" required></td>
             		</tr>
             		<tr> 
             			<td>Insurance company ID</td>
             			<td><input type="text" name="icid" required></td>
             		</tr>
             		
             		<tr>
             			<td>Date of entry into scheme by member</td>
             			<td><input type="date" name="edate" required></td>
             		</tr>
             		<tr>
             			<td>Date of the death of member</td>
             			<td><input type="date" name="ddate" required></td>
             		</tr>
             		<tr>
             			<td>Whether death is due to accident</td>
             			<td>Yes<input type="radio" value="yes" name="accident" required> &nbsp;&nbsp;
             			No<input type="radio" value="no" name="accident" required></td>
             		</tr>
             		<tr>
             			<td>Name of nominee</td>
             			<td><input type="text" name="nominee" value="<%=name %>" readonly></td>
             		</tr>
             		
             		<tr>
             			<td><input type="submit" value="Submit"></td>
             			<td><input type="reset" name="Reset"></td>
             		</tr>
             	</table>		
             </form>     
        </div>
        
        	
    </div>
     
    
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