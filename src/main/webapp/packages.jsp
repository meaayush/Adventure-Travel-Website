<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NOMAD ADVENTURES | PACKAGES</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    <link rel="stylesheet" href="css/style.css">
</head>

<body>

  	<%
  		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  	%>
  	<input type="hidden" id="formfill" value="<%= request.getAttribute("status")%>">
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

    
    <div class="heading " style="background: url(images/IMG_1876.jpg) no-repeat">
        <h1 class="h-pkg">Packages</h1>
    </div>


    <section class="packages">

        <h1 class="heading-title">DESTINATIONS</h1>

        <div class="box-container">

            <div class="box">
                <div class="image">
                    <img src="images/IMG_1119.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Kedarnath Trek</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/resized/IMG_11753.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Har Ki Dun Trek</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/IMG_2003.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Chandrashila Trek</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/IMG_7873.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Nag Tibba Trek</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/DSC_0118.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Kedarkantha Peak</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/IMG_0818-2.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Bali Pass Trek</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/IMG_0412.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Dalai Hills</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/IMG_2017.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Rudranath Trek</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/IMG_7872.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Dayara Bugyal Trek</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/IMG_5722.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Mussoorie</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/IMG_8447.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Kanatal</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/IMG_0716.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Valley Of Flowers</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
                    <a href="booknow.jsp" class="btn">Book Now</a>
                </div>
            </div>

        </div>

        <div class="load-more"><span class="btn">Load More</span></div>

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