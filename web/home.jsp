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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>

    <link rel="stylesheet" href="./assets/css/style.css"/>
    </link>
    <body>
        <%@include file="./inc/header.jsp" %>
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
            <h1 class="heading">Hot <span>features </span></h1>
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
                    <img src="./assets/img/sale.jpg" />+++    
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
        <section class="categories" id="categories">
            <h1 class="heading">Hot <span>Product</span></h1>
            <div class="box-container">
                <c:forEach items="${hotProductList}" var ="product">
                    <div class="box">

                        <img src="${product.thumbnail}" />

                        <h3>${product.name}</h3>
                        <li>upto 45% off</li>
                        <li>$${product.price}0</li>
                        <a href="ProductServlet?productId=${product.id}" class="btn">shop now</a>
                    </div>
                </c:forEach>
            </div>
        </section>
        <!-- products section ends -->

        <!-- categories section starts -->
        <section class="categories" id="categories">
            <h1 class="heading">New <span>Product</span></h1>
            <div class="box-container">
                <c:forEach items="${newsProductList}" var ="product">
                    <div class="box">
                        <img src="${product.thumbnail}" />
                        <h3>${product.name}</h3>
                        <li>upto 45% off</li>
                        <li>$${product.price}0</li>
                        <a href="ShopServlet" class="btn">shop now</a>
                    </div>
                </c:forEach>
            </div>
        </section>
        <!-- categories section ends -->

        <!-- review section stars -->
        <section class="review" id="review">
            <h1 class="heading">customer's <span>review</span></h1>
            <div class="swiper review-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide box">
                        <img src="./assets/img/comment1.jpg" />
                        <p>
                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut sequi
                            adipisci delectus sint
                        </p>
                        <h3>john deo></h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>

                    <div class="swiper-slide box">
                        <img src="./assets/img/comment1.jpg" />
                        <p>
                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut sequi
                            adipisci delectus sint
                        </p>
                        <h3>john deo></h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>

                    <div class="swiper-slide box">
                        <img src="./assets/img/comment1.jpg" />
                        <p>
                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut sequi
                            adipisci delectus sint
                        </p>
                        <h3>john deo></h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>

                    <div class="swiper-slide box">
                        <img src="./assets/img/comment1.jpg" />
                        <p>
                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut sequi
                            adipisci delectus sint
                        </p>
                        <h3>john deo></h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- review section ends -->

        <!-- blogs section start -->
        <section class="blogs" id="blogs">
            <h1 class="heading">our <span>blogs</span></h1>
            <div class="box-container">
                <div class="box">
                    <img src="./assets/img/comment.jpg" />
                    <div class="content">
                        <div class="icons">
                            <a href="#"><i class="fas fa-user"></i> by user</a>
                            <a href="#"><i class="fas fa-calendar"></i> 1st May, 2021</a>
                        </div>
                        <h4> Lorem ipsum dolor sit amet consectetur adipisicing elit.</h4>
                        <a href="#" class="btn">read more</a>
                    </div>
                </div>

                <div class="box">
                    <img src="./assets/img/comment.jpg" />
                    <div class="content">
                        <div class="icons">
                            <a href="#"><i class="fas fa-user"></i> by user</a>
                            <a href="#"><i class="fas fa-calendar"></i> 1st May, 2021</a>
                        </div>
                        <h4> Lorem ipsum dolor sit amet consectetur adipisicing elit.</h4>

                        <a href="#" class="btn">read more</a>
                    </div>
                </div>

                <div class="box">
                    <img src="./assets/img/comment.jpg" />
                    <div class="content">
                        <div class="icons">
                            <a href="#"><i class="fas fa-user"></i> by user</a>
                            <a href="#"><i class="fas fa-calendar"></i> 1st May, 2021</a>
                        </div>
                        <h4> Lorem ipsum dolor sit amet consectetur adipisicing elit.</h4>
                        <a href="#" class="btn">read more</a>
                    </div>
                </div>

                <div class="box">
                    <img src="./assets/img/comment.jpg" />
                    <div class="content">
                        <div class="icons">
                            <a href="#"><i class="fas fa-user"></i> by user</a>
                            <a href="#"><i class="fas fa-calendar"></i> 1st May, 2021</a>
                        </div>
                        <h4> Lorem ipsum dolor sit amet consectetur adipisicing elit.</h4>
                        <a href="#" class="btn">read more</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- blogs section ends -->

        <!-- footer section starts -->
        <%@include file="./inc/footer.jsp" %>
        <!-- footer section ends -->
        <!-- Liên kết đến tệp JavaScript -->
        <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
        <script src="./assets/javascript/script.js"></script>
    </body>
</html>
