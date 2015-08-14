<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Show Sessions</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />
        <h1>Show Sessions</h1>
        <%
            out.println("session.getCreationTime() = " + session.getCreationTime() + "<br />");
            out.println("session.getId() = " + session.getId() + "<br />");
            out.println("session.getLastAccessedTime() = " + session.getLastAccessedTime() + "<br />");
            out.println("session.getMaxInactiveInterval() = " + session.getMaxInactiveInterval() + "<br />");
            out.println("session.hashCode() = " + session.hashCode() + "<br />");
            out.println("session.toString() = " + session.toString() + "<br />");
            out.println("session.isNew() = " + session.isNew() + "<br />");
        %>
    </body>
</html>