<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSTL DEMO</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />
        <a href='ImplicitObject/param_demo.jsp'>param_demo</a>
        <a href='ImplicitObject/header_demo.jsp'>header_demo</a>
        <a href='ImplicitObject/initParam_demo.jsp'>initParam_demo</a>
        <a href='servlet/CookieDemoServlet'>Cookie_demo</a>
        <a href='jstl/set_demo_simple.jsp'>Set_demo_Simple</a>
        <a href='jstl/set_demo_complex.jsp'>Set_demo_Complex</a>
        <a href='jstl/if_demo.jsp'>if_demo</a>
        <a href='jstl/choose_demo.jsp'>choose_demo</a>
        <a href='jstl/forEach_demo.jsp'>forEach_demo</a>
        <br />
        <h3>Show Headers By JSTL</h3>
        <select name="headerName">
            <c:forEach var="hdr" items="${header }">
                <option value='<c:out value="${hdr.key }" />'>
                    <c:out value="${hdr.key }" />
                </option>
            </c:forEach>
        </select>
        <br />
        <c:choose>
            <c:when test='${not empty param.name }'>
                Hello <c:out value='${param.name }' />
            </c:when>
            <c:otherwise>
                <font color='red'>
                    Please enter your name:
                </font>
                <form>
                    Name:<input type='text' name='name' /><input type='submit' />				
                </form>
            </c:otherwise>
        </c:choose>
    </body>
</html>