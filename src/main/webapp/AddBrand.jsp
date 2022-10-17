<%-- 
    Document   : AddBrand
    Created on : Oct 13, 2022, 9:58:08 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add new a brand</h1>
        <h3 style="color:red">${requestScope.mess}</h3>
        <form action="createbrand">
            <h3> Enter name brand<input type = "text" name="brandname" minlength="1" maxlength="50"> </h3>
            <h2> <input type="submit" value="Save"> </h2>
        </form>
    </body>
</html>