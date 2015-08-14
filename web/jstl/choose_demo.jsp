<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Choose Demo</title>
    </head>
    <body>
        <a href='../jstl_demo.jsp'>BACK</a>
        <hr />
        <c:set var='roll'>
            <%=(int)(Math.random() * 3) %>
        </c:set>

        <h3>Roll: <c:out value='${roll }' /></h3>

        <c:choose>
            <c:when test='${roll==1 }' >
                <h3>roll = 1</h3>
            </c:when>
            <c:when test='${roll==2 }' >
                <h3>roll = 2</h3>
            </c:when>
            <c:otherwise>
                <h3>Hello, otherwise running. roll is not in[1..2]</h3>
            </c:otherwise>
        </c:choose>
    </body>
</html>