<%-- 
    Document   : EditNoteHistory
    Created on : Oct 17, 2022, 2:12:46 AM
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
        <h1>Edit, Update a Note</h1>
        
        <c:set var="history" value="${requestScope.history}"/>
        
        <form action="noteedit" method="post">
            <h3> Id of History<input type = "number" readonly="" name="historyid" value="${history.history_id}"> </h3>
           
            <h3> Enter note<input type = "text"  name="note" value="${history.note}"> </h3>
         
            <input type="submit" value="Update"> 
        </form>
    </body>
</html>
