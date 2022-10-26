<%-- 
    Document   : user.jsp
    Created on : Sep 29, 2022, 7:55:53 AM
    Author     : ADMIN
--%>

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

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src='https://www.google.com/recaptcha/api.js?hl=en'></script>

    </head>
    <body>
        <div style="width: 100%;justify-content: space-around;    display: flex;">
            <h1>Hello user</h1>
            <form action="MainController">
                <input style="margin-top: 13px;" class="btn btn-outline-success" type="submit" name="action" value="Logout">

            </form>
        </div>
        <%
            UserDTO user = (UserDTO) session.getAttribute("LOGIN_USER");
            if (user == null || !"US".equals(user.getRoleID())) {
                response.sendRedirect("login.jsp");
                return;
            }
            if (user == null) {
                user = new UserDTO();
            }
        %>

        <div style="width: 100%;"> 
            <div class="card" style="width: 18rem; margin: 0 auto;" >
                <img src="https://user-images.githubusercontent.com/64313624/194779830-0feae0ab-a5ba-4e46-952b-76c74ed429e5.jpg" class="card-img-top" alt="...">
                <div class="card-body">


                    <p class="card-text"> 
                        User ID: <%= user.getUserID()%></br>
                        Full Name: <%= user.getFullName()%></br>
                        Role ID: <%= user.getRoleID()%></br>
                        Password: <%= user.getPassword()%>
                    </p>


                </div>
            </div>
        </div>
    </body>
</html>
