<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Custom Tags Demo JSP</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />

        <%@ taglib uri = "/WEB-INF/tld/example.tld" prefix = "mytag"%>
        <mytag:simple />

        <hr />

        <p>A group of Matrix Quote:</p>
        <mytag:groupshow />

    </body>
</html>