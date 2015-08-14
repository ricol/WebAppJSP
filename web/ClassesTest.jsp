<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Java Classes Test JSP</title>
    </head>
    <body>
        <a href="index.jsp">HOME</a>
        <hr />
        <%@ page import="classes.*"%>

        <%
            out.println("<h4>Now create a person of myself</h4>");
        %>

        <%
            People tmpClass = new People("wangxinghe", 28, People.SEX.MALE);
            out.println("Name: " + tmpClass.getName() + "<br />");
            out.println("Age: " + tmpClass.getAge() + "<br />");
            out.println("Sex: " + tmpClass.getSex() + "<br />");
        %>

        <%
            out.println("<h4>Now change to a new person who was my girlfriend!</h4>");
        %>

        <%
            tmpClass.setName("QianChunYan");
            tmpClass.setAge(25);
            tmpClass.setSex(People.SEX.FEMALE);
            out.println("Name: " + tmpClass.getName() + "<br />");
            out.println("Age: " + tmpClass.getAge() + "<br />");
            out.println("Sex: " + tmpClass.getSex() + "<br />");
        %>
    </body>
</html>