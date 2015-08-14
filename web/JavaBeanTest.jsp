<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Java Bean Test JSP</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />

        <jsp:useBean id="mybean" scope="application" class="javabeans.JellyBean" />
        <jsp:setProperty property="color" name="mybean" value = "newColor"/>

        <form method = "get">
            <table width = "336">
                <tr>
                    <td>The color has been set to: </td>
                    <td><jsp:getProperty property="color" name="mybean"/></td>
                </tr>
                <tr>
                    <td>Choose a color:</td>
                    <td>
                        <input type = "radio" value = "red" checked name = "newColor" />red
                        <input type = "radio" value = "green" name = "newColor" />green
                        <input type = "radio" value = "blue" name = "newColor" />blue
                    </td>
                </tr>
                <tr>
                    <td><input type = "submit" value = "submit" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>