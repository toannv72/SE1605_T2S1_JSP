<%-- 
    Document   : error.jsp
    Created on : Sep 29, 2022, 7:50:53 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        Error: <h1><%= request.getAttribute("ERROR")  %></h1>
    </body>
</html>
