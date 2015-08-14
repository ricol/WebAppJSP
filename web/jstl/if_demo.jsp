<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>If Demo</title>
    </head>
    <body>
        <a href='../jstl_demo.jsp'>BACK</a>
        <hr />
        <form>
            <table>
                <tr>
                    <td>First Name: </td>
                    <td><input type='text' name='firstName' value='<c:out value="${param.firstName }" />' /></td>
                </tr>
                <tr>
                    <td>Last Name: </td>
                    <td><input type='text' name='lastName' value='<c:out value="${param.lastName }" />' /></td>
                </tr>
                <tr>
                    <td>
                        Enter your credit card type: 
                    </td>
                    <td>
                        <select name='cardType'>
                            <option value='Visa' <c:if test='${param.cardType=="Visa" }'> selected </c:if> >Visa</option>
                            <option value='MasterCard' <c:if test='${param.cardType=="MasterCard" }'> selected </c:if> >MasterCard</option>
                            <option value='Discover' <c:if test='${param.cardType=="Discover" }'> selected </c:if> >Discover</option>
                        </select>
                    </td>
                </tr>			
            </table>
            <input type='submit' value='Submit Form' />
        </form>
    </body>
</html>