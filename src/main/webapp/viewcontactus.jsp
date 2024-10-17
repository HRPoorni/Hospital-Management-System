
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
	   ps=con.prepareStatement("delete from contact where contactus_id="+id+";");
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
    width: 500px;
    padding: 20px;
    margin-left: 120px;
    margin-top: 38px; 
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
      <h2 class="display-4 pt-3">Messages</h2>
          
          <form action="DeleteUserServlet" method="POST">
           <table>
           <tr>
           <td>User ID</td>
           <td>First Name</td>
           <td>Last Name</td>
           <td>User Email</td>
            <td>Message</td>
           </tr>
           <%
           Connection con=DB.getConnection();
           String sql="select * from contact ;"; //view 
           PreparedStatement pst;
           pst=con.prepareStatement(sql);
           ResultSet rst=pst.executeQuery();
           
           while(rst.next())
           {
        	   String id=rst.getString("contactus_id");
        	   String name=rst.getString("name");
        	   String tp=rst.getString("tp");
        	   String msg=rst.getString("msg");
        	   String email=rst.getString("email");
           %>

            <tr>
           <td ><%= id %></td>
           <td><%= name %></td>
           <td><%= tp %></td>
             <td><%= email %></td>
           <td><%= msg %></td>
           <td><a href="viewcontactus.jsp?id=<%= id%>">Delete</a></td>
           <td><a href="updatecontactus.jsp?idu=<%= id%>&n=<%= name%>&tp=<%= tp%>&email=<%= email%>&msg=<%= msg%>">Update</a></td>
           </tr>
           <%
           }
           
           %>
           </table>
          </form >
         
           
    </section>
  </main>
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
	
   
</body>
</html>