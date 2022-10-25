<%-- 
    Document   : shopping
    Created on : Oct 13, 2022, 8:07:24 AM
    Author     : hohon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"><!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body >

        <div class="home" style="background-color: darkgoldenrod; height: 46px; text-align: center; "><h2 style=" left: 50%;
                                                                                                          top: 50%;text-align: center;">Welcome to Mint's Coffee</h2></div>


        Chon dai di
        <form action="MainController">
            <select name="cmbTea">
                <option value="T01-Milk Tea-25">Milk Tea - $25 </option>
                <option value="T02-Latte Fresh Milk-25">Latte Fresh Milk - $25 </option>
                <option value="T03-Freeze-45">Freeze - $45 </option>
                <option value="T04-Soda Lemon-50">Soda Lemon - $50 </option>
                <option value="T05-Pink Lady-15">Pink Lady - $15 </option>
            </select>

            <select name="cmbQuantity">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="10">10</option>
                <option value="50">50</option>
            </select>
            <input type="submit" name="action" value="Add"/>
            <input type="submit" name="action" value="View"/>
        </form>

        ${requestScope.MESSAGE}

    </body>
</html>
