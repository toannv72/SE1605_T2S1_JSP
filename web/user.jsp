<%-- 
    Document   : user.jsp
    Created on : Sep 29, 2022, 7:55:53 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"><!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">     
        <link href="./css.css" rel="stylesheet">


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src='https://www.google.com/recaptcha/api.js?hl=en'></script>
        <style type="text/css">
            <%@include file="/css/css1.css"%>

        </style>
    </head>
    <body>
        <div style="    background-color: #000000f0;width: 100%;justify-content: space-around;    display: flex;">
            <h1>Hello user</h1>
            <form action="MainController">
                <input style="margin-top: 13px;" class="btn btn-outline-success" type="submit" name="action" value="Logout">

            </form>
        </div>
        <c:if test="${sessionScope.LOGIN_USER ==null || sessionScope.LOGIN_USER.roleID ne 'US'}">
            <c:redirect url="login.jsp"/>
        </c:if>

        <div style="width: 100%;"> 
            <div class="card" style="width: 18rem; margin: 0 auto;" >
                
                <c:if test="${not empty sessionScope.LOGIN_USER.avatar}">
                <img src="${sessionScope.LOGIN_USER.avatar}" class="card-img-top" alt="not found">
                </c:if>
                <c:if test="${ empty sessionScope.LOGIN_USER.avatar}">
                <img src="https://mondaycareer.com/wp-content/uploads/2020/11/anime-l%C3%A0-g%C3%AC-v%C3%A0-kh%C3%A1i-ni%E1%BB%87m.jpg" class="card-img-top" alt="not found">
                </c:if>
                <div class="card-body">
                    <p class="card-text"> 
                        User ID: ${sessionScope.LOGIN_USER.userID}</br>
                        Full Name: ${sessionScope.LOGIN_USER.fullName}</br>
                        Role ID: ${sessionScope.LOGIN_USER.roleID}</br>
                    </p>
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://www.google.com/recaptcha/api.js?hl=en"></script>

        <link rel="stylesheet" href="./test.css" />
    </head>
<body>
    <div class="c">
        <div class="i">
            <img
                class="img"
                src="https://mythuat.info/wp-content/uploads/2022/07/anime4.jpg"
                />
        </div>
        <div class="s1"></div>
        <div class="s2"></div>
        <div class="s3"></div>
</body>
</html>
