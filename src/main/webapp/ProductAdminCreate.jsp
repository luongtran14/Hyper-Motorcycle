<%-- 
    Document   : ProductAdminCreate
    Created on : Oct 1, 2022, 4:30:58 PM
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
        <h1>Create a new Product</h1>
        <form 
            method="POST"
            action="${pageContext.request.contextPath}/admin/products/create">
            <div>
                <label>Name:</label>
                <input 
                    id="productName"
                    class="form-control"
                    style=""
                    type="text"
                    name="name" 
                    value="" 
                    placeholder="Product Name"
                />
            </div>
            <div>
                <label>Brand:</label>
                <input 
                    id="productBrand"
                    class="form-control"
                    style=""
                    type="text"
                    name="brand" 
                    value="" 
                    placeholder="Brand"
                />
            </div>
            <div>
                <label>Image:</label>
                <input 
                    id="productImage"
                    class="form-control"
                    style=""
                    type="file"
                    name="image" 
                    value="" 
                />
            </div>
            <div>
                <label>Description:</label>
                <input 
                    id="productDescription"
                    class="form-control"
                    style=""
                    name="description"
                    value="">
            </div>
            <div>
                <label>Category:</label>
                <select 
                    id='productCategory'
                    name="category">
                    <c:forEach items="${requestScope.allCategories}" var="category">
                        <option 
                            value="${category.categoryId}">
                            ${category.categoryName}
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label>Unit Price(VND):</label>
                <input 
                    id="productUnitPrice"
                    class="form-control"
                    style=""
                    type="number"
                    name="unitPrice" 
                    value="" 
                    placeholder="Unit Price (VND)"
                />
            </div>
            <div>
                <label>Unit In Stock:</label>
                <input 
                    id="productUnitInStock"
                    class="form-control"
                    style=""
                    type="number"
                    name="unitInStock" 
                    value="" 
                    placeholder="Unit In Stock"
                />
            </div>
            <div>
                <label>Date In:</label>
                <input 
                    id="productDateIn"
                    class="form-control"
                    style=""
                    type="date"
                    name="dateIn"
                />
            </div>
            <button
                id="submitForm"
                class="btn btn-primary"
                style=""
                name="submit"
                type="submit">
                Submit
            </button>
        </form>
            
        <script>

        </script>
    </body>
</html>