<%-- 
    Document   : Redirect
    Created on : Sep 27, 2015, 9:36:16 PM
    Author     : ricolwang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redirect Page</title>
    </head>
    <body>
        <%! String url = "http://www.google.com";%>
        
        <h1>Hello! redirecting to <%=url%></h1>

        <%
            response.setContentType("text/html");

            // New location to be redirected
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", url);
        %>
    </body>
</html>
