<%-- 
    Document   : ErrorHandlePage
    Created on : Sep 27, 2015, 8:58:33 PM
    Author     : ricolwang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Error Code: <%= response.getStatus() %> </h1>
    </body>
</html>
