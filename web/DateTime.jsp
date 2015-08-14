<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <%@ page import = "java.util.*" %>
        <%@ page import = "java.text.*" %>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Date Time JSP</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />
        <p>The date and time: <%= new Date()%></p>
        <p>Today's date: <%= DateFormat.getDateInstance().format(new Date())%></p>
    </body>
</html>