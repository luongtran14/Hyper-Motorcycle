<%-- 
    Document   : ProductAdminEdit
    Created on : Oct 1, 2022, 7:03:28 PM
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
        <h1>Edit Address</h1>
        <form 
            method="POST"
            action="${pageContext.request.contextPath}/user/address/edit?id=${data.id}"
            style="margin-left: 20px"
            >
            <input type="hidden" name="id" value="${data.id}"/>
            <div style="margin-top: 20px">
                <label>Province</label>
                <input 
                    id="productName"
                    class="form-control"
                    style=""
                    type="text"
                    name="province" 
                    value="${data.province}" 
                    placeholder="Province"
                    required
                />
            </div>
            <div style="margin-top: 20px">
                <label>City</label>
                <input 
                    id="productBrand"
                    class="form-control"
                    style=""
                    type="text"
                    name="city" 
                    value="${data.city}" 
                    placeholder="City"
                    required
                />
            </div>
           <div style="margin-top: 20px">
                <label>District</label>
                <input 
                    id="productImage"
                    class="form-control"
                    style=""
                    type="text"
                    name="district" 
                    value="${data.district}" 
                    placeholder="District"
                    required
                />
            </div>
             <div style="margin-top: 20px">
                <label>Full Address</label>
                <input 
                    id="productDescription"
                    class="form-control"
                    style=""
                    name="fullAddress"
                    value="${data.fullAddress}"
                    placeholder="Full Address"
                    required                    
                    >
                
            </div>
                     
                     <div class = "form-check" style="margin-top: 20px">
                <label>Is Main Address</label>
                <input 
                    id="productDescription"
                    class="form-check-input"
                    style=""
                    type="checkbox"
                    name="isMain"
                    value="${data.isMain}"
                     ${data != null && data.isMain == 0 ? "" :"checked"}
                    >
            </div>
                    <br>
            <button
                id="submitForm"
                class="btn btn-primary"
                style=""
                name="submit"
                onsubmit="getSelectedValues()"
                type="submit">
                Save
            </button>
                     <a 
                                    id="delete{item.id}"
                                    onclick="Delete(${item.id})"
                                    class="btn btn-danger mx-2">
                                    Delete
                                </a>
                                     </button>
                                           <button
                id="submitForm"
                class="btn btn-default"
                style=""
                name="submit"
                onclick="back()"
                type="reset">
                Back
            </button>
        </form>
            
        <script>
            function Delete(id) {
                if (confirm("Are you sure you want to Delete this Address?")) {
                    window.location.href='http://localhost:8080${pageContext.request.contextPath}/user/address/delete?id=' + id;
                }
            }
              function back(){
                   window.location.href='http://localhost:8080${pageContext.request.contextPath}/user/address';
            
        }
        </script>
    </body>
</html>
