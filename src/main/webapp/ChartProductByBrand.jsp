<%-- 
    Document   : ChartProductByCategory
    Created on : Oct 2, 2022, 3:02:22 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js">
</script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>Chart of Product by Brand</h1>
        <form method="post" action="chartproduct" >
            Enter Brand Name:<input type="text" name="brandname" >
            <input type="submit" value="Search">            
        </form>
            <h3> ${brandname} </h3> 
        <canvas id="myChart" style="width:100%;max-width:600px"></canvas>
       
        <script>
            var xValues = ["${brandname}"];
            var yValues = ["${percentproduct}"];
            var barColors = ["red"];

            new Chart("myChart", {
                type: "bar",
                data: {
                    labels: xValues,
                    datasets: [{
                            backgroundColor: barColors,
                            data: yValues
                        }]
                },
                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: "${brandname} of ${totalproduct} product  " 
                    }
                }
            });
        </script>


    </body>
</html>

