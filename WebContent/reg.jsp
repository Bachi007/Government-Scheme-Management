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

<script>
function val()
{

	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var mobno = /^\d{10}$/;
	var letters = /^[A-Za-z]+$/;
	var idno = /^\d{1}$/;
	 
	var fname = document.reg.fname.value;
	if(fname == "")
	{ 	alert("Please enter first name");
		document.reg.fname.focus();
		flag=0;	
		return false;
	}else  if(!fname.match(letters))
	{
		document.reg.fname.focus();
		alert("Please enter only alphabets");
		flag=0;
		return false;
	}else
	{
		flag=1;
	}  
	var lname = document.reg.lname.value;
	if(lname == "")
	{ 	alert("Please enter second name");
		document.reg.lname.focus();
		flag=0;	
		return false;
	}else  if(!lname.match(letters))
	{
		document.reg.lname.focus();
		alert("Please enter only alphabets");
		flag=0;
		return false;
	}else
	{
		flag=1;
	}  
	

	var pswd = document.reg.pswd.value;
	if(pswd == "")
	{ 	alert("Please enter password");
		document.reg.pswd.focus();
		flag=0;	
		return false;
	}else
	{
		flag=1;
	}
	  
	  var address = document.reg.address.value;
		if(address == "")
		{ 	alert("Please enter your address");
			document.reg.address.focus();
			flag=0;	
			return false;
		}else
		{
			flag=1;
		}
		

		 
	var mobile = document.reg.mobile.value;
	if(mobile == "")
	{ 	alert("Please enter your mobile number");
		document.reg.mobile.focus();
		flag=0;	
		return false;
	}else  if(!mobile.match(mobno))
	{
		document.reg.mobile.focus();
		alert("Please enter valid number");
		flag=0;
		return false;
	}else
	{
		flag=1;
	}  
	
		 var email = document.reg.email.value;
		if(email == "")
		{ 	alert("Please enter your email");
			document.reg.email.focus();
			flag=0;	
			return false;
		}else  if(!email.match(mailformat))
		{
			document.reg.email.focus();
			alert("Please enter valid mail id");
			flag=0;
			return false;
		}else
		{
			flag=1;
		}  
	
	if(flag==0)
	{
		return false;
	}else
	{
		return true;
	}
	
}
</script>


</head>
<body>

<div id="tooplate_header_wrapper">
	<div id="tooplate_header" class="center">
    	
		
		<div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="index.html" ><span></span>Home</a></li>
                <!-- <li><a href="blog.html"><span></span>Blog</a>
                    <ul>
                        <li><a href="blog.html">Category One</a></li>
                        <li><a href="blog.html">Category Two</a></li>
                        <li><a href="blog.html">Category Three</a></li>
                        <li><a href="blog.html">Category Four</a></li>
                        <li><a href="blog.html">Category Five</a></li>                                                                        
                  </ul>
                </li> -->
                <li><a href="customer.jsp" class="selected"><span></span>Customer</a></li>
                <li><a href="admin.jsp"><span></span>Admin</a></li>                
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
            <h1>Registration</h1>
           <form method="post" name="reg" action="reg1.jsp" onsubmit="return val()">
             	<table align="center">
             		<tr>
             			<td>First name</td>
             			<td><input type="text" name="fname" value=""></td>
             		</tr>
             		<tr>
             			<td>Last name</td>
             			<td><input type="text" name="lname"></td>
             		</tr>
             		<tr>
             			<td>Password</td>
             			<td><input type="password" name="pswd"></td>
             		</tr>
             		<tr>
             			<td>DOB</td>
             			<td><input type="date" name="dob" required></td>
             		</tr>
             		<tr>
             			<td>Address</td>
             			<td><input type="text" name="address"></td>
             		</tr>
             		<tr>
             			<td>Mobile</td>
             			<td><input type="text" name="mobile"></td>
             		</tr>
             		<tr>
             			<td>E-Mail</td>
             			<td><input type="text" name="email"></td>
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