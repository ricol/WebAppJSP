<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Remove</title>
    </head>
    <body>
        <form action='set_demo_complex.jsp'>
            Remove an item: <br />
            <table>
                <tr>
                    <td>
                        <select name='key'>
                            <c:forEach var='entry' items='${map }'>
                                <option value='<c:out value="${entry.key }" />' >
                                    <c:out value='${entry.key }' />
                                </option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
            </table>
            <br />
            <input type='submit' value='Remove Item' />
            <input type='hidden' name='value' value='<c:out value="${null }" />' />
        </form>
    </body>
</html>