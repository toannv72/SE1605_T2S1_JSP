

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
        
        

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        
        
        
        <div class="home" style="background-color: darkgoldenrod; height: 70px; text-align: center; "><img src="https://banghegiare.com.vn/data/news/3722/logo-thuong-hieu-cafe.png" style=" height: 62px;  border-radius: 100%; margin: 4px;" alt=""></div>

 
        <div class="login" style=" margin: 0 auto;padding: 31px; width: 472px;  border: 3px solid #4f4949; border-radius: 20px; margin-top: 30px" >
   
          
        
            <h2 class="display-5">Input your information: </h2>
            <form action="MainController" >
                <table >

                    <tr>
                        <td>User ID:</td> 
                        <td class="ms-1"><input style="border-radius: 10px" type="text" name="userID" required=""/></td>
                          
                    </tr>
                      <tr><td><font color="red"> ${requestScope.USER_ERROR.userID}</font></td></tr>

                    <tr>
                        <td>Full Name:</td> 
                        <td class="ms-1"><input style="border-radius: 10px"type="text" name="fullName" required=""/></td>
                         
                    </tr>
                    <tr><td><font color="red"> ${requestScope.USER_ERROR.fullName}</font></td></tr>

                    <input type="hidden" value="US" name="roleID" />


                    <tr>
                        <td>Password:</td> 
                        <td class="ms-1"><input style="border-radius: 10px"type="password" name="password" required=""/> </td>
                    </tr>

                    <tr>
                        <td>Confirm:</td> 
                        <td class="ms-1"><input style="border-radius: 10px"type="password" name="confirm" required=""/></td>
                        
                    </tr>
                    <tr><td><font color="red"> ${requestScope.USER_ERROR.confirm}</font> </td></tr>

                    <tr>
                        <td><input style="margin-top: 10px"class="btn btn-outline-primary" type="submit" name="action" value="Create"/></td>
                        <!--<td><input style="margin-top: 10px"class="btn btn-outline-warning" type="reset" value="Reset"/></td>-->
                    </tr>

                </table>
                <div class="d-flex align-items-center justify-content-between my-3"><hr class="flex-fill m-0"> <span class="mx-3">
                        Already have an account?
                    </span> <hr class="flex-fill m-0"></div>
                <a style="width: 100%;margin-bottom: 10px;"href="login.html" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">login</a>
            </form>
        </div>
                    
                    
      

    </body>
</html>
