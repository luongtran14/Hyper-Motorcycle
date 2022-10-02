<%-- 
    Document   : AddCategory
    Created on : Oct 1, 2022, 11:51:41 PM
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
        <h1>Add new a category</h1>
        <h3 style="color:red">${requestScope.mess}</h3>
        <form action="addcategory">
            <h3> Enter name category:<input type = "text" name="categoryname" maxlength="50"> </h3>
            <h2> <input type="submit" value="Save"> </h2>
        </form>
    </body>
</html>
