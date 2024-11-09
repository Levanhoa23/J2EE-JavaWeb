<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
  <link>
    <meta charset="utf-8" />
    <title>Hoa-Sports</title>
    <link rel="icon" href="./assets/img/logo.png" type="image/png" />

   <!-- Các liên kết đến tệp CSS -->
   <link rel="stylesheet"  href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"/>
<link rel="stylesheet" href="./assets/css/style.css"/>
  </link>
  <body>
      <%@include file="./inc/header.jsp" %>
    <section class="About" id="About">
      <div class="content">
        <h3>fresh and<span>organic</span>products for your</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisincing elit. Aliquam
          libero nostrum veniam facere tepore nisi.
        </p>
        <a href="shop.html" class="btn">shop now</a>
      </div>
    </section>
    <!-- home section ends -->


     <!-- features section starts -->
     <section class="features" id="features">
      <h1 class="heading">our <span>features </span></h1>
      <div class="box-container">
        <div class="box">
          <img src="./assets/img/freeship.jpg" />
          <h3>fresh and organic</h3>
          <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
          <a href="#" class="btn">read more</a>
        </div>

        <div class="box">
          <img src="./assets/img/easypay.jpg" />
          <h3>fresh and organic</h3>
          <p>
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nihil enim
            odio dolores iste veniam vitae,
          </p>
          <a href="#" class="btn">read more</a>
        </div>

        <div class="box">
          <img src="./assets/img/sale.jpg" />
          <h3>fresh and organic</h3>
          <p>
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nihil enim
            odio dolores iste veniam vitae,
          </p>
          <a href="#" class="btn">read more</a>
        </div>
      </div>
    </section>
    <!-- features section ends -->  
   
<!-- About -->
<div class="content-About">
    <h3>Introduction to Hoa-Sports Store</h3>
    <img src="./assets/img/banner2.jpg" alt="Hoa-Sports Store" class="store-image">
    
    <p>- Welcome to Hoa-Sports, where we offer not only high-quality sports products but also a wonderful shopping experience. Located in the city center, our store provides a wide range of sports products from shoes, clothing, workout equipment to sports accessories. We pride ourselves on being a trusted address for sports enthusiasts and health care.</p>
    
    <p>- At Hoa-Sports, we understand that sports are not just an activity but also a lifestyle. With the goal of serving the needs of everyone from beginners to professional athletes, we offer a diverse range of products at reasonable prices. Our staff is not only experienced but also passionate about sports, always ready to advise and help you choose the most suitable products.</p>
    
    <h2>Diverse Products</h2>
    <p>- We provide products from top brands worldwide, ensuring that every product meets the highest quality standards. From running shoes to gym clothing, from soccer to swimming, we have everything you need to enhance your sports performance. Our products are carefully selected to meet the needs of quality, functionality, and fashion.</p>
    
    <p>- In addition, we also offer health care products, from treadmills to home exercise equipment. Hoa-Sports is committed to providing you with the perfect choices to help you maintain your health and fitness. Don't hesitate to visit our store to experience and choose the products you like!</p>
    
    <h2>Excellent Customer Service</h2>
    <p>- We are committed to providing the best customer service. Our staff not only understands the products but is also always ready to assist you with any questions. With a flexible return policy and fast delivery service, you can shop at Hoa-Sports with complete peace of mind.</p>
    
    <p>- We also regularly organize sports events and attractive promotional programs to create a vibrant sports atmosphere and foster community connections. At Hoa-Sports, you will not only shop but also have the opportunity to participate in exciting activities and meet like-minded individuals.</p>
    
    <h2>Vision and Mission</h2>
    <p>- Hoa-Sports is not just a retail store but also a community of sports lovers. We believe that sports are a wonderful means of connecting people and improving health. Our mission is to encourage everyone to participate in physical activities to improve health and well-being.</p>
    
    <p>- We always strive to create a friendly and supportive environment where everyone can find joy and encouragement in exercising. Come to Hoa-Sports to experience the excellent products and services we offer. We always welcome you!</p>
</div>


    <!-- footer section starts -->
    <section class="footer">
      <div class="box-container">

        <div class="box">
          <h3>groco<i class="fas fa-shopping-basket"></i></h3>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis aspernatur ut</p>
          <div class="share">
            <a href="#" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
          </div>
      
      </div>

      <div class="box">
        <h3>contact info </h3>
        <a href="#" class="links"><i class="fas fa-phone"></i>+8468686868</a>
        <a href="#" class="links"><i class="fas fa-phone"></i>+8468686868</a>
        <a href="#" class="links"><i class="fas fa-envelope"></i>levh2322004@gmail.com</a>
        <a href="#" class="links"><i class="fas fa-map-marker-alt"></i>mumbai, VietNam-999999</a>
    </div>

    <div class="box">
      <h3>quicks links </h3>
      <a href="#" class="links"><i class="fas fa-arrow-right"></i>home</a>
      <a href="#" class="links"><i class="fas fa-arrow-right"></i>features</a>
      <a href="#" class="links"><i class="fas fa-arrow-right"></i>products</a>
      <a href="#" class="links"><i class="fas fa-arrow-right"></i>categories</a>
      <a href="#" class="links"><i class="fas fa-arrow-right"></i>review</a>
      <a href="#" class="links"><i class="fas fa-arrow-right"></i>blogs</a> 
    </div>

    <div class="box">
      <h3>newsletter </h3>
      <p>subscribe for latest updates</p>
      <input type ="email" placeholder="your email" class="email">
      <input type ="submit" placeholder="subscribe" class="btn">
      <img src="./assets/img/visa.png" class="payment-img">
      <img src="./assets/img/am.png" class="payment-img">
      <img src="./assets/img/th.jpg" class="payment-img">
      <img src="./assets/img/may.png" class="payment-img">
    </div>
    </div>
    <div class="credit">create by <span>Hoa-Sports</span> | all rights reverved </div>
    </section>
    <!-- footer section ends -->
   <!-- Liên kết đến tệp JavaScript -->
   <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
   <script src="./assets/javascript/script.js"></script>
  </body>
</html>
