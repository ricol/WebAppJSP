<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>initParam Demo</title>
    </head>
    <body>
        <a href = '../jstl_demo.jsp'>BACK</a>
        <hr />
        <h3>Iterating Over Context Initialization Parameters:</h3>
        <c:forEach items='${initParam }' var='parameter'>
            <ul>
                <li>Name:<c:out value='${parameter.key }' /></li>
                <li>Value:<c:out value='${parameter.value }' /></li>
            </ul>
        </c:forEach>
        <h3>Accessing Context Initialization Parameters Directly:</h3>
        Name:<c:out value='${initParam["wangxinghe.name"] }' />
        Age:<c:out value='${initParam["wangxinghe.age"] }' />
    </body>
</html>