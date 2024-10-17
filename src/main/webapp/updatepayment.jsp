
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<%
if(request.getParameter("id")!=null)
{
	   Connection con=DB.getConnection();
	   String id=request.getParameter("id");
	   PreparedStatement ps;
	   ps=con.prepareStatement("delete from users where user_id="+id+";");
	   ps.executeUpdate();
}

%>




<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>LOGIN/Services-Solo Music Center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type = "text/css" href="styles/viewcontact.css?v=<?php echo time(); ?>" >
	<link rel="stylesheet" type="text/css" href="styles/footer.css?v=<?php echo time(); ?>">
	<link rel="stylesheet" type="text/css" href="styles/header.css?v=<?php echo time(); ?>">
	
	
	<style>
	.wrapper{ 
      width: 335px;
    padding: 150px;
    margin-left: 181px;
    margin-top: -75px; 
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
    <div class="box">
  <main>
    <section class="container wrapper">
      <h2 class="display-4 pt-3">Update Payment</h2>
          <%
if(request.getParameter("idu")!=null )
{
	   Connection con=DB.getConnection();
	   String id=request.getParameter("idu");
	   String n=request.getParameter("fn");
	   String ad=request.getParameter("add");
	   String email=request.getParameter("email");
	   String tp=request.getParameter("tp");
	   String me=request.getParameter("pm");
	   String cn=request.getParameter("cn");
	   String cvc=request.getParameter("cvc");
	   String ed=request.getParameter("exp");
	   
	 
	   
%>
          <form action="UpdatePayment" method="POST">
          <table>
                <tr><td>Payment ID</td><td><input type="text" name="id" value="<%=id %>" readonly="readonly"></td></tr>
                <tr><td> Name</td><td><input type="text" value="<%=n %>"  name="n" ></td></tr>
                <tr><td>Email</td><td><input type="text" value="<%=email %>" name="em" ></td></tr>
                <tr><td>Address</td><td><input type="text" value="<%=ad %>" name="ad" ></td></tr>
                <tr><td>Telephone</td><td><input type="text" value="<%=tp %>" name="tp" ></td></tr>
                <tr><td>Method</td><td><input type="text" value="<%=me %>" name="me" ></td></tr>
                <tr><td>Card No</td><td><input type="text" value="<%=cn %>" name="cn" ></td></tr>
                <tr><td>CVC</td><td><input type="text" value="<%=cvc%>" name="cvc" ></td></tr>
                <tr><td>Exp. Date</td><td><input type="text" value="<%=ed %>" name="ed" ></td></tr>
               
                
                
          </table>
          <input type="submit" value="Update">
          </form >
         <%} %>
           
          
    </section>
  </main>
  </div>
  
  <!--footer-->
	<footer>
		<div class="foot">
			<img class="footimage" src="images/foot.png">
			<div class="footer">


				<center>
					<p class="footcolor">Copyrights reserved @ 2022 SOLO Music Center.com</p>
					<a href="contactus.html">Privacy policy | Terms and conditions</a>
				</center>
			</div>
		</div>
	</footer>
	
  <script>
	// slideshow
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
</body>
</html>