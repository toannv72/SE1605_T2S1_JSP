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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"><!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src='https://www.google.com/recaptcha/api.js?hl=en'></script>
    </head>
    <body>
 <div aria-live="polite" aria-atomic="true" class="position-relative">

     <div class="toast-container top-0 end-0 p-3" style="    margin-top: 88px;"     >

                <div class="toast fade show" role="alert" aria-live="assertive" aria-atomic="true">
                    <div class="toast-header">
                        <svg class="bd-placeholder-img rounded me-2" width="20" height="20" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="red"></rect></svg>

                        <strong class="me-auto">
                            Notification</strong>
                        <small class="text-muted">just now</small>
                        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                    </div>
                    <div class="toast-body">
                        ${requestScope.ERROR}
                    </div>
                </div>


            </div>
        </div>
        <div class="home" style="background-color: darkgoldenrod; height: 70px; text-align: center; "><img src="https://banghegiare.com.vn/data/news/3722/logo-thuong-hieu-cafe.png" style=" height: 62px;  border-radius: 100%; margin: 4px;" alt=""></div>
        <div class="login" style=" margin: 0 auto;   padding: 31px; width: 472px;  border: 3px solid #4f4949; border-radius: 20px; margin-top: 30px" >
            <h2>Welcome to the login Page</h2>

            
            
            <form action="MainController" method="POST" style="margin:10px ;">

                <div class="formg-roup">

            <div class="formg-roup">
                <form action="MainController" method="POST" style="margin:10px ;">

                    User ID <input class="form-control"type="text" name="userID" /></br>
                    Password <input class="form-control"type="password" name="password"/></br>
                    <div class="g-recaptcha" data-sitekey="6Lea6JghAAAAAJIVvUKFe9hgkNeKM7rFOglMouub"></div>
                    <br>
                    <input  style="width: 100%;margin-bottom: 10px;"class="btn btn-primary" type="submit" name="action" value="Login"/>
                   
                    <br>
                </form>

                <div class="d-flex align-items-center justify-content-between my-3"><hr class="flex-fill m-0"> <span class="mx-3">
                        OR
                    </span> <hr class="flex-fill m-0"></div>
                <a  href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/SE1605_T2S1_JSP/LoginGmailServlet&response_type=code&client_id=44053918113-1jh0a9cv9jnlt9psod25op4ek2crcm7r.apps.googleusercontent.com&approval_prompt=force" class="btn btn-secondary btn-block" >
                    <img src="https://accounts.google.com/favicon.ico" alt="" width="24" height="24">
                    Login email
                </a> 
                <!--                    <input style="width: 100%; margin-top: 10px; margin-bottom: 10px;" class="btn btn-primary" type="reset" value="Reset" /> <br>-->
                <div style="margin-top:  10px">
                    <a class="btn btn-outline-dark" href="create.jsp">Create</a>
                    <a class="btn btn-outline-dark" href="shopping.jsp">Shopping</a>
                </div>



            </div>     

        </div>




    </body>
</html>
