<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>forEach demo</title>
    </head>
    <body>
        <a href='../jstl_demo.jsp'>BACK</a>
        <hr />
        <h3>Initialize primitive values...</h3>
        <%
                int[] primitiveValues = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
                pageContext.setAttribute("primitiveValuesIndex", primitiveValues, PageContext.REQUEST_SCOPE);
        %>
        <h3>Iterating over the array of primitive values by a scriptlet</h3>
        <%
                int[] values = (int[])request.getAttribute("primitiveValuesIndex");
                for (int i = 0; i < values.length; i++)
                        out.println("Value: " + values[i] + "<br />");
        %>
        <h3>Iterating over the array of primitive values by JSTL</h3>
        <c:forEach items = '${primitiveValuesIndex }' var = 'item'>
            Value: <c:out value = '${item }' /><br />
        </c:forEach>
        <h3>Another example</h3>
        <c:catch var='exception'>
            Iterating over integer values:
            <c:forEach var='item' begin='${param.begin }' end='${param.end }' step='${param.step }' >
                <c:out value='${item }' />
            </c:forEach>
        </c:catch>

        <form>
            <table>
                <tr>
                    <td>
                        Begin:
                    </td>
                    <td>
                        <input type='text' size='3' value='<c:out value="${param.begin }" />' name='begin' />
                    </td>
                </tr>
                <tr>
                    <td>
                        End:
                    </td>
                    <td>
                        <input type='text' size='3' value='<c:out value="${param.end }" />' name='end' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Step:
                    </td>
                    <td>
                        <input type='text' size='3' value='<c:out value="${param.step }" />' name='step' />
                    </td>
                </tr>
                <tr>
                    <td colspan='2'>
                        <input type='submit' value='Iterate now' />
                    </td>
                </tr>
            </table>
        </form>

        <c:if test='${not empty exception }' >
            <h3>
                Iteration failed because <c:out value='${exception.message }' />
            </h3>
        </c:if>
    </body>
</html>