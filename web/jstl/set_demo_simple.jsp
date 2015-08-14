<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Set Demo</title>
    </head>
    <body>
        <a href='../jstl_demo.jsp'>BACK</a>
        <hr />

        <jsp:useBean id='bean' class='javabeans.ColorPreferences' />

        <c:set target='${bean }' property='background' value='${param.bgcolor }' />
        <c:set target='${bean }' property='foreground'>
            <c:out value='${param.fgcolor }' />
        </c:set>

        <table align='center'>
            <tr>
                <td colspan='2' align='center'></td>
                <td>
                    <table border='3' align='center' bgcolor='<c:out value="${bean.background }"/>' >
                        <tr>
                            <td>
                                <font size='7' color='<c:out value="${bean.foreground }" />'>
                                    JSTL
                                </font>
                            </td>
                        </tr>
                    </table>
                </td>			
            </tr>
            <tr>
            <form>
                <table align='center'>
                    <tr>
                        <td>Background Color: </td>
                        <td>
                            <select name='bgcolor'>
                                <option value='white'>white</option>
                                <option value='black'>black</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Foreground Color: </td>
                        <td>
                            <select name='fgcolor'>
                                <option value='white'>white</option>
                                <option value='black'>black</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                    <table align='center'>
                        <tr>
                            <td><input type='submit' value='change' /></td>
                        </tr>
                    </table>
                    </tr>
                </table>
            </form>
        </tr>
    </table>

</body>
</html>