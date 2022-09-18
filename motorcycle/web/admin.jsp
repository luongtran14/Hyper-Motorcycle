<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : employeelist
    Created on : Sep 17, 2022, 1:33:36 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee List</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.1/js/bootstrap.min.js" integrity="sha512-vyRAVI0IEm6LI/fVSv/Wq/d0KUfrg3hJq2Qz5FlfER69sf3ZHlOrsLriNm49FxnpUGmhx+TaJKwJ+ByTLKT+Yg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.1/css/bootstrap.min.css" integrity="sha512-siwe/oXMhSjGCwLn+scraPOWrJxHlUgMBMZXdPe2Tnk3I0x3ESCoLz7WZ5NTH6SZrywMY+PB1cjyqJ5jAluCOg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
        <div style=" top: 0; width: 100%; background-color:  #222222; display: flex; justify-content: space-between; ">
            <h2 style="color: white">Welcome admin</h2>
            <div>
                <a href="changepassword" class="btn btn-outline-info" style="margin: 3px;">Change Password</a>
                <a href="logout" class="btn btn-outline-info" style="margin: 3px;">Logout</a>
            </div>
        </div>
        <div  style="width: 100%">
            <div class="row">
                <div class="col-md-2" style="height:90vh; background-color: #222222">
                    <div style="border-bottom: 1px lightgray solid; width: 100%; text-align: center;padding: 5px;" >
                        <a href="EmployeeList" style="text-decoration: none; color: white; ">Dashboard</a>
                    </div> 
                </div>
                <!-- Page content-->
                <div class="col-md-10">
                    <h1>Content of admin</h1>
                </div>
            </div>
        </div>

    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#tablepro").DataTable({"pageLength": 5});
        });
    </script>
</body>
</html>