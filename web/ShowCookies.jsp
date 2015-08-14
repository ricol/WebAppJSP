<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Show Cookies</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />
        <h1>Cookies sent by your client</h1>
        <%
            Cookie[] cookies = request.getCookies();
            for (int i = 0; i < cookies.length; i++)
            {
                out.println("Cookie[" + i + "].toString() = " + cookies[i].toString() + "<br />");
                Cookie cookie = cookies[i];
                out.println("cookie.getComment() = " + cookie.getComment() + "<br />");
                out.println("cookie.getDomain() = " + cookie.getDomain() + "<br />");
                out.println("cookie.getMaxAge() = " + cookie.getMaxAge() + "<br />");
                out.println("cookie.getName() = " + cookie.getName() + "<br />");
                out.println("cookie.getPath() = " + cookie.getPath() + "<br />");
                out.println("cookie.getValue() = " + cookie.getValue() + "<br />");
                out.println("cookie.getVersion() = " + cookie.getVersion() + "<br />");
                out.println("cookie.hashCode() = " + cookie.hashCode() + "<br />");
                out.println("cookie.toString() = " + cookie.toString() + "<br />");
                out.println("cookie.getSecure() = " + cookie.getSecure() + "<br />");
                out.println("cookie.isHttpOnly() = " + cookie.isHttpOnly() + "<br />");
            }
        %>
    </body>
</html>