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
    </head>
    <body>
        <h1>Hello World!</h1>
        <select>
            <option>All Categories</option>
            <c:forEach items="${requestScope.allCategories}" var="category">
                <option value="${category.categoryId}">
                    ${category.categoryName}
                </option>
            </c:forEach>
        </select>
        <form id="formProduct" action="/admin/products" method="POST">
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
                    <th>Action
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
                                <button 
                                    click="editProduct(${motor.productId})"
                                    class="btn btn-primary mx-2">
                                    Edit
                                </button>
                                <button 
                                    click="deleteProduct(${motor.productId})"
                                    class="btn btn-danger mx-2">
                                    Delete
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </form>
        <script>
            editProduct(id) {
                
            }
            
            deleteProduct(id) {
                
            }
        </script>
    </body>
</html>
