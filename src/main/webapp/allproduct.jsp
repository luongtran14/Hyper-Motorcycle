<%-- 
    Document   : ProductAdmin.jsp
    Created on : Sep 18, 2022, 10:50:35 PM
    Author     : Admin
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Vendor CSS-->
        <link rel="stylesheet" type="text/css" href="libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="libs/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="libs/jquery-ui/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="libs/superfish-menu/css/superfish.min.css">
        <link rel="stylesheet" type="text/css" href="libs/slick-sider/slick.min.css">
        <link rel="stylesheet" type="text/css" href="libs/slick-sider/slick-theme.min.css">
        <link rel="stylesheet" type="text/css" href="libs/swiper-sider/dist/css/swiper.min.css">
        <link rel="stylesheet" type="text/css" href="libs/magnific-popup/dist/magnific-popup.min.css">
    </head>
    <body>
        <a href="../index.html" style="margin: 2rem;">Back to home page</a>
        <h1>Product List Admin</h1>
        <select>
            <option>All Categories</option>
            <c:forEach items="${requestScope.allCategories}" var="category">
                <option value="${category.categoryId}">
                    ${category.categoryName}
                </option>
            </c:forEach>
        </select>
        <!--<form id="formProduct" action="/admin/products" method="POST">-->
        <table class="table table-responsive table-bordered table-striped">
            <thead>
            <th>ID</th>
            <th>Name</th>
            <th>Brand</th>
            <th>Serial Number</th>
            <th>Image</th>
            <th>Description</th>
            <th>Motor CC</th>
            <th>Category</th>
            <th>Unit Price</th>
            <th>Unit In Stock</th>
            <th>Date in</th>
            <th>Is deleted</th>
        </thead>
        <tbody>
            <c:forEach items="${requestScope.allMotors}" var="motor" varStatus="loop">
                <tr>
                    <td>${motor.productId}</td>
                    <td>${motor.productName}</td>
                    <td>${motor.brand}</td>
                    <td>${motor.serialNumber}</td>
                    <td>${motor.imageUrl}</td>
                    <td>${motor.description}</td>
                    <td>${motor.motorCC}</td>
                    <td>${motor.category.categoryName}</td>
                    <td>${motor.unitPrice}</td>
                    <td>${motor.unitInStock}</td>
                    <td>${motor.dateIn}</td>
                    <td>${motor.isDeleted}</td>
                    <td>
                        <a href="./AddToCart?pid=${motor.productId}&quantity=1" style="background-color:#76ffff; " class="btn add-to-cart-btn"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>add to cart</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
        <a href="./ViewCart">View Cart</a>
    <!--</form>-->
</body>
</html>
