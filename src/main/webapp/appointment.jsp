<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>

<title>Product/Services-Solo Music Center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" type = "text/css" href="styles/appointment.css?v=<?php echo time(); ?>" >
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
          <li class="menu"> <a href="Home.jsp"> ABOUT US </a> </li>
		  
        </ul>
        <!-- end navbar -->
  
	</header>
  
     
<div class = "col12">       
               <form method="POST" action="AddrootServlet" >
                   <h1 class="alert-success"> CHANNELING CENTER </h1> 
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
                   <label >Patient Name:</label>
                   <input type="text"  name="P_N">
               </div><br>
                    
               <div class="input-group">
                   <label >Patient address:</label>
                   <input type="text"   name="P_A">
               </div><br>
               
           
           <table border = 1px >
           <tr>
           <th>Doctor ID</th>
           <th>Doctor First Name</th>
           <th>Doctor Last Name</th>
           </tr>
           
           <%
           Connection con=DB.getConnection();
           String sql="select user_id,fname,lname from users where cat = 'doctor' ;"; //view 
           PreparedStatement pst;
           pst=con.prepareStatement(sql);
           ResultSet rst=pst.executeQuery();
           
           while(rst.next())
           {
        	   String id=rst.getString("user_id");
        	   String fname=rst.getString("fname");
        	   String lname=rst.getString("lname");
           %>

            <tr>
           <td ><%= id %></td>
           <td><%= fname %></td>
           <td><%= lname %></td>
           </tr>
           <%
           }
           
           %>
           
           </table><br>
                    
               <div class="input-group">
                   <label >Doctor ID:</label>
                   <input type="text"   name="D_ID">   
               </div><br>
                  
               <div class="input-group">
                   <label >Contact Number:</label>
                   <input type="text"  name="C_N">
               </div><br>
                 
               <div class="input-group">
                   <label >Age:</label>
                   <input type="text"   name="Age">
               </div><br>
                   
               <div class="input-group">
                   <label >patient ID:</label>
                   <input type="text" placeholder="About user ; User ID" name="P_ID">
               </div><br>   
               
               <div class="input-group">
                   <label >Date:</label>
                   <input type="date"  name="date">
               </div><br>

                   
                        <input   type="submit" class="pbtn" value="Submit" name="submit" >

                        <button><a href="user.jsp">Customer Details</a></button>

                   
               </form>
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