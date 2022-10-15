<%-- 
    Document   : UpdateBrand
    Created on : Oct 15, 2022, 8:36:31 AM
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
        <h1>Update a brand</h1>
        <h3 style="color: red">${requestScope.mess}</h3>
        <c:set var="brand" value="${requestScope.brand}"/>
        
        <form action="updatebrand" method="post">
            <h3> Id of brand<input type = "number" readonly="" name="brandid" value="${brand.brand_id}"> </h3>
            <h3> Enter name brand<input type = "text" name="brandname" maxlength="30" value="${brand.brand_name}"> </h3>
            <input type="submit" value="Update"> 
        </form>
    </body>
</html>
