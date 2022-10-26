<%-- Document : viewCart Created on : Oct 13, 2022, 8:47:06 AM Author : hohon --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.tea.TeaDTO"%> <%@page import="sample.tea.CartDTO"%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>View Cart Page</title>
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
            crossorigin="anonymous"
            />
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <h1>Enjoy your Happy time!</h1>
        <c:if test="${not empty sessionScope.CART}">
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
                    <c:forEach var="tea" items="${sessionScope.CART.getCart().values()}" varStatus="count">
                        <c:set var="total" value="${total + (tea.quantity * tea.price)}" />
                    <form action="MainController" method="POST">
                        <tr>
                            <td>${count.count}</td>
                            <td>${tea.id}</td>
                            <td>${tea.name}</td>
                            <td>${tea.price}</td>
                            <td><input type="number" name="quantity" value="${tea.quantity}" min="1" /></td>
                            <td>${tea.quantity * tea.price}</td>
                        <input type="hidden" name="id" value="${tea.id}" />
                        <td><input type="submit" name="action" value="Change" /></td>
                        <td><input type="submit" name="action" value="Remove" /></td>
                        </tr>
                    </form>
                </c:forEach>
            </tbody>
        </table>
        <h1>Total: ${total}</h1>
    </c:if>
    <c:if test="${empty sessionScope.CART}">
        <h5>No product in cart</h5>
    </c:if>
    <a href="shopping.jsp">Add more</a>
</body>
</html>
