 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>LOGIN/Services-Solo Music Center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type = "text/css" href="styles/Main.css?v=<?php echo time(); ?>" >
	<link rel="stylesheet" type = "text/css" href="styles/Login.css?v=<?php echo time(); ?>" >
	<link rel="stylesheet" type="text/css" href="styles/footer.css?v=<?php echo time(); ?>">
	<link rel="stylesheet" type="text/css" href="styles/header.css?v=<?php echo time(); ?>">
	
	
	<style>
	.wrapper{ 
      width: 500px; 
      padding: 20px; 
    }
    .wrapper h2 {text-align: center}
    .wrapper form .form-group span {color: red;}
  </style>
</head>
<body>
<container class = "my1">

</container>
<header>
		 
		 
       

		<!-- navbar -->
		<ul class="menu">
          <li class="menu"> <a href="Home.jsp"><i class="fa fa-fw fa-home"></i> HOME</a> </li>
        
          <li class="menu"> <a href="Login.jsp">USER LOGIN </a> </li>
          <li class="menu"> <a href="Useraccount.jsp"> SIGN UP </a> </li>
          <li class="menu"> <a href="Contact.jsp"> CONTACT US </a> </li>
          <li class="menu"> <a href="aboutus.jsp"> ABOUT US </a> </li>
        </ul>
        <!-- end navbar -->
  
	</header>
	
 <!-- ----LOGIN---- -->
    <div class="box">
  <main>
    <section class="container wrapper">
      <h1 class="display-4 pt-3">Login</h1>
      
          <form action="LoginServlet" method="POST" >
            <div class="form-group">
              <label for="username" >Email</label>
              <input type="text" name="username" id="username" class="form-control" value="">
              <span class="help-block"></span>
            </div>

            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" name="password" id="password" class="form-control" value="">
              <span class="help-block"></span>
            </div>
           
            
             <div class="form-group">
           
                <input type="submit" value="Login"/>
                <% 
			String message = (String) request.getAttribute("RegError");
			%>                  
			<%
			if (message == null) {
			%>
			<div class="besideemailbox" style="color: red"></div>
			<%
			} 
				 else  {
			%>
			<div class="besideemailbox" style="color: red"><%= message %></div>
			<%
			}
			%>
            
            </div>
          
          </form>
    </section>
  </main>                                                                                          
  </div>
  
    <!--footer starts here-->
    <footer>
        <div class="more">
            <h5>More</h5>
            <a href="Contact.jsp">Contact us</a>
            <a href="aboutus.jsp">About us</a>
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
	
   
</body>
</html>