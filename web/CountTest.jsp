<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Count Test JSP</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />
        <%!
            int count = 0;
        %>
        <p>The count is <% out.print(count); %></p>
        <% count++; %>
        <p>The count is <% out.print(count); %></p>
        <% count++; %>
        <p>The count is <% out.print(count);%></p>
    </body>
</html>