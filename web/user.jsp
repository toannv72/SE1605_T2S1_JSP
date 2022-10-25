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
    </head>
    <body>
        <h1>Hello user</h1>


        <c:if test="${sessionScope.LOGIN_USER ==null || sessionScope.LOGIN_USER.roleID ne 'US'}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <h1>Welcome ${sessionScope.LOGIN_USER.userID}</h1>
        Full name: ${sessionScope.LOGIN_USER.fullName}<br>     
        Role ID:  ${sessionScope.LOGIN_USER.roleID}<br>
        Password:  ${sessionScope.LOGIN_USER.password}<br>
         avatar:   <img src="${sessionScope.LOGIN_USER.avatar}" alt="alt"/> <br>
      



        <a href="shopping.jsp">shopping page</a>
        <form action="MainController">
            <input type="submit" name="action" value="Logout">

        </form>
    </body>
</html>
