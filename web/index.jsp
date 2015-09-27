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
        <ul>
            <li>
                <a href="MySelf.jsp">About Me</a></li>
            <li> <a href="References.jsp">References</a></li>
            <!-- Be careful this doesn't work:  -->
            <!-- <a href = "/servlet/MainServlet?parameter1=wangxinghe&parameter2=29">MainServlet</a> -->
            <li>Servlets
                <ul>
                    <li><a href="servlet/MainServlet?parameter1=wangxinghe&parameter2=29">MainServlet</a></li>
                    <li> <a href="servlet/MainServletWithFilter?parameter1=wangxinghe&parameter2=29">MainServletWithFilter</a></li>
                    <li> <a href="servlet/ShowHeaders">ShowHeaderViaServlets</a></li>
                    <li> <a href="servlet/ServletToServlet_1">ServletToServlet</a></li>
                    <li> <a href="GetPostTest.jsp">GetFormFieldsServlet</a></li>
                </ul>
            </li>

            <li> <a href="DateTime.jsp">DateTime</a></li>
            <li> <a href="CountTest.jsp">CountTest</a></li>
            <li> <a href="JavaBeanTest.jsp">JavaBean</a></li>
            <li> <a href="ClassesTest.jsp">JavaClasses</a></li>
            <li> <a href="MyTagsTest.jsp">CustomTags</a></li>
            <li>Database
                <ul>
                    <li>MySQL
                        <ul>
                            <li><a href = "DataBase/MySQLTest.jsp">JavaClassToAccessMySQL</a></li>
                            <li><a href = "servlet/MySQLServlet">ServletToAccessMySQL</a></li>
                        </ul>
                    </li>
                    <li>SQL Server
                        <ul>
                            <li><a href = "DataBase/SQLServerTest.jsp">JavaClassToAccessSQLServer</a></li>
                            <li><a href = "servlet/SQLServerServlet">ServletToAccessSQLServer</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li> <a href="SessionTest.jsp">Session</a></li>
            <li> <a href="Application1/shoppingcart.jsp">ShoppingCart</a></li>
            <li> <a href="Application2/Catalog.jsp">Shop</a></li>
            <li> <a href="ApplicationObjectTest.jsp">ApplicationObject</a></li>
            <li> <a href="ShowCookies.jsp">ShowCookies</a></li>
            <li> <a href="ShowSessions.jsp">ShowSessions</a></li>
            <li> <a href="ShowHeaders.jsp">ShowHeaders</a></li>

            <li> <a href="FileUpload.jsp">FileUpload</a></li>

            <li> <a href="JSP_Forward.jsp">JSP_Forward</a></li>
            <li> <a href="jstl_demo.jsp">JSTL</a></li>
            <li>  <a href="Error.jsp">ERROR</a></li>
            <li> <a href="Redirect.jsp">Redirect</a></li>
            <li>  <a href="Autorefresh.jsp">AutoRefresh</a></li>
        </ul>
        <hr />

        <jsp:include page="common/footer.jsp">
            <jsp:param name="FamilyName" value="Wang" />
            <jsp:param name="LastName" value="Ricol" />
            <jsp:param name="ChineseName" value="Wang XingHe" />
        </jsp:include>
    </body>
</html>