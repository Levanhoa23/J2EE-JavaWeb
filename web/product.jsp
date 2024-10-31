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

        <div class="flex-box">
            <div class="left">
                <div class="big-img">
                    <img src="${product.thumbnail}">
                </div>
                <div class="images">
                    <div class="small-img">
                        <img src="./assets/images/1.jpg" onclick="showImg(this.src)">
                    </div>
                    <div class="small-img">
                        <img src="./assets/images/2.jpg" onclick="showImg(this.src)">
                    </div>
                    <div class="small-img">
                        <img src="./assets/images/3.jpg" onclick="showImg(this.src)">
                    </div>
                    <div class="small-img">
                        <img src="./assets/images/4.jpg" onclick="showImg(this.src)">
                    </div>
                </div>
            </div>


            <form class="right" action="CartServlet" method="post">
                <input type="hidden" name="action" value="create">
                <input type="hidden" name="productId" value="${product.id}">
                <input type="hidden" name="price" value="${product.price}">

                <div class="url">Home > Product > T-Shirt</div>
                <div class="pname">${product.name}</div>
                <div class="ratings">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <div class="price">$${product.price}0</div>
                <div class="size">
                    <p>Size :</p>
                    <div class="psize active">M</div>
                    <div class="psize active">L</div>
                    <div class="psize active">XL</div>
                    <div class="psize active">XXL</div>
                </div>
                <div class="quantity">
                    <p>Quantity :</p>
                    <input name="quantity" type="number"  min="1" max="5" value="1">
                </div>
                <div class="btn-box">
                    <button class="cart-btn">Add to Cart</button>

                </div>
                <span><a>Description: </a>${product.description}</span>
            </form>
        </div

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
                        <a href="#" class="btn">shop now</a>

                    </div>
                </c:forEach>
            </div>
        </section>
        <!-- categories section ends -->



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
