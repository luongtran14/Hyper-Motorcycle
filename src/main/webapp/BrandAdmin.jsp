<%-- 
    Document   : BrandAdmin
    Created on : Oct 13, 2022, 3:26:59 PM
    Author     : nguye
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
        <a href="admin.jsp" style="margin: 2rem;">Back to home admin</a>
        <h1>Brand List Admin</h1>
        
        
      
        
            <table class="table table-responsive table-bordered table-striped">
                <thead>
                    <th>ID</th>
                    <th>BrandName</th>
                    
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.listbrand}" var="brand" varStatus="loop">
                        <tr>
                            <td>${brand.brand_id}</td>
                            <td>${brand.brand_name}</td>
                            
                            <td>
                                <a href="deletecategory?categoryid=${category.categoryId}" >Delete</a>
                                 <a href="updatecategory?categoryid=${category.categoryId}" >Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        <!--</form>-->
       
    </body>
</html>
