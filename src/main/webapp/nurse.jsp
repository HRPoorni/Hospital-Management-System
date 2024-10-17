<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<title>Product/Services-Solo Music Center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="styles/admin.css?v=<?php echo time(); ?>" > 
	<link rel="stylesheet" type="text/css" href="styles/footer.css?v=<?php echo time(); ?>">
	<link rel="stylesheet" type="text/css" href="styles/header.css?v=<?php echo time(); ?>">
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
<!--Admin's page-->


<!--Admi'n logo-->
<div class="adminlogo">
<img src="images/dminlogo.png" class="adminlogo"  > 
</div>
<!-- admin's cetogorys-->

<div class="works12">

<table border = "1px">
<c:forEach var = "us" items = "${uDetails}">
	
	<tr>
	<th>User ID</th>
	<td><b>${us.id}</b></td>
	</tr>
	
	<tr>
	<th>User First Name</th>
	<td><b>${us.fname}</b></td>
	</tr>
	
	<tr>
	<th>User Last Name</th>
	<td><b>${us.lname}</b></td>
	</tr>
	
	<tr>
	<th><b>User Email</b></th>
	<td><b>${us.email}</b></td>
	</tr>

</c:forEach>
</table>

<button type="button y" class="btn12"><a href="addtest.jsp">Add Tests</a></button><br><br>
<button type="button y" class="btn12"><a href="testdetail.jsp">view Tests</a></button><br><br>
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
        <p>Copyright@ 2022 Solo</p>
    </footer>

                                                                                   
 
</body>
</html>

