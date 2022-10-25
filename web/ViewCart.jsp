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
<<<<<<< HEAD
        <h1 style="text-align: center">Enjoy your Happy time!</h1>
        <%
            CartDTO cart = (CartDTO) session.getAttribute("CART");
            if (cart != null) {
        %>
        <table border="1" class="table" style="width: 60%;margin: 0 auto;margin-top: 30px;">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Total</th>
                    <th scope="col">Update</th>
                    <th scope="col">Remove</th>
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
                        <input style="background-color: red" type="submit" name="action" value="Remove"/>
                    </td>
                </tr>
            </form>  
                    
            <%
                }

            %>
        </tbody>
        <tr>
                    <th scope="col"><%= ++count%></th>
                    <th scope="col"colspan="5" style="text-align: center;font-size: 20px">Total</th>
                    <th scope="col"><%= total%></th>
                    <th scope="col"><input type="submit" name="" value="Pay" style="text-align: center;width: 72.66px;"/></th>
                </tr>
    </table>

    <%
        }
    %>
    
   
   
    
    <button  style="margin-left: 70%;margin-top: 15px"  type="button" class="btn btn-outline-success"> <a href="shopping.jsp">Add more</a></button>
    
=======
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
>>>>>>> 230f4b0b51b863aad34e5c6f6f5fe90055e442b0
</body>
</html>
