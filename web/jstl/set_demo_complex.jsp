<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Set Demo Complex</title>
    </head>
    <body>
        <a href='../jstl_demo.jsp'>BACK</a>
        <hr />
        <jsp:useBean id='map' class='java.util.HashMap' scope='session'>
            <c:set target='${map }' property='wangxinghe' value='29' />
            <c:set target='${map }' property='qianchunyan' value='25' />
            <c:set target='${map }' property='wangdan'	value='19' />
        </jsp:useBean>

        <c:set target='${map }' property='${param.key }' value='${param.value }' />

        <table border='1'>
            <tr>
                <th>Name</th>
                <th>Age</th>
            </tr>
            <c:forEach var='entry' items='${map }' >
                <tr>
                    <td><c:out value='${entry.key }' /></td>
                    <td><c:out value='${entry.value }' /></td>
                </tr>
            </c:forEach>
        </table>

        <form action='add.jsp'>
            <input type='submit' value='Add or Modify an item' />
        </form>

        <form action='remove.jsp'>
            <input type='submit' value='Remove an item' />
        </form>
    </body>
</html>