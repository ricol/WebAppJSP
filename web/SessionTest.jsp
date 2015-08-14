<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <%@ page import = "java.util.*" %>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Session Test JSP</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />

        <%
            Integer accessCount = (Integer) session.getAttribute("accessCount");
            String heading = null;
            if (accessCount == null)
            {
                accessCount = new Integer(1);
                heading = "Welcome, this is your first visit!";
            } else
            {
                accessCount = new Integer(accessCount.intValue() + 1);
                heading = "Welcome, this is your visit # " + accessCount;
            }

            session.setAttribute("accessCount", accessCount);
        %>

        <h1 align = center><%= heading%></h1>
        <h2 align = center>Information about your session</h2>
        <table border = "1" align = "center">
            <tr bgcolor = "#f9ad00">
                <th>Info Type</th><th>Value</th>
            </tr>		
            <tr>
                <td>ID</td>
                <td><%= session.getId()%></td>
            </tr>
            <tr>
                <td>Creation Time</td>
                <td><%= new Date(session.getCreationTime())%></td>
            </tr>
            <tr>
                <td>Time of Last Access</td>
                <td><%= new Date(session.getLastAccessedTime())%></td>
            </tr>
            <tr>
                <td>Number of Accesses</td>
                <td><%= accessCount%></td>
            </tr>
        </table>
    </body>
</html>