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
        <section class="Shop" id="Shop">
            <div class="content">
                <h3>fresh and<span>organic</span>products for your</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisincing elit. Aliquam
                    libero nostrum veniam facere tepore nisi.
                </p>
                <a href="ShopServlet" class="btn">Shop now</a>
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
            <section class="categories" id="categories">
                <h1 class="heading">New <span>Product</span></h1>
                <div class="box-container">
                    <c:forEach items="${productList}" var ="product">
                        <div class="box">
                            <img src="${product.thumbnail}" />
                            <h3>${product.name}</h3>
                            <li>upto 45% off</li>
                            <li>$${product.price}0</li>
                            <a href="#" class="btn">shop now</a>
                        </div>
                    </c:forEach>
                </div>
            </section>
            <section class="categories" id="categories">
                <h1 class="heading">New <span>Product</span></h1>
                <div class="box-container">
                    <c:forEach items="${productList}" var ="product">
                        <div class="box">
                            <img src="${product.thumbnail}" />
                            <h3>${product.name}</h3>
                            <li>upto 45% off</li>
                            <li>$${product.price}0</li>
                            <a href="#" class="btn">shop now</a>
                        </div>
                    </c:forEach>
                </div>
            </section>
          
        </section>
            
        <!-- footer section starts -->
        <%@include file="./inc/footer.jsp" %>
        <!-- footer section ends -->
        <!-- Liên kết đến tệp JavaScript -->
        <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
        <script src="./assets/javascript/script.js"></script>
    </body>
</html>
