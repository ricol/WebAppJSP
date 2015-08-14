<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <%@ page import="java.util.*"%>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Home Page About JSP World</title>
    </head>
    <body>
        <%
            pageContext.getRequest().setAttribute("DbName", "usertrends");
            pageContext.getRequest().setAttribute("UserId", "root");
            pageContext.getRequest().setAttribute("Password", "star1983");
        %>
        <%
            pageContext.getRequest().setAttribute("PreviousURL",
                request.getRequestURI());
        %>
        <a href="MySelf.jsp">About Me</a>
        <a href="References.jsp">References</a>
        <!-- Be careful this doesn't work:  -->
        <!-- <a href = "/servlet/MainServlet?parameter1=wangxinghe&parameter2=29">MainServlet</a> -->
        <a href="servlet/MainServlet?parameter1=wangxinghe&parameter2=29">MainServlet</a>
        <a href="GetPostTest.jsp">GetFormFieldsServlet</a>
        <a href="DateTime.jsp">DateTime</a>
        <a href="CountTest.jsp">CountTest</a>
        <a href="JavaBeanTest.jsp">JavaBean</a>
        <a href="ClassesTest.jsp">JavaClasses</a>
        <a href="MyTagsTest.jsp">CustomTags</a>
        <a href="DataBaseTest.jsp">DataBase</a>
        <a href="SessionTest.jsp">Session</a>
        <a href="Application1/shoppingcart.jsp">ShoppingCart</a>
        <a href="Application2/Catalog.jsp">Shop</a>
        <a href="ApplicationObjectTest.jsp">ApplicationObject</a>
        <a href="HelloWorldFilter">Filter</a>
        <a href="ShowCookies.jsp">ShowCookies</a>
        <a href="ShowSessions.jsp">ShowSessions</a>
        <a href="ShowHeaders.jsp">ShowHeaders</a>
        <a href="servlet/ShowHeaders">ShowHeaders</a>
        <a href="FileUpload.jsp">FileUpload</a>
        <a href="servlet/ServletToServlet_1">ServletToServlet</a>
        <a href="JSP_Forward.jsp">JSP_Forward</a>
        <a href="jstl_demo.jsp">JSTL</a>
        <hr />
        <%
            int i = 1;
            String text = "Welcome to the JSP World!";
            //String reverseText = reverseString(text);
            for (i = 1; i <= 6; i++)
            {
                out.print("<h" + i + " align = \"left\">" + text + "</h" + i
                    + ">");
                //out.print("<h" + i + " align = \"right\">" + reverseText + "</h" + i + ">");
                out.print("<br />");
            }
        %>

        <h2>
            <%
                out.println("Parameter of name: " + request.getParameter("name"));
            %>
        </h2>

        <jsp:include page="common/footer.jsp">
            <jsp:param name="FamilyName" value="Wang" />
            <jsp:param name="LastName" value="Ricol" />
            <jsp:param name="ChineseName" value="Wang XingHe" />
        </jsp:include>
    </body>
</html>