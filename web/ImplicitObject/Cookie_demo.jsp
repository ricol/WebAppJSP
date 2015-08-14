<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
    </head>
    <body>
        <a href = '../jstl_demo.jsp'>BACK</a>
        <hr />
        <h3>Iterating over Cookies:</h3>
        <c:forEach items='${cookie }' var='mapEntry'>
            <ul>
                <li>Cookie Name: <c:out value='${mapEntry.key }' /></li>
                <li>Cookie Value: <c:out value='${mapEntry.value }' /></li>
            </ul>
        </c:forEach>

        <h3>Accessing Cookies Directly</h3>
        Cookie Objects:
        <ul>
            <li>User Name: <c:out value='${cookie["userName"] }' /></li>
            <li>Password: <c:out value='${cookie["password"] }' /></li>
        </ul>

        Cookie Values:
        <ul>
            <li>User Name: <c:out value='${cookie["userName"].value }' /></li>
            <li>Password: <c:out value='${cookie["password"].value }' /></li>
        </ul>
    </body>
</html>