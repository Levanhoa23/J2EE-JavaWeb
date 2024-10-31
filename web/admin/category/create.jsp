<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>DASHMIN - Bootstrap Admin Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">


        <link href="./assets/admin/img/favicon.ico" rel="icon">


        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">


        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">


        <link href="./assets/admin/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="./assets/admin/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />


        <link href="./assets/admin/css/bootstrap.min.css" rel="stylesheet">


        <link href="./assets/admin/css/style.css" rel="stylesheet">
    </head>

    <body>
        <div class="container-xxl position-relative bg-white d-flex p-0">


            <!-- Sidebar Start -->
            <%@include file="../inc/siderbar.jsp" %>
            <!-- Sidebar End -->


            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <%@include file="../inc/navbar.jsp" %>
                <!-- Navbar End -->


                <!-- Table Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="row g-4">
                        <div class="col-12">
                            <div class="bg-light rounded h-100 p-4">
                                <h6 class="mb-4">Add new categories</h6>
                                <span class="eroror">${error}</span>
                                <c:remove var="error" scope ="session"/>

                                <form action="CreateCategoryServlet" method="post">
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Name: </label>

                                        <input name="name" type="text" class="form-control" id="exampleInputEmail1"
                                               aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Thumbnail: </label>

                                        <input name="thumbnail" type="text" class="form-control" id="exampleInputEmail1"
                                               aria-describedby="emailHelp">
                                    </div>
                            </div>


                        </div>

                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Add new categories/label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Table End -->


        <!-- Footer Start -->
        <%@include file="../inc/footer.jsp" %>
        <!-- Footer End -->
    </div>
    <!-- Content End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="./assets/admin/lib/chart/chart.min.js"></script>
<script src="./assets/admin/lib/easing/easing.min.js"></script>
<script src="./assets/admin/lib/waypoints/waypoints.min.js"></script>
<script src="./assets/admin/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="./assets/admin/lib/tempusdominus/js/moment.min.js"></script>
<script src="./assets/admin/lib/tempusdominus/js/moment-timezone.min.js"></script>
<script src="./assets/admin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>


<script src="js/main.js"></script>
</body>

</html>