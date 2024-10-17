<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>LOGIN/Services-Solo Music Center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type = "text/css" href="styles/aboutus.css?v=<?php echo time(); ?>" >
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
          <li class="menu"> <a href="Home.jsp"> ABOUT US </a> </li>
		  
        </ul>
        <!-- end navbar -->
  
	</header>


 <!-- ----LOGIN---- -->
 <div class="abcd1">
   <form method = "post" action = "ViewPatientServlet">
   	Enter Your ID <input type="text" name="M_id">
   	<br>
   	<input   type="submit" class="pbtn" value="Submit" name="submit" >
   </form>
   </div>
   
   <table border = "1px" class = "tbl12">
<c:forEach var = "us" items = "${pade}">
	
	<tr>
	<th>Appointment ID</th><th>Patient Name</th><th>Patient Address</th><th>Contact Number</th><th>Patient Age</th><th>Patient ID</th><th>Appointment Date</th>
	</tr>
	<tr>
	<td>${us.id}</td><td>${us.p_Name}</td><td>${us.p_Address}</td><td>${us.con_Num}</td><td>${us.p_Age}</td><td>${us.p_ID}</td><td>${us.date}</td>
	</tr>

</c:forEach>
</table>

               <form method="POST" action="PatientDetailsServlet" class = "for12" >
                   <h1 class="alert-success"> Add Patient Details </h1> 
 <% 
			String message = (String) request.getAttribute("msg");
			%>                  
			<%
			if (message == null) {
			%>
			<div class="besideemailbox" style="color: red"></div>
			<%
			} else if(message.trim().equals("Seccessfully Added"))
			{%>
				<div class="besideemailbox" style="color: green"><%= message %></div>
			
				<% } else  {
			%>...............................................................................................................................
			<div class="besideemailbox" style="color: red"><%= message %></div>
			<%
			}
			%>
			
               <div class="input-group">
                   <label >Patient ID:</label>
                   <input type="text"  name="ppid">
               </div> <br>
                    
               <div class="input-group">
                   <label >Details:</label>
                   <textarea  name="det" class = "a123">
                   </textarea>
               </div>

                   
                        <input   type="submit" class="pbtn" value="Submit" name="submit" >
                   
               </form>
  
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
   
</body>
</html>