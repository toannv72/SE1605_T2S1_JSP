<%-- 
    Document   : login.jsp
    Created on : Sep 29, 2022, 7:51:19 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>

        <div class="home" style="background-color: darkgoldenrod; height: 70px; text-align: center; "><img src="https://banghegiare.com.vn/data/news/3722/logo-thuong-hieu-cafe.png" style=" height: 62px;  border-radius: 100%; margin: 4px;" alt=""></div>
        <div class="login" style=" margin: 0 auto;   padding: 31px; width: 472px;  border: 3px solid #4f4949; border-radius: 20px; margin-top: 30px" >
            <h2>Welcome to the login Page</h2>
            <form action="MainController" method="POST" style="margin:10px ;">

                <div class="formg-roup">
                    User ID <input class="form-control"type="text" name="userID" /></br>
                    Password <input class="form-control"type="password" name="password"/></br>

                    <input  style="width: 100%;margin-bottom: 10px;"class="btn btn-primary" type="submit" name="action" value="Login"/>
                    <h4> ${requestScope.ERROR}</h4>
                     <br>
                     <div class="d-flex align-items-center justify-content-between my-3"><hr class="flex-fill m-0"> <span class="mx-3">
                        OR
                    </span> <hr class="flex-fill m-0"></div>
                    <a href="#" class="btn btn-secondary btn-block">
                        <img src="https://accounts.google.com/favicon.ico" alt="" width="24" height="24">
                        Login email
                    </a> 
                    <!--                    <input style="width: 100%; margin-top: 10px; margin-bottom: 10px;" class="btn btn-primary" type="reset" value="Reset" /> <br>-->

                   

                    <div style="margin-top:  10px">
                        <a class="btn btn-outline-dark" href="create.jsp">Create</a>
                        <a class="btn btn-outline-dark" href="shopping.jsp">Shopping</a>
                    </div>

                </div>
            </form>

    </body>
</html>
