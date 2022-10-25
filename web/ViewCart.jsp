<%-- 
    Document   : viewCart
    Created on : Oct 13, 2022, 8:47:06 AM
    Author     : hohon
--%>

<%@page import="sample.tea.TeaDTO"%>
<%@page import="sample.tea.CartDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart Page</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"><!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <h1>Enjoy your Happy time!</h1>
        <%
            CartDTO cart = (CartDTO) session.getAttribute("CART");
            if (cart != null) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Update</th>
                    <th>Remove</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    double total = 0;
                    for (TeaDTO tea : cart.getCart().values()) {
                        total += tea.getQuantity() * tea.getPrice();
                %>
            <form action="MainController" method="POST"> 
                <tr>
                    <td><%= count++%></td>
                    <td>
                        <input type="text" name="id" value="<%= tea.getId()%>" readonly=""/>
                    </td>

                    <td><%= tea.getName()%></td>
                    <td><%= tea.getPrice()%></td>
                    <td>
                        <input type="number" name="quantity" value="<%= tea.getQuantity()%>" required="" min="1"/>
                    </td>
                    <td><%= tea.getPrice() * tea.getQuantity()%></td>
                    <td>
                        <input type="submit" name="action" value="Change"/>
                    </td>
                    <td>
                        <input type="submit" name="action" value="Remove"/>
                    </td>
                </tr>
            </form>   
            <%
                }

            %>
        </tbody>
    </table>
    <h1>Total: <%= total%></h1>    
    <%
        }
    %>
    <a href="shopping.jsp">Add more</a>
</body>
</html>
