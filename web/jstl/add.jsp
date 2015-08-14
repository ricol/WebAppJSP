<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jstl/core_rt' prefix='c' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Add Or Modify</title>
    </head>
    <body>
        <form action='set_demo_complex.jsp'>
            Add an item: <br />
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type='text' name='key' /></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type='text' name='value' /></td>
                </tr>
                <tr>
                    <td colspan='2'>
                        <input type='submit' value='Add or Modify an item' />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>