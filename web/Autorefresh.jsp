<%-- 
    Document   : Autorefresh
    Created on : Sep 27, 2015, 9:43:36 PM
    Author     : ricolwang
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Current Date: <%= new Date()%></h1>

        <%
            response.setIntHeader("Refresh", 1);

            // Set response content type
            response.setContentType("text/html");
        %>
    </body>
</html>
