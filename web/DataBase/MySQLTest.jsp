<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <%@ page import="database.*"%>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>MySQL Test JSP</title>
    </head>
    <body>
        <a href="../index.jsp">HOME</a>
        <hr />
        <%
            ClassMySQLConnection tmpSQLServerConnection = new ClassMySQLConnection();
            if (tmpSQLServerConnection.IsConnected())
            {
                tmpSQLServerConnection
                    .Connect("db", "root", "");
                if (tmpSQLServerConnection.IsConnected())
                {
                    tmpSQLServerConnection
                        .ExecuteSQL("Select * from contacts limit 10");
                    out.print(tmpSQLServerConnection.getResult());
                    tmpSQLServerConnection.Close();
                } else
                    out.println("<p>Connecting to the database failed!</p>");
            } else
                out.println("<p>Register JDBC driver for MySQL Failed!</p>");
        %>
    </body>
</html>