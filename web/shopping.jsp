<%-- 
    Document   : shopping
    Created on : Oct 13, 2022, 8:07:24 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <style type="text/css">
            <%@include file="/css/css.css"%>

        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"> <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Page</title>
    </head>
    <body >
        <c:if test="${not empty requestScope.MESSAGE}">
            <div aria-live="polite" aria-atomic="true" class="position-relative">
                <div class="toast-container top-0 end-0 p-3" style="margin-top: 120px">
                    <div aria-live="polite" aria-atomic="true" class="position-relative">

                        <div class="toast fade show" role="alert" aria-live="assertive" aria-atomic="true">
                            <div class="toast-header">
                                <svg class="bd-placeholder-img rounded me-2" width="20" height="20" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="red"></rect></svg>
                                <strong class="me-auto">
                                    Notification</strong>
                                <small class="text-muted">just now</small>
                                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                            </div>
                            <div class="toast-body">
                                <font color="black">${requestScope.MESSAGE}</font> 
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </c:if>   


        <div class="home" style="background-color: darkgoldenrod; height: 46px; text-align: center; "><h2 style=" left: 50%;
                                                                                                          top: 50%;text-align: center;">Welcome to Mint's Coffee</h2></div>


        Chon dai di
        <form action="MainController">
            <select name="cmbTea">
                <option value="T01-Milk Tea-25">  Milk Tea - $25 </option>
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
            <a style="margin-left: 70%; margin-top: 15px"href="login.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">login</a>

            <div class="long" >
                <div class="card">

                    <a href="MainController?cmbTea=T01-Milk+Tea-25&cmbQuantity=1&action=Add"> <img class="toan" src="https://i.pinimg.com/236x/d6/30/6f/d6306fd6d613e2c581e1467dfeb2cb72.jpg" alt="">
                    </a>


                </div>
                <div class="card">
                    <a href="MainController?cmbTea=T02-Latte+Fresh+Milk-25&cmbQuantity=1&action=Add"><img class="toan" src="https://t3.ftcdn.net/jpg/02/09/55/40/360_F_209554023_k2H2GJRvQXelpZpv7wl3Q7VEfhwuXJP7.jpg" alt="">
                    </a>

                </div>
                <div class="card">
                    <!--Freeze - $45--> 
                    <a href="MainController?cmbTea=T03-Freeze-45&cmbQuantity=1&action=Add"><img class="toan" src="https://cdn-img-v2.webbnc.net/uploadv2/web/10/10903/media/2019/07/20/03/26/1563593189_chocolate-phin-freeze--1.jpg" alt="">
                    </a>

                </div>
                <div class="card">
                    <!--                    Soda Lemon - $50 /-->
                    <a href="MainController?cmbTea=T04-Soda+Lemon-50&cmbQuantity=1&action=Add"><img class="toan" src="https://www.acouplecooks.com/wp-content/uploads/2021/12/Lemon-Soda-006-1.jpg" alt="">
                    </a>

                </div>
                <div class="card">
                    <!--Pink Lady - $15--> 
                    <a href="MainController?cmbTea=T05-Pink+Lady-15&cmbQuantity=1&action=Add"><img class="toan" src="https://cdn.tgdd.vn/2021/03/CookProductThumb/PinkLady-CocktailRecipe0-14screenshot(2)(1)-600x600.jpg" alt="">
                    </a>

                </div>
            </div>


        </form>
        <!--${requestScope.MESSAGE}-->

    </body>
</html>
