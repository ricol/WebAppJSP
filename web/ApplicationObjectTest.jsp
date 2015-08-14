<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <%@ page import = "java.util.*" %>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Application Object Test JSP</title>
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
                heading = "Welcome, this is your first visit.";
            } else
            {
                accessCount = new Integer(accessCount.intValue() + 1);
                heading = "Welcome, this is your visit # " + accessCount;
            }
            session.setAttribute("accessCount", accessCount);

            Integer totalAccessCount = (Integer) application.getAttribute("totalAccessCount");
            if (totalAccessCount == null)
            {
                totalAccessCount = new Integer(1);
            } else
            {
                totalAccessCount = new Integer(totalAccessCount.intValue() + 1);
            }
            application.setAttribute("totalAccessCount", totalAccessCount);
        %>

        <h1 align = "center"><%= heading%></h1>
        <h2 align = "center">Access Counts</h2>

        <table border = "1" align = "center">
            <tr bgcolor = "#f9a000">
                <th>Info Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>Your accessCount</td>
                <td><%= accessCount%></td>
            </tr>
            <tr>
                <td>Your totalAccessCount</td>
                <td><%= totalAccessCount%></td>
            </tr>		
        </table>
    </body>
</html>