<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<title>Contact Us-SOLO Music Center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type = "text/css" href="styles/addtest.css?v=<?php echo time(); ?>" >
	<link rel="stylesheet" type = "text/css" href="styles/header.css?v=<?php echo time(); ?>" >
	<link rel="stylesheet" type = "text/css" href="styles/footer.css?v=<?php echo time(); ?>" >
</head>
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
          <li class="menu"> <a href="Home.jsp"> ABOUT US </a> </li>
        </ul>
        <!-- end navbar -->
  
	</header>
	

    <div class="box">
    	   <div class="container">
        <header>
            <h1 align="Center">TEST</h1>
        </header>

      <form class="form-contact" method="post" action="AddtestDataServlet">
        <div class="form">
            <div class="right">
              <div class="contact-form">
                  <input type="text" name="name" required>
                  <span>Test Name</span>
              </div>
  
              <div class="contact-form">
                  <input type="text" name="rec" required>
                  <span>Recommendations</span>
              </div>
              
              <div class="contact-form">
                  <textarea type="text" name="des">
                    
                  </textarea>
                  <span> Description....</span>
              </div>
  
              <div class="contact-form">
                  <input type="submit" value="Submit">
                  <%
                  String err=(String)request.getAttribute("err");
                 %>
                 <%if(err==null){ %>
                 <%}else if(err.equals("Successfull")){ %>
                 <div class="besideemailbox" style="color: green"><%= err %></div>
                 <%}else{ %>
                 <div class="besideemailbox" style="color: red">Error</div>
                 <%} %>
              </div>
              </div>
            </div>
          </div>
    </form>
        
        <div class="empty">

        </div>
    </div>    
    </div>    

    </div>
    </div>




    
<!--footer starts here-->
    <footer>
        <div class="more">
            <h5>More</h5>
            <a href="Contact.html">Contact us</a>
            <a href="aboutus.html">About us</a>
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