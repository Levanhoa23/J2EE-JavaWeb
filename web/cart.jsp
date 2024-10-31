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
    <link rel="stylesheet" href="./assets/css/style.css"/>
    <link rel="stylesheet" href="./assets/css/styless.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    </link>
    <body>
        <%@include file="./inc/header.jsp" %>
        <!-- heder section ends -->
        <!-- home section starts -->
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
     
        <!-- features section ends -->  
        <section id="cart" class="section-p1">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Remove</td>
                        <td>Image</td>
                        <td>Product</td>
                        <td>Price</td>
                        <td>Quantidy</td>
                        <td>Subtotal</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${cart}" var ="orderItem">

                        <tr>
                            <td>
                                <c:if test="${not empty orderItem.productId}">
                                    <form class="right" action="CartServlet" method="post">
                                        <input type="hidden" name="action" value="delete">
                                        <input type="hidden" name="productId" value="${orderItem.productId}">
                                        <button type="submit" class="fa-regular fa-circle-xmark"></button>
                                    </form>
                                </c:if>

                            </td>
                            <td><img src="${orderItem.product.thumbnail}" alt=""></td>
                            <td>${orderItem.product.name}</td>
                            <td>$${orderItem.price}</td>
                            <td>
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="action" value="update">
                                    <input type="hidden" name="productId" value="${orderItem.productId}">
                                    <input onchange="this.form.submit()" type="number" name="quantity" value="${orderItem.quantity}" min="1">
                                </form>
                            </td>
                            <td>${orderItem.price * orderItem.quantity}</td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </section>

        <section id="cart-add" class="section-p1">
            <div class="coupon">
                <h3>Apply Coupon</h3>
                <div>
                    <input type="text" placeholder="Enter Your Coupon">
                    <button class="normal">Apply</button>
                </div>
            </div>

            <div class="subtotal">
                <h3>Cart Total</h3>
                <table>
                    <tr>
                        <td>Cart Subtotal</td>
                        <td>$${total}</td>
                    </tr>
                    <tr>
                        <td>Shipping</td>
                        <td>FreeShip toan quoc</td>
                    </tr>
                    <tr>
                        <td><strong>Total</strong></td>
                        <td><strong>$${total}</strong></td>
                    </tr>
                </table>
                    <a href="CheckoutServlet" ><button class="normal btn">Proceed to checkout</button></a>
            </div>
        </section>
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
        <%@include file="./inc/footer.jsp" %>

    </body>
</html>
