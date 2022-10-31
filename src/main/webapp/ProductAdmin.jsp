<%-- 
    Document   : ProductAdmin.jsp
    Created on : Sep 18, 2022, 10:50:35 PM
    Author     : Admin
--%>
<%@page import="model.Motor" %>
<%@page import="java.util.ArrayList" %>
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
        <a href="/Hyper-Motorcycle/admin.jsp" style="margin: 2rem;">Back to home page</a>
        <div style='display: flex; align-items: center; justify-content: space-between'>
            <h1 class='col-6 col-sm-6 col-md-5 col-lg-3 col-xl-3'>Product List Admin</h1>
            <div
                style='display: flex; justify-content: flex-end'
                class='col-6 col-sm-6 col-md-5 col-lg-3 col-xl-3'>
                <button 
                    class="btn btn-primary">
                    <a 
                       style='color: white' 
                       href="${pageContext.request.contextPath}/admin/products/create">
                        Create a new Product
                    </a>
                </button>
            </div>
        </div>
        <form
            id="selectBoxCategoryForm"
            method="GET"
            action="${pageContext.request.contextPath}/admin/products"
        >
            <select 
                id='selectBoxCategory'
                onchange="getProductByCategoryId('selectBoxCategoryForm')"
                name="categoryId">
                <option value="0">
                    All Categories
                </option>
                <c:forEach items="${requestScope.allCategories}" var="category">
                    <option 
                        value="${category.categoryId}">
                        ${category.categoryName}
                    </option>
                </c:forEach>
            </select>
        </form>
        <!--<form id="formProduct" action="${pageContext.request.contextPath}/admin/products" method="POST">-->
            <table
                class="table table-responsive table-bordered table-striped">
                <thead>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Brand</th>
                    <th>Image</th>
                    <th>Description</th>
                    <th>Category</th>
                    <th>Unit Price</th>
                    <th>Unit In Stock</th>
                    <th>Date in</th>
                    <th>Disabled</th>
                    <th>Action
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.allMotors}" var="motor" varStatus="loop">
                        <tr>
                            <td>${motor.productId}</td>
                            <td>${motor.productName}</td>
                            <td>${motor.brand.brand_name}</td>
                            <td>${motor.imageUrl}</td>
                            <td>${motor.description}</td>
                            <td>${motor.category.categoryName}</td>
                            <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${motor.unitPrice}"/></td>
                            <td>${motor.unitInStock}</td>
                            <td><fmt:formatDate value="${motor.dateIn}"/></td>
                            <td>${motor.isDeleted}</td>
                            <td>
                                <button 
                                    onclick="editProduct(${motor.productId})"
                                    class="btn btn-primary mx-2">
                                    Edit
                                </button>
                                <button 
                                    id="disable${motor.productId}"
                                    onclick="disableProduct(${motor.productId})"
                                    class="btn btn-danger mx-2">
                                    Disable
                                </button>
                                <button 
                                    id="enable${motor.productId}"
                                    onclick="enableProduct(${motor.productId})"
                                    class="btn btn-secondary mx-2">
                                    Enable
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        <!--</form>-->
        <script>
            (() => {
                var selectBox = document.getElementById('selectBoxCategory');
                for (var item of selectBox.options) {
                    if (item.value == ${requestScope.currentCategory}) {
                        item.selected = true;
                        break;
                    }
                }
                
                <c:forEach items="${requestScope.allMotors}" var="motor" varStatus="loop">
                    console.log('alo');
                    document.getElementById('disable${motor.productId}').disabled = ${motor.isDeleted ? true : false};
                    document.getElementById('enable${motor.productId}').disabled = ${!motor.isDeleted ? true : false};
                </c:forEach>
            })();
            
            function editProduct(id) {
                window.location.href='http://localhost:8080${pageContext.request.contextPath}/admin/products/edit?id='+ id;
            }
            
            function disableProduct(id) {
                if (confirm("Are you sure you want to disable this product?")) {
                    window.location.href='http://localhost:8080${pageContext.request.contextPath}/admin/products/disable?id=' + id
                    + "&disable=true";
                }
            }
            
            function enableProduct(id) {
                window.location.href='http://localhost:8080${pageContext.request.contextPath}/admin/products/disable?id=' + id
                + "&disable=false";
            }
            
            function viewDetailsProduct(id) {
                window.location.href='http://localhost:8080${pageContext.request.contextPath}/admin/products/details?id='+ id;
            }
            
            function getProductByCategoryId(formId) {
                document.getElementById(formId).submit();
            }
        </script>
    </body>
</html>
