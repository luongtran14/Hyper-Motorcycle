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
        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("Are U sure to DELETE color id = " + id)) {

                    window.location = "deletecolor?colorid=" + id;
                }
            }
        </script>

    </head>
    <body>
        <a href="admin.jsp" style="margin: 2rem;">Back to home admin</a>
        <h1>Color Manager </h1>
        <h3 style="color: red">${requestScope.mess}</h3>
        <h3 style="color: red">${requestScope.messerr}</h3>
        <table class="table table-responsive table-bordered table-striped">
            <thead>
            <th>Id color</th>
            <th>Name color</th>
        </thead>
        <tbody>
            <c:forEach items="${requestScope.color}" var="color" varStatus="loop">
             
            
                <tr>
                    <td>${color.colorId}</td>
                    <td>${color.colorName}</td>
                    

                    <tD>
                        <a href="#" onclick="doDelete(${color.colorId})" >Delete</a>
                    
                    </tD>
                </tr>
            </c:forEach>
        <form action="updatecolor">
            <input type="text" name="cId" placeholder="Color id want update" >Enter Color Id
            <input type="text" name="name">Enter Color Name
            <input type="submit" value="Update"></br>
        </form>
          <form action="createcolor">
            
            <input type="text" name="name">Enter Color Name
            <input type="submit" value="Create">
        </form>
        </tbody>
    </table>
    <!--</form>-->

</body>
</html>
