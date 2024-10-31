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
    <!-- heder section ends -->
    <!-- home section starts -->
    <section class="home" id="home">
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
   
    <!-- products section starts -->
    <div class="Contact-content">
                      <h1>Liên Hệ với Hoa-Sports</h1>
                      <p>Chúng tôi là một cộng đồng thể thao sôi động, cam kết mang đến những trải nghiệm thể thao tốt nhất cho mọi người. Nếu bạn có bất kỳ câu hỏi nào, hãy liên hệ với chúng tôi!</p>
                      
                      <h2>Thông Tin Liên Hệ</h2>
                      <ul>
                          <li>Email: info@hoa-sports.com</li>
                          <li>Điện thoại: +84 123 456 789</li>
                          <li>Địa chỉ: 123 Đường Thể Thao, Quận 1, TP.HCM</li>
                      </ul>
              
                      <h2>Map</h2>
                      <div class="map-container">
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13850.942969083217!2d107.57867104154101!3d16.452860427733143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3141a13c016776c9%3A0xf8964b1f3477d7fe!2sPhu%20Xuan%20University!5e1!3m2!1sen!2s!4v1729791271302!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                      </div>
                  </div>
    <!-- products section ends -->

    <!-- footer section starts -->
     <%@include file="./inc/footer.jsp" %>
    <!-- footer section ends -->
   <!-- Liên kết đến tệp JavaScript -->
   <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
   <script src="./assets/javascript/script.js"></script>
  </body>
</html>
