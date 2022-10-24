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
        <script src='https://www.google.com/recaptcha/api.js?hl=en'></script>
        <link rel="stylesheet" href="THUVIEN/bootstrap-5.2.0-dist/css/bootstrap.css"/>
        <script src="THUVIEN/bootstrap-5.2.0-dist/js/bootstrap.js"></script>
        <link rel="stylesheet" href="tool/login.css" />
    </head>
    <body>
        <div><div class="p1">
                <div class="p1">
                    <a href="#"><img style="  border-radius: 100% ;" src="anh/102c7ed9ad2c29b489ec34ebbf336a77.jpg" alt=""/> </a>
                    <h1>Cafe Chat</h1>
                </div>
            </div>
            <div class="p2">
                <div
                    id="carouselExampleIndicators"
                    class="carousel slide"
                    data-bs-ride="carousel"
                    >
                    <div class="carousel-indicators">
                        <button
                            type="button"
                            data-bs-target="#carouselExampleIndicators"
                            data-bs-slide-to="0"
                            class="active"
                            aria-current="true"
                            aria-label="Slide 1"
                            ></button>
                        <button
                            type="button"
                            data-bs-target="#carouselExampleIndicators"
                            data-bs-slide-to="1"
                            aria-label="Slide 2"
                            ></button>
                        <button
                            type="button"
                            data-bs-target="#carouselExampleIndicators"
                            data-bs-slide-to="2"
                            aria-label="Slide 3"
                            ></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img
                                src="img/photo-1615172282427-9a57ef2d142e.png"
                                class="d-block w-100"
                                alt="0"
                                />
                        </div>
                        <div class="carousel-item">
                            <img
                                src="img/images1602951_147537_E57AF91E_7FA2_4BA9_BC37_FB155407F445.png"
                                class="d-block w-100"
                                alt="1"
                                />
                        </div>
                        <div class="carousel-item">
                            <img src="img/motorbike.webp" class="d-block w-100" alt="2" />
                        </div>
                    </div>
                    <button
                        class="carousel-control-prev"
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="prev"
                        >
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button
                        class="carousel-control-next"
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="next"
                        >
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                    <h2>Motorbike rental website</h2>
                </div>      
                <div class="p22">
                    <div class="noi-dung">
                        <div class="form">
                            <h2>Welcome to the login Page</h2>
                            <form action="MainController" method="POST">
                                User ID <input type="text" name="userID" /></br>
                                Password <input type="password" name="password"/></br>
                                ${requestScope.ERROR} <br>
                                <br> <div class="input-form-1">  <input type="submit" name="action" value="Login"/><br></div>
                                
                                <a class="btn btn-outline-dark" href="create.jsp">Create</a>
                                <a class="btn btn-outline-dark" href="shopping.jsp">Shopping</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
