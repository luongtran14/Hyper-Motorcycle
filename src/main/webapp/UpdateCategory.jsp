<%-- 
    Document   : UpdateCategory
    Created on : Oct 2, 2022, 1:38:19 AM
    Author     : nguye
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update a category</h1>
        <c:set var="category" value="${requestScope.category}"/>
        
        <form action="updatecategory" method="post">
            <h3> Id of category<input type = "number" readonly="" name="categoryid" value="${category.categoryId}"> </h3>
            <h3> Enter name category:<input type = "text" name="categoryname" maxlength="30" value="${category.categoryName}"> </h3>
            <input type="submit" value="Update"> 
        </form>
    </body>
</html>
