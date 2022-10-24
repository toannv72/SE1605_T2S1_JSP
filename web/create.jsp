

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create page</title>
        <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">-->

    </head>
    <body>
        <% 
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError==null) userError = new UserError();
        %>
        <h1 class="display-5">Input your information: </h1>
        <form action="MainController" >
            <table>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
                
                <tr>
                    <td>User ID:</td> 
                    <td class="ms-1"><input type="text" name="userID" required=""/></td>
                </tr>
                <%= userError.getUserID()%>
                
                <tr>
                    <td>Full Name:</td> 
                    <td class="ms-1"><input type="text" name="fullName" required=""/></td>
                </tr>
                <%= userError.getFullName()%>
                
                <tr>
                    <td>Role ID:</td> 
                    <td class="ms-1"><input type="text" name="roleID" value="US" readonly=""/></td>
                </tr>
                
                <tr>
                    <td>Password:</td> 
                    <td class="ms-1"><input type="password" name="password" required=""/> </td>
                </tr>
                
                <tr>
                    <td>Confirm:</td> 
                    <td class="ms-1"><input type="password" name="confirm" required=""/></td>
                <tr>
                <%= userError.getConfirm()%>
                
                <tr>
                    <td><input  type="submit" name="action" value="Create"/></td>
                    <td><input  type="reset" value="Reset"/></td>
                <tr>
            </table>
        </form>
          </body>
</html>
