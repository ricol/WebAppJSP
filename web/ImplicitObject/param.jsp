<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Param</title>
    </head>
    <body>
        <a href='param_demo.jsp'>BACK</a>
        <hr />
        <h3>Skillset for:</h3>
        <c:out value='${param.lastName }' />
        <c:out value='${param.firstName }' />
        <h3>All Request Parameters:</h3>
        <c:forEach var='parameter' items='${paramValues }' >
            <ul>
                <li>
                    <b><c:out value='${parameter.key }' /></b>
                </li>
                <c:forEach var='value' items='${parameter.value }' >
                    <c:out value='${value }' />
                </c:forEach>
            </ul>
        </c:forEach>

        <h3>Languages:</h3>
        <c:forEach var='language' items='${paramValues.languages }' >
            <c:out value='${language }' />
        </c:forEach>
    </body>
</html>