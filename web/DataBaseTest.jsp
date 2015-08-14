<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>DataBase Test JSP</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />
        <table border = "1">
            <tr>
                <th></th>
                <th>JavaClass</th>
                <th>Servlet</th>
            </tr>
            <tr>
                <th>MySQL</th>
                <td><a href = "DataBase/MySQLTest.jsp">JavaClassToAccessMySQL</a></td>
                <td><a href = "servlet/MySQLServlet">ServletToAccessMySQL</a></td>
            </tr>
            <tr>
                <th>SQL Server</th>
                <td><a href = "DataBase/SQLServerTest.jsp">JavaClassToAccessSQLServer</a></td>
                <td><a href = "servlet/SQLServerServlet">ServletToAccessSQLServer</a></td>	
            </tr>
        </table>
    </body>
</html>