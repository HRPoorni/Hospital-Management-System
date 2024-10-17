<!DOCTYPE html>
<html>
<head>
	<title>payment-SOLO Music Center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type = "text/css" href="styles/Payment.css?v=<?php echo time(); ?>" >
	<link rel="stylesheet" type = "text/css" href="styles/Main.css?v=<?php echo time(); ?>" >
	<link rel="stylesheet" type="text/css" href="styles/footer.css?v=<?php echo time(); ?>">
	<link rel="stylesheet" type="text/css" href="styles/header.css?v=<?php echo time(); ?>">
</head>
</head>
<body>
<container class = "my1">

</container>
<header>
		 
<!-- navbar -->
		<ul class="menu">
          <li class="menu"> <a href="Home.jsp"><i class="fa fa-fw fa-home"></i> HOME</a> </li>
          <li class="menu"> <a href="Product.jsp"> PRODUCTS </a> </li>
          <li class="menu"> <a href="Contact.jsp"> CONTACT US </a> </li>
          <li class="menu"> <a href="aboutus.jsp"> ABOUT US </a> </li>
        </ul>
        <!-- end navbar -->
		
  
	</header>
	
   
    <div class="box">
    
        <div calss="wrapper">
        <h2>Payment Detils</h2>
        <form method="POST" action="PaymentServlet">
          
           
           <div class="input-group">              
              <div class="input-box">
                  <input type="text" name="FullName"
                  placeholder="Full Name" required
                  class="name">
               </div>
             </div>

            <div class="input-group">
              <div class="input-box">
                  <input type="Email" name="Email"
                  placeholder="Email" required
                  class="name">  
              </div>
            </div>

            <div class="input-group">
              <div class="input-box">
                  <input type="Address" name="Address1"
                  placeholder="street Address1" required
                  class="name">  
                  <i class="fa-home"></i>               
              </div>
            </div> 
      
            <div class="input-group">
              <div class="input-box">
                  <input type="Address" name="Address2"
                  placeholder="street Address2" required
                  class="name">                  
              </div>
            </div> 

            <div class="input-group">
              <div class="input-box">
                  <input type="Phone Number" name="Number"
                  placeholder="Phone Number" required
                  class="name">                 
              </div>
            </div> 

            <div class="input-group">
              <div class="input-box">
              <h4>Payment Details</h4>
                <select name="pay" id="pay">
                  <option value="Credit Card">Credit Card</option>
                  <option value="Paypal">Paypal</option>
                  </select>
              </div>
  		   </div>
            
            <div class="input-group">
              <div class="input-box">
                  <input type="tel" name="cNumber"
                  placeholder="Card Number" required 
                  class="name">                
              </div> 
            </div>

            <div class="input-group">
              <div class="input-box">
                  <input type="tel" name="CVC"
                  placeholder="Card CVC" required 
                  class="name">                
              </div> 
            </div>
 
            <div class="input-box">
            <input type="date" name="acdate" class="form-control" placeholder="Date" required>
            </div>



                 <%
                  String err=(String)request.getAttribute("err");
                 %>
                 <%if(err==null){ %>
                  <div class="besideemailbox" style="color: green"></div>
                 <%}else if(err.trim().equals("S")){ %>
                 <div class="besideemailbox" style="color: green">Successfully</div>
                 <%}else{ %>
                <div class="besideemailbox" style="color: green">Successfully</div>
                 <%} %>

           <div class="input-group">
              <div class="input-box">
                <button type="submit">Cancel</button>
                <button type="submit" Name="PayNow">Pay Now</button>
               </div>
           </div>       

    
          </form>
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