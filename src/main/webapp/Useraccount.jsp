 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Register</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="styles/style.css">
		<link rel="stylesheet" type="text/css" href="styles/footer.css?v=<?php echo time(); ?>">
		<link rel="stylesheet" type="text/css" href="styles/header.css?v=<?php echo time(); ?>">
		<link rel="stylesheet" type="text/css" href="styles/viewcontact.css?v=<?php echo time(); ?>" > 
		
	</head>

	<body>
<!--     <img src="https://lhd.lk/images/banners/register-with-us-banner.jpg" alt="" width="1350" height="300"> -->
    
 <container class = "my1">
</container>   
    <header>
         <!-- navbar -->
		<ul class="menu">
          <li class="menu"> <a href="Home.jsp"><i class="fa fa-fw fa-home"></i> HOME</a> </li>
          <li class="menu"> <a href="Login.jsp">USER LOGIN </a> </li>
          <li class="menu"> <a href="Useraccount.jsp"> SIGN UP </a> </li>
          <li class="menu"> <a href="Contact.jsp"> CONTACT US </a> </li>
          <li class="menu"> <a href="Home.jsp"> ABOUT US </a> </li>
		  
        </ul>
        <!-- end navbar -->
     </header>

		<div class="wrapper" style="background-image: url('images/bg-registration-form-2.jpg');">
			<div class="inner">
				<form action="RegisterServlet" method="POST">
					<h3>Register</h3>
					<div class="form-group">
						<div class="form-wrapper">
							<label for="">First Name</label>
							<input type="text" class="form-control" name="fname">
						</div>
						<div class="form-wrapper">
							<label for="">Last Name</label>
							<input type="text" class="form-control" name="lname">
						</div>
					</div>
					<div class="form-wrapper">
						<label for="">Email</label>
						<input type="text" class="form-control" name="email">
					</div>
					<div class="form-wrapper">
						<label for="">Password</label>
						<input type="password" class="form-control" name="password">
					</div>
					<div class="form-wrapper">
						<label for="">Confirm Password</label>
						<input type="password" class="form-control" name="cpassword">
					</div>
					<!-- <div class="checkbox"> -->
						<input type="radio" id="doctor" name="cat" value="doctor">
						<label for="doctor">Doctor</label><br>
						<input type="radio" id="patient" name="cat" value="patient">
						<label for="patient">Patient</label><br>
						<input type="radio" id="nurse" name="cat" value="nurse">
						<label for="nurse">Nurse</label><br>
					<!--  </div> -->
					
					<input type="submit" value="Register">
						<% 
			String message = (String) request.getAttribute("RegError");
			%>
			<%
			if (message == null) {
			%>
			<div class="besideemailbox" style="color: red"></div>
			<%
			} else if (message.equals("Confirm Password and Password Must Be Same ")) {
				%>
				<div class="besideemailbox" style="color: green">Passwords
					Doesn't Match</div>
				<%
				} else  {
			%>
			<div class="besideemailbox" style="color: red"><%= message %></div>
			<%
			}
			%>
			
				</form>
			</div>
		</div>
		
            <!--footer starts here-->
    <footer>
        <div class="more">
            <h5>More</h5>
            <a href="Contact.html">Contact us</a>
            <a href="#">About us</a>
            <a href="#">Site map</a>
            <a href="#">FAQ</a>
            <a href="#">Terms and conditions</a>
        </div>
        <div class="apps">
            <h5>Download our app</h5>
            <a href="#"><img class="android" src="images/footer/android.png" alt=""></a>
            <a href="#"><img class="apple" src="images/footer/apple.png" alt=""></a>
        </div>
        <div class="social">
            <h5>Our social media</h5>
            <a href="https://www.facebook.com/"><img class="fb" src="images/footer/fb.png" alt=""></a>
            <a href="https://www.instagram.com/"><img class="insta" src="images/footer/insta.png" alt=""></a>
            <a href="https://www.twitter.com/"><img class="twitter" src="images/footer/twitter.png" alt=""></a>
            <a href="https://www.youtube.com/"><img class="utube" src="images/footer/icons8-youtube-100.png" alt=""></a>
            <a href="https://www.linkedin.com/"><img class="linkedin" src="images/footer/icons8-linkedin-24.png" alt=""></a>
            <a href="https://www.reddit.com/login/"><img class="reddit" src="images/footer/redit.png" alt=""></a>
        </div>
    </footer>
		
	</body><!--  -->
</html>