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
                if (confirm("Are U sure to DELETE history id = " + id)) {

                    window.location = "deletehistory?historyid=" + id;
                }
            }
        </script>

    </head>
    <body>
        <a href="admin.jsp" style="margin: 2rem;">Back to home admin</a>
        <h1>History Price List </h1>
        <form action="historyprice" method="post">
            <input type = "text" name = "keyword" placeholder="Enter name, category"/><br/>
            From date: <input type="date" name="fromdate"/><br/>
            To date: <input type="date" name="todate"/><br/>
            <input type="submit" value="SEARCH">
        </form>
        <table class="table table-responsive table-bordered table-striped">
            <thead>
            <th>Id History</th>
            <th>Category</th>
            <th>Brand</th>
            <th>Name</th>                  
            <th>Price</th>
            <th>Date</th>
            <th>Note</th>


        </thead>
        <tbody>
            <c:forEach items="${requestScope.historylist}" var="history" varStatus="loop">
                <c:set var="id" value="${history.history_id}"/>
            
                <tr>
                    <td>${history.history_id}</td>
                    <td>${history.product_category}</td>
                    <td>${history.product_brand}</td>
                    <td>${history.product_name}</td>
                    <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${history.unit_price}" /></td>
                    <td><fmt:formatDate value="${history.updateprice_date}"/></td>
                    <td>${history.note}</td>

                    <tD>
                        <a href="#" onclick="doDelete(${history.history_id})" >Delete</a>
                        <a href="noteedit?historyid=${history.history_id}"  >UpdateNote</a>
                    </tD>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <!--</form>-->

</body>
</html>
