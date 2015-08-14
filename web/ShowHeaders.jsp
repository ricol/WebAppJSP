<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>ShowHeaders JSP</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />
        <%
            Enumeration<String> tmpEnum = request.getHeaderNames();
            while (tmpEnum.hasMoreElements())
            {
                String HeaderName = (String) tmpEnum.nextElement();
                String HeaderValue = request.getHeader(HeaderName);
        %>
        <b><%=HeaderName%></b>: <%=HeaderValue%><br />
        <%
            }
        %>
    </body>
</html>