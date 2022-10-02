<%-- 
    Document   : CategoryAdmin
    Created on : Oct 1, 2022, 3:06:52 PM
    Author     : nguye
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
        <a href="admin.jsp" style="margin: 2rem;">Back to home admin</a>
        <h1>Category List Admin</h1>
        <h3 style="color: red">${requestScope.mess}</h3>
        <h3><a href="AddCategory.jsp" style="margin: 2rem;">Add new category </a></h3>
      
        
            <table class="table table-responsive table-bordered table-striped">
                <thead>
                    <th>ID</th>
                    <th>Name</th>
                    
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.allcategory}" var="category" varStatus="loop">
                        <tr>
                            <td>${category.categoryId}</td>
                            <td>${category.categoryName}</td>
                            
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

