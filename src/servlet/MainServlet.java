package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//notes: this is one way to map the Servlet Class to its Urls
//@WebServlet("/servlet/MainServlet") 
public class MainServlet extends HttpServlet
{

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet()
    {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("GetFormFields()...");
    }

    /**
     * @param config
     * @throws javax.servlet.ServletException
     * @see Servlet#init(ServletConfig)
     */
    @Override
    public void init(ServletConfig config) throws ServletException
    {
        // TODO Auto-generated method stub
        System.out.println("Init()...");
        super.init(config);
    }

    /**
     * @see Servlet#destroy()
     */
    public void destroy()
    {
        // TODO Auto-generated method stub
        System.out.println("Destroy()...");
        super.destroy();
    }

    /**
     * @see Servlet#getServletConfig()
     */
    public ServletConfig getServletConfig()
    {
        // TODO Auto-generated method stub
        System.out.println("GetServletConfig()...");
        return super.getServletConfig();
    }

    /**
     * @see Servlet#getServletInfo()
     */
    public String getServletInfo()
    {
        // TODO Auto-generated method stub
        System.out.println("GetServletInfor()...");
        return super.getServletInfo();
    }

    /**
     * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
     */
    protected void service(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        System.out.println("Service()...");
        super.service(request, response);
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Main Servlet Test</title>");
        out.println("</head");
        out.println("<body>");
        //notes: the url here "../index.jsp" is compared with the mapping url of the servlet.
        out.println("<a href = \"../index.jsp\">HOME</a>");
        out.println("<hr />");

        out.println("<h1>All Important Information About The Servlet Object: </h1>");
        out.println("this.getInitParameter(\"InitParameter\") = "
            + this.getInitParameter("InitParameter") + "<br />");
        out.println("this.getServletInfo() = " + this.getServletInfo()
            + "<br />");
        out.println("this.getServletName() = " + this.getServletName()
            + "<br />");
        out.println("this.getClass().toString() = "
            + this.getClass().toString() + "<br />");
        out.println("this.toString() = " + this.toString() + "<br />");
        out.println("this.getServletConfig().getInitParameter(\"InitParameter\") = "
            + this.getServletConfig().getInitParameter("InitParameter")
            + "<br />");

        out.println("this.getServletConfig().getServletName() = "
            + this.getServletConfig().getServletName() + "<br />");
        out.println("this.getServletConfig().getServletContext().toString() = "
            + this.getServletConfig().getServletContext().toString()
            + "<br />");
        out.println("this.getServletConfig().getServletContext().getContextPath() = "
            + this.getServletConfig().getServletContext().getContextPath()
            + "<br />");
        out.println("this.getServletConfig().getServletContext().getServerInfo() = "
            + this.getServletConfig().getServletContext().getServerInfo()
            + "<br />");
        out.println("this.getServletConfig().getServletContext().getServletContextName() = "
            + this.getServletConfig().getServletContext()
            .getServletContextName() + "<br />");
        out.println("this.getServletContext().getContextPath() = "
            + this.getServletContext().getContextPath() + "<br />");
        out.println("this.getServletContext().getInitParameter(\"InitParameter\") = "
            + this.getServletContext().getInitParameter("InitParameter")
            + "<br />");

        out.println("this.getServletContext().getServerInfo() = "
            + this.getServletContext().getServerInfo() + "<br />");
        out.println("this.getServletContext().getServletContextName() = "
            + this.getServletContext().getServletContextName() + "<br />");
        out.println("this.getServletContext().getAttribute(\"ContextAttribute\") = "
            + this.getServletContext().getAttribute("ContextAttribute")
            + "<br />");
        out.println("this.getServletContext().getClass().toString() = "
            + this.getServletContext().getClass().toString() + "<br />");

        out.println("<h1>All Important Information About The Request Object</h1>");
        out.println("request.getAuthType() = " + request.getAuthType()
            + "<br />");
        out.println("request.getCharacterEncoding() = "
            + request.getCharacterEncoding() + "<br />");
        out.println("request.getContentLength() = "
            + request.getContentLength() + "<br />");

        out.println("request.getContentType() = " + request.getContentType()
            + "<br />");
        out.println("request.getContextPath() = " + request.getContextPath()
            + "<br />");
        out.println("request.getLocalAddr() = " + request.getLocalAddr()
            + "<br />");
        out.println("request.getLocalName() = " + request.getLocalName()
            + "<br />");
        out.println("request.getLocalPort() = " + request.getLocalPort()
            + "<br />");
        out.println("request.getMethod() = " + request.getMethod() + "<br />");
        out.println("request.getParameter(\"RequestParameter\") = "
            + request.getParameter("RequestParameter") + "<br />");
        out.println("request.getPathInfo() = " + request.getPathInfo()
            + "<br />");
        out.println("request.getPathTranslated() = "
            + request.getPathTranslated() + "<br />");

        out.println("request.getProtocol() = " + request.getProtocol()
            + "<br />");
        out.println("request.getQueryString() = " + request.getQueryString()
            + "<br />");
        out.println("request.getRemoteAddr() = " + request.getRemoteAddr()
            + "<br />");
        out.println("request.getRemoteHost() = " + request.getRemoteHost()
            + "<br />");
        out.println("request.getRemotePort() = " + request.getRemotePort()
            + "<br />");
        out.println("request.getRemoteUser() = " + request.getRemoteUser()
            + "<br />");
        out.println("request.getRequestedSessionId() = "
            + request.getRequestedSessionId() + "<br />");
        out.println("request.getRequestURI() = " + request.getRequestURI()
            + "<br />");

        out.println("request.getScheme() = " + request.getScheme() + "<br />");
        out.println("request.getServerName() = " + request.getServerName()
            + "<br />");
        out.println("request.getServerPort() = " + request.getServerPort()
            + "<br />");

        out.println("request.getServletPath() = " + request.getServletPath()
            + "<br />");

//        out.println("request.getAsyncContext() = " + request.getAsyncContext()
//            + "<br />");
        out.println("request.getParameter(\"parameter1\") = "
            + request.getParameter("parameter1") + "<br />");

        out.println("request.getParameter(\"parameter2\") = "
            + request.getParameter("parameter2") + "<br />");

        out.println("<h1>All Important Information About The Response Object</h1>");
        out.println("response.getBufferSize() = " + response.getBufferSize()
            + "<br />");
        out.println("response.getCharacterEncoding() = "
            + response.getCharacterEncoding() + "<br />");
        out.println("response.getContentType() = " + response.getContentType()
            + "<br />");
        out.println("response.getStatus() = " + response.getStatus() + "<br />");
        out.println("response.getClass().toString() = "
            + response.getClass().toString() + "<br />");
        out.println("response.toString() = " + response.toString() + "<br />");
        out.println("<h1>All Important Information About The Session Object</h1>");
        HttpSession session = request.getSession();
        out.println("session.getCreationTime() = " + session.getCreationTime()
            + "<br />");
        out.println("session.getId() = " + session.getId() + "<br />");
        out.println("session.getLastAccessedTime() = "
            + session.getLastAccessedTime() + "<br />");
        out.println("session.getMaxInactiveInterval() = "
            + session.getMaxInactiveInterval() + "<br />");
        out.println("session.hashCode() = " + session.hashCode() + "<br />");
        out.println("session.toString() = " + session.toString() + "<br />");
        out.println("session.isNew() = " + session.isNew() + "<br />");

        out.println("</body>");
        out.println("</html>");
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        System.out.println("doPost()...");
        super.doPost(request, response);
    }

    /**
     * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
     */
    protected void doPut(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        System.out.println("doPut()...");
        super.doPut(request, response);
    }

    /**
     * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
     */
    protected void doDelete(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        System.out.println("doDelete()...");
        super.doDelete(request, response);
    }

    /**
     * @see HttpServlet#doHead(HttpServletRequest, HttpServletResponse)
     */
    protected void doHead(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        System.out.println("doHead()...");
        super.doHead(request, response);
    }

    /**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     * @see HttpServlet#doOptions(HttpServletRequest, HttpServletResponse)
     */
    @Override
    protected void doOptions(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        System.out.println("doOptions()...");
        super.doOptions(request, response);
    }

    /**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     * @see HttpServlet#doTrace(HttpServletRequest, HttpServletResponse)
     */
    @Override
    protected void doTrace(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        System.out.println("doTrace()...");
        super.doTrace(request, response);
    }

}
