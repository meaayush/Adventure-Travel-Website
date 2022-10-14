<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NOMAD ADVENTURES | ABOUT US</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
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

 <div class="heading" style="background: url(images/lightroom/IMG_3624-2.jpg) no-repeat">
        <h1>About Us</h1>
    </div>



    <section class="about">

        <div class="image">
            <img src="images/IMG_7793.jpg" alt="">
        </div>

        <div class="content">
            <h3>why choose us?</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iure numquam nulla iusto corporis dolor commodi
                libero, vitae obcaecati optio rerum ab culpa nesciunt, earum mollitia quasi ipsam non. Aliquid, iure.
            </p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid rerum, delectus voluptate aliquam
                quaerat iusto repellendus error nulla ab atque.</p>
            <div class="icons-container">
                <div class="icons">
                    <i class="fas fa-map-location-dot"></i>
                    <span>Unique Desinations</span>
                </div>
                <div class="icons">
                    <i class="fas fa-indian-rupee-sign"></i>
                    <span>Affordable Pricing</span>
                </div>
                <div class="icons">
                    <i class="fas fa-headset"></i>
                    <span>Best User Assistance</span>
                </div>
            </div>
        </div>

    </section>



<section class="reviews">

        <h1 class="heading-title"> TESTIMONIALS </h1>

        <div class="swiper reviews-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide slide">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minus facilis laudantium magnam saepe
                        magni ullam possimus laborum voluptas, veniam ipsum officiis quae doloribus minima ut quis.
                        Molestiae qui distinctio possimus?</p>
                    <h3>Aayush</h3>
                    <span>traveler</span>
                    <img src="images/TESTIMONIALS/IMG_3644.jpg" alt="">
                </div>

                <div class="swiper-slide slide">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Accusamus repellendus et suscipit optio
                        similique totam aut laborum ullam sequi! In!</p>
                    <h3>Abhinandan</h3>
                    <span>traveler</span>
                    <img src="images/TESTIMONIALS/IMG_3787.jpg" alt="">
                </div>

                <div class="swiper-slide slide">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus enim deserunt, ab at ea
                        iste odio placeat doloribus eum dolores tempore obcaecati, dolore esse aperiam. Excepturi ad quo
                        distinctio, dignissimos voluptate, dolores, saepe animi eum atque sint esse ab exercitationem!
                    </p>
                    <h3>Prateek</h3>
                    <span>traveler</span>
                    <img src="images/TESTIMONIALS/IMG_3816.jpg" alt="">
                </div>

                <div class="swiper-slide slide">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Possimus recusandae cum quibusdam odio
                        dignissimos nemo?</p>
                    <h3>Vishal</h3>
                    <span>traveler</span>
                    <img src="images/TESTIMONIALS/IMG_3781.jpg" alt="">
                </div>

                <div class="swiper-slide slide">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minus facilis laudantium magnam saepe
                        magni ullam possimus laborum voluptas, veniam ipsum officiis quae doloribus minima ut quis.
                        Molestiae qui distinctio possimus?</p>
                    <h3>Neeraj</h3>
                    <span>traveler</span>
                    <img src="images/TESTIMONIALS/IMG_3282.jpg" alt="">
                </div>

                <div class="swiper-slide slide">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minus facilis laudantium magnam saepe
                        magni ullam possimus laborum voluptas, veniam ipsum officiis quae doloribus minima ut quis.
                        Molestiae qui distinctio possimus?</p>
                    <h3>Akarsh</h3>
                    <span>traveler</span>
                    <img src="images/TESTIMONIALS/IMG_3686.jpg" alt="">
                </div>

            </div>

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