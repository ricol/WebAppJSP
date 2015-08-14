<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>SQLServer Test JSP</title>
        <%@ page import = "database.*" %>
    </head>
    <body>
        <a href="../index.jsp">HOME</a>
        <hr />
        <%
            ClassSQLServerConnection tmpSQLServerConnection = new ClassSQLServerConnection();
            if (tmpSQLServerConnection.IsConnected())
            {
                tmpSQLServerConnection.Connect("mydatabase", "sa", "");
                if (tmpSQLServerConnection.IsConnected())
                {
                    tmpSQLServerConnection.ExecuteSQL("Select * from book");
                    out.print(tmpSQLServerConnection.getResult());
                    tmpSQLServerConnection.Close();
                } else
                    out.println("<p>Connecting to the database failed!</p>");
            } else
                out.println("<p>Register JDBC driver for SQLServer Failed!</p>");
        %>
    </body>
</html>