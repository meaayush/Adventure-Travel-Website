<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NOMAD ADVENTURES | HOME</title>
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

    <section class="home">

        <div class="swiper my-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide slide" style="background:url(images/lightroom/DSC_0118.jpg) no-repeat">
                    <div class="content">
                        <span>explore, discover, travel</span>
                        <h3>EXPLORE THE UNEXPLORED</h3>
                        <a href="packages.jsp" class="btn">Discover More</a>
                    </div>
                </div>

                <div class="swiper-slide slide" style="background:url(images/IMG_0866.jpg) no-repeat">
                    <div class="content">
                        <span>explore, discover, travel</span>
                        <h3>TO TRAVEL IS</h3>
                        <h3>TO LIVE</h3>
                        <a href="packages.jsp" class="btn">Discover More</a>
                    </div>
                </div>

                <div class="swiper-slide slide" style="background:url(images/lightroom/kedarkantha_peak.jpg) no-repeat">
                    <div class="content">
                        <span>explore, discover, travel</span>
                        <h3>TRAVEL MORE, WORRY LESS!</h3>
                        <a href="packages.jsp" class="btn">Discover More</a>
                    </div>
                </div>

                <div class="swiper-slide slide" style="background:url(images/DSC_0082_3.jpg) no-repeat">
                    <div class="content">
                        <span>explore, discover, travel</span>
                        <h3>INTO THE WILDERNESS</h3>
                        <a href="packages.jsp" class="btn">Discover More</a>
                    </div>
                </div>

            </div>

            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>

        </div>

    </section>

    <!-- services -->
    <section class="services">

        <h1 class="heading-title"> OUR SERVICES </h1>

        <div class="box-container">

            <div class="box">
                <img src="icons/ski.png" alt="">
                <h3>Adventure Sports</h3>
            </div>

            <div class="box">
                <img src="icons/hiking.png" alt="">
                <h3>Trekking</h3>
            </div>

            <div class="box">
                <img src="icons/camping.png" alt="">
                <h3>Camping</h3>
            </div>

            <div class="box">
                <img src="icons/bonfire.png" alt="">
                <h3>Bonfire</h3>
            </div>

            <div class="box">
                <img src="icons/climbing.png" alt="">
                <h3>Rock Climbing</h3>
            </div>

            <div class="box">
                <img src="icons/zip-line.png" alt="">
                <h3>Zipline</h3>
            </div>

        </div>

    </section>

    <!-- packages -->
    <section class="home-packages">

        <h1 class="heading-title"> TRAVEL PACKAGES </h1>

        <div class="box-container">

            <div class="box">
                <div class="image">
                    <img src="images/IMG_1119.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Kedarnath Trek</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eos, sint!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/resized/IMG_11753.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Har Ki Dun Trek</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eos, sint!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/IMG_2003.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Chandrashila Trek</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eos, sint!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

        </div>

        <div class="load-more"> <a href="packages.jsp" class="btn">Load More</a> </div>

    </section>

    <!-- about -->

    <section class="home-about">

        <div class="image">
            <img src="images/resized/about.jpg" alt="">
        </div>

        <div class="content">
            <h3>About Us</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita et, recusandae nobis fugit modi
                quibusdam ea assumenda, nulla quisquam repellat rem aliquid sequi maxime sapiente autem ipsum? Nobis,
                provident voluptate?</p>
            <a href="about.jsp" class="btn">Read More</a>
        </div>

    </section>

    
    <!-- offer -->
    <section class="home-offer">
        <div class="content">
            <h3>LIMITED OFFER! UPTO 30% OFF</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Iure tempora assumenda, debitis aliquid
                nesciunt maiores quas! Magni cumque quaerat saepe!</p>
            <a href="booknow.jsp" class="btn">BOOK NOW</a>
        </div>
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