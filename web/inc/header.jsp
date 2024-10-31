<%-- 
    Document   : header
    Created on : Oct 28, 2024, 2:32:43 PM
    Author     : ASUS
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header">
    <a href="HomeServlet" class="logo"><i class="fas fa-shopping-basket"></i>HoaSport</a>
    <nav class="navbar">
        <a href="HomeServlet">Home</a>
        <div class="dropdown">

            <a href="ShopServlet" class="dropbtn">Shop</a>
            <div class="dropdown-content">
                <c:forEach items="${categoryList}" var="category">
                    <a href="CategoryServlet?categoryId=${category.id}">${category.name}</a>
                </c:forEach>
            </div>

        </div>
        <a href="AboutServlet">About</a>
        <a href="ContactServlet">Contact</a>
        <a href="BlogServlet    ">Blogs</a>
    </nav>
    <div class="icons">
        <div class="fas fa-bars" id="menu-btn"></div>
        <div class="fas fa-search" id="search-btn"></div>
        <a href="CartServlet"><div class="fas fa-shopping-cart" id="cart-btn"></div></a>
        <div class="btn-group">
            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <c:if test ="${sessionScope.user == null}">
                 <li class="dropdown-item" href="LoginServlet">Login</li>
                </c:if>
                  <c:if test ="${sessionScope.user != null}">
              <li class="dropdown-item" href="LogoutServlet">Logout</li>
                </c:if>
            </a>

            <ul class="dropdown-menu" style="font-size:2rem;">
                <li><a class="dropdown-item" href="LoginServlet">Login</a></li>
                <li><a class="dropdown-item" href="RegisterServlet">Register</a></li>
            </ul>
        </div>  
    </div>
    <form action="SearchServlet" class="search-form" method = "get">

        <input name="keyword" id="search-box" placeholder="search here..." />

        <label for="search-box" class="fas fa-search"></label>
    </form>


    
     


    <!-- Form Đăng Nhập -->
    

</header>