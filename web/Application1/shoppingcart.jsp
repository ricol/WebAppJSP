<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <%@ page import = "java.util.*" %>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Shopping Cart JSP</title>
    </head>
    <body>
        <a href="../index.jsp">HOME</a>
        <hr />

        <center>
            <form method = "post" action = "shoppingcart.jsp">
                <h1>Shopping Cart Example</h1>
                <br />
                Please select a product and add it to your shopping cart
                <br />
                <select name = "product">
                    <option>Beginning Java 2 by Ivor Horton</option>
                    <option>Professional Java Programming by Brett Spell</option>
                    <option>Professional Jini by Sing Li</option>
                    <option>Professional JSP by Sing Li et al</option>
                    <option>Professional XSL by Andrew Watt et al</option>
                    <option>XML Applications by Frank Boumphrey et al</option>
                    <option>Beginning XML by Nikola Ozu et al</option>
                    <option>Instant UML by Pierre-Alain Muller</option>
                    <option>Beginning Java Objects by Jacquie Barker</option>
                </select>
                <input type = "submit" name = "submit" value = "add" />
            </form>
        </center>

        <%
            String submit = request.getParameter("submit");
            if (submit != null)
            {
        %>
        <hr />
        <h2 align = "center">Your shopping cart</h2>
        <jsp:useBean id = "cart" scope = "session" class = "javabeans.App2.ShoppingCart" />
        <jsp:setProperty name = "cart" property = "*" />
        <%
            cart.processRequest(request);
        %>
        <table width = "75%" align = "center" border = "1">

            <%
                Vector<String> products = cart.getProducts();
                for (int i = 0; i < products.size(); i++)
                {
            %>
            <tr>
                <td><%= products.get(i)%></td>
                <td>
                    <a href = "shoppingcart.jsp?product=<%= products.get(i)%>&submit=remove">Remove</a>
                </td>
            </tr>
            <%
                }
                if (products.size() == 0)
                {
            %>
            <tr><td>Your cart is currently empty</td></tr>
            <%
                }
            %>
        </table>
        <%
            }
        %>
    </body>
</html>