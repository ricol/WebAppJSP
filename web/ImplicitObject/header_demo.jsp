<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Header demo</title>
    </head>
    <body>
        <a href = '../jstl_demo.jsp'>BACK</a>
        <hr />
        <h3>Request Headers:</h3>
        <c:forEach items='${header }' var='h' >
            <ul>
                <li>
                    Header Name: <c:out value='${h.key }' />
                </li>
                <li>
                    Header Value: <c:out value='${h.value }' />
                </li>
            </ul>
        </c:forEach>
    </body>
</html>