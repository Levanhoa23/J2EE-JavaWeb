<%-- 
    Document   : siderbar
    Created on : Oct 30, 2024, 4:15:03 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-secondary navbar-dark">
                <a href="DashBoardServlet" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>Dashboard</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="./assets/admin/img/lvh.png" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">Lê Văn Hòa</h6>
                        <span>Admin</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="DashBoardServlet" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>User</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="IndexUserServlet" class="dropdown-item">All</a>
                            <a href="CreateUserServlet" class="dropdown-item">Add</a>
                        </div>
                    </div>
                    
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-table me-2"></i>Category</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="IndexCategoryServlet" class="dropdown-item">All</a>
                            <a href="CreateCategoryServlet" class="dropdown-item">Add</a>
                        </div>
                    </div>
                    
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Product</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="IndexProductServlet" class="dropdown-item">All</a>
                            <a href="CreateProductServlet" class="dropdown-item">Add</a>
                        </div>
                    </div>
                    
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-keyboard me-2"></i>Order</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="IndexOrderServlet" class="dropdown-item">All</a>
                            <a href="CreateOrderServlet" class="dropdown-item">Add</a>
                        </div>
                    </div>
                    
                </div>
            </nav>
        </div>