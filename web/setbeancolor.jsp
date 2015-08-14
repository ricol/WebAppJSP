<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Java Bean Setter Example</title>
    </head>
    <body>
        <jsp:useBean id = "jb" scope = "session" class = "javabeans.JellyBean" />
        <jsp:setProperty name = "jb" property = "color" param = "newColor" />
        <form method = "get">
            <table>
                <tr>
                    <td>The color has been set to: </td>
                    <td><jsp:getProperty name = "jb" property = "color" /></td>
                </tr>
                <tr>
                    <td>Choose a color: </td>
                    <td>
                        <input type = "radio" value = "Red" checked name = "newColor" />Red<br />
                        <input type = "radio" value = "Blue" checked name = "newColor" />Blue<br />
                        <input type = "radio" value = "Green" checked name = "newColor" />Green<br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type = "submit" value = "submit" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>