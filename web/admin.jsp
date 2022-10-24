<%-- 
    Document   : admin.jsp
    Created on : Sep 29, 2022, 7:51:44 AM
    Author     : ADMIN
--%>


<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>
   <%
            String valueSearch =request.getParameter("search");
            if (valueSearch == null) {
                valueSearch = "";
            } 
        %>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.html");
                return;
            }
        %>
        <h1>Welcome: <%= loginUser.getFullName()%> </h1>
     
        <form action="MainController">
            <input type="submit" name="action" value="Logout">
            Search <input type="text" name="search" value=<%= valueSearch %>>
            <input type="submit" name="action" value="Search"/>
           
        </form>
        <%
            List<UserDTO> listUser = (List<UserDTO>) request.getAttribute("LIST_USER");
            if (listUser != null) {
                if (listUser.size() > 0) {
        %>
        <table border="1" class="table">
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
                <%
                    String search = request.getParameter("search");
                    int count = 0;
                    for (UserDTO user : listUser) {
                %>
            <form action="MainController" method="POST">
                <tr>
                    <td><%= ++count%></td>

                    <td><input type="text" name="userID" value="<%= user.getUserID()%>"readonly=""/>
                    </td>
                    <td><input type="text" name="fullName" value="<%= user.getFullName()%>"required=""></td>
                    <td><input type="text" name="roleID" value="<%= user.getRoleID()%>"required=""></td>
                    <td><%= user.getPassword()%></td>
                    <td>
                        <a href="MainController?userID=<%=user.getUserID()%>&action=Delete&search=<%= search%>">Delete </a>
                    </td>
                    <td>
                        <input type="submit" name="action" value="Update"/>
                        <input type="hidden" name="search" value="<%= search%>"/>
                    </td>
                </tr>
            </form>                     
            <%
                }
            %> 
        </tbody>
    </table>
    <%
        String error = (String) request.getAttribute("ERROR");
        if (error == null) {
            error = "";

        }
    %>
            <%=error%>

    <%
            }
        }
    %>
</body>
</html>
