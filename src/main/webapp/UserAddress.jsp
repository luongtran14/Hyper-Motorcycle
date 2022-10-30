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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/libs/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/libs/jquery-ui/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/libs/superfish-menu/css/superfish.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/libs/slick-sider/slick.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/libs/slick-sider/slick-theme.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/libs/swiper-sider/dist/css/swiper.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/libs/magnific-popup/dist/magnific-popup.min.css">
    </head>
    <body>
        <a href="../index.html" style="margin: 2rem;">Back to home page</a>
        <div style='display: flex; align-items: center; justify-content: space-between'>
            <h1 class='col-6 col-sm-6 col-md-5 col-lg-3 col-xl-3'>User's Address List</h1>
            <div
                style='display: flex; justify-content: flex-end'
                class='col-6 col-sm-6 col-md-5 col-lg-3 col-xl-3'>
                <button 
                    class="btn btn-primary">
                    <a 
                        style='color: white' 
                        href="${pageContext.request.contextPath}/user/address/add">
                        Add New
                    </a>
                </button>
            </div>
        </div>

        <!--<form id="formProduct" action="${pageContext.request.contextPath}/admin/products" method="POST">-->
        <table
            class="table table-responsive table-bordered table-striped">
            <thead>
            <th>No.</th>
            <th>Province</th>
            <th>City</th>
            <th>District</th>
            <th>Full Address</th>
            <th>IS MAIN</th>
            <th></th>
        </thead>
        <tbody>
            <c:set var="count" value="1"/>
            <c:forEach items="${data}" var="item" varStatus="loop">
                <tr>
                    <td>${count}</td>
                    <td>${item.province}</td>
                    <td>${item.city}</td>
                    <td>${item.district}</td>
                    <td>${item.fullAddress}</td>
                    <td style="color: ${item.isMain != 0 ? "green" :"black"}">${item.isMain != 0 ? "YES" :"NO"}</td>                            <td>
                        <c:if test="${data.size() >= 2}">
                            <button 
                                onclick="Edit(${item.id})"
                                class="btn btn-primary mx-2">
                                Edit
                            </button>
                            <c:if test="${item.isMain != 1}">
                                <button 
                                    id="delete{item.id}"
                                    onclick="Delete(${item.id})"
                                    class="btn btn-danger mx-2">
                                    Delete
                                </button>
                            </c:if>
                        </c:if>
                    </td>
                </tr>
                <c:set var="count" value="${count + 1}"/>
            </c:forEach>
        </tbody>
    </table>
    <!--</form>-->
    <script>

        function Edit(id) {
            window.location.href = 'http://localhost:8080${pageContext.request.contextPath}/user/address/edit?id=' + id;
        }

        function Delete(id) {
            if (confirm("Are you sure you want to Delete this Address?")) {
                window.location.href = 'http://localhost:8080${pageContext.request.contextPath}/user/address/delete?id=' + id;
            }
        }

    </script>
</body>
</html>
