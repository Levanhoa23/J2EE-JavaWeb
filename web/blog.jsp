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
    <section class="Blog" id="Blog">
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

   
    <!-- Blogs -->
    <div class="content1">
                      <h3>Chào mừng đến với <span>Hoa-Sports Blog</span></h3>
                      <p>
                        Khám phá thế giới giày thể thao và thời trang đường phố với những mẹo hay và xu hướng mới nhất.
                      </p>
                  
                      <div class="blog-list">
                        <div class="blog-item">
                          <img src="./assets/img/qc4.webp" alt="Giày chạy bộ">
                          <h3>Cách chọn giày chạy bộ phù hợp</h3>
                          <p>
                            Chọn giày chạy bộ không chỉ về kiểu dáng mà còn cần phù hợp với bàn chân và thói quen chạy của bạn.
                          </p>              
                          <a href="#"class="btn">Read More</a>
                        </div>
                  
                        <div class="blog-item">
                          <img src="./assets/img/qc5.webp" alt="Giày bóng đá">
                          <h3>Top 5 mẫu giày bóng đá ưa chuộng 2024</h3>
                          <p>
                            Giới thiệu những đôi giày bóng đá mới nhất được yêu thích trong năm nay.
                          </p>
                          <a href="#"class="btn" >Read More</a>
                        </div>
                  
                        <div class="blog-item">
                          <img src="./assets/img/qc6.jpg" alt="Thời trang bền vững">
                          <h3>Thời trang bền vững: Xu hướng mới</h3>
                          <p>
                            Những đôi giày thân thiện với môi trường đang dần trở thành xu hướng trong thời trang thể thao.
                          </p>
                          <a href="#"class="btn">Read More</a>
                        </div>
                      </div>
                    </div>
                  

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

    <!-- footer section starts -->
    <%@include file="./inc/footer.jsp" %>
    <!-- footer section ends -->
   <!-- Liên kết đến tệp JavaScript -->
   <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
   <script src="./assets/javascript/script.js"></script>
  </body>
</html>
