<%-- 
    Document   : admin.jsp
    Created on : Sep 29, 2022, 7:51:44 AM
    Author     : ADMIN
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"> <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>

        <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID != 'AD' }">
            <c:redirect url="login.jsp"/>
        </c:if>

        <h1 style="text-align: center;">Welcome: ${sessionScope.LOGIN_USER.fullName} </h1>

        <form action="MainController" style="  display: flex;height:  40px;    justify-content: space-around;">

            <div style="justify-content: flex-end;"> 
                Search <input style="border-radius: 10px;" type="text" name="search" value="<c:if test="${not empty requestScope.LIST_USER}">${param.search}</c:if>"/>
                    <input style="border-radius: 10px; "type="submit" name="action" value="Search"/>
                </div>
                <input style="border-radius: 5px; "type="submit" name="action"class="btn btn-outline-danger" value="Logout"/>
            </form>

        <c:if test="${not empty requestScope.LIST_USER}">
            <table border="1" class="table" style="width: 90%;margin: 0 auto;margin-top: 30px;">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">User ID</th>
                        <th scope="col">Full Name</th>
                        <th scope="col">Role ID</th>
                        <th scope="col">Password</th>
                        <th scope="col">Delete</th>
                        <th scope="col">Update</th>

                    </tr>
                </thead>
                <tbody>

                    <c:forEach var="user" items="${requestScope.LIST_USER}" varStatus="counter">
                    <form action="MainController" method="POST">
                        <tr>
                            <td>${counter.count}</td>

                            <td><input type="text" name="userID" value="${user.userID}"readonly=""/></td>
                            <td><input type="text" name="fullName" value="${user.fullName}"required=""></td>
                            <td><input type="text" name="roleID" value="${user.roleID}"required=""></td>
                            <td>${user.password}</td>
                            <td >
                                <a style="color: red"href="MainController?userID=${user.userID}&action=Delete&search=${param.search}">Delete </a>
                            </td>
                            <td>
                                <input type="submit" name="action" value="Update"/>
                                <input type="hidden" name="search" value="${param.search}"/>
                            </td>
                        </tr>
                    </form>                     
                </c:forEach>
            </tbody>
        </table>
        <font color="red">${requestScope.ERROR}</font> 

    </c:if>
</body>
</html>
