<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NOMAD ADVENTURES | BOOK TRIP</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">


    <link rel="stylesheet" href="css/style.css">
</head>

<body>

  	<%
  		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  	%>
    <!-- nav bar -->
    <section class="header">

        <a href="index.jsp" class="logo">NOMAD ADVENTURES</a>

        <nav class="navbar">
            <a href="index.jsp">HOME</a>
            <a href="packages.jsp">PACKAGES</a>
            <a href="booknow.jsp">BOOK</a>
            <a href="about.jsp">ABOUT US</a>
            	
			<%
				request.setAttribute("lname", session.getAttribute("name"));
			%>
			<c:if test="${empty lname}">
				<a href="login.jsp" class="login-btn">LOGIN</a>
			</c:if>
            
            
			<c:if test="${not empty lname}">
				<a href="#" class="uname-btn"><i class="fa-solid fa-user"></i>  <%= session.getAttribute("name")%></a>
				<a href="logout" class="logout-btn">LOGOUT</a>
			</c:if>
        </nav>

        <div id="menu-btn" class="fas fa-bars"></div>

    </section>

    <div class="heading" style="background: url(images/lightroom/AayushPanthri_reminiscent-5.jpg) no-repeat">
        <h1>Book Now</h1>
    </div>

  
    
<section class="booking">

    <h1 class="heading-title">Book Your Trip!</h1>
 
    <form action="formreg" method="post" class="book-form">
 
       <div class="flex">
          <div class="inputBox">
             <span>Name :</span>
             <input type="text" placeholder="enter your name" name="name" required>
          </div>
          <div class="inputBox">
             <span>Email :</span>
             <input type="email" placeholder="enter your email" name="email" required>
          </div>
          <div class="inputBox">
             <span>Phone :</span>
             <input type="text" placeholder="enter your number" name="phone" required>
          </div>
          <div class="inputBox">
             <span>Address :</span>
             <input type="text" placeholder="enter your address" name="address">
          </div>
          <div class="inputBox">
             <span>Where To :</span>
             <input type="text" placeholder="place you want to visit" name="place" required>
          </div>
          <div class="inputBox">
             <span>No of Pax :</span>
             <input type="number" placeholder="number of guests" name="guests" required>
          </div>
          <div class="inputBox">
             <span>Journey Date :</span>
             <input type="date" name="arrivals" required>
          </div>
       </div>
 
       <input type="submit" value="Submit" class="btn" name="send">
 
    </form>
 
 </section>


    <!-- footer -->
    <section class="footer">

        <div class="box-container">

            <div class="box">
                <h3>Quick Links</h3>
                <a href="index.jsp"> <i class="fas fa-angle-right"></i> Home</a>
                <a href="packages.jsp"> <i class="fas fa-angle-right"></i> Packages</a>
                <a href="booknow.jsp"> <i class="fas fa-angle-right"></i> Book</a>
                <a href="about.jsp"> <i class="fas fa-angle-right"></i> About Us</a>
            </div>

            <div class="box">
                <h3>Our Socials</h3>
                <a href="https://www.facebook.com" target="_blank"> <i class="fab fa-facebook-f"></i> Facebook </a>
                <a href="https://twitter.com" target="_blank"> <i class="fab fa-twitter"></i> Twitter </a>
                <a href="https://www.instagram.com" target="_blank"> <i class="fab fa-instagram"></i> Instagram </a>
                <a href="https://www.linkedin.com" target="_blank"> <i class="fab fa-linkedin"></i> Linkedin </a>
            </div>
            
            <div class="box">
                <h3>Contact Details</h3>
                <a href="#"> <i class="fas fa-phone"></i> +91-9898989898 </a>
                <a href="#"> <i class="fas fa-phone"></i> +91-9898989898 </a>
                <a href="#"> <i class="fas fa-envelope"></i> aayush.panthri99@gmail.com </a>
                <a href="#"> <i class="fas fa-map"></i> Dehradun, India - 248001 </a>
            </div>


        </div>

        <div class="credit"> Created by <span>Aayush Panthri</span> </div>

    </section>


    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

    <script src="JScript/script.js"></script>
</body>

</html>