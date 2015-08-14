package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetFormFields
 */
@WebServlet("/servlet/GetFormFieldsServlet")
public class GetFormFieldsServlet extends HttpServlet
{

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetFormFieldsServlet()
    {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("GetFormFields()...");
    }

    /**
     * @see Servlet#init(ServletConfig)
     */
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
        // TODO Auto-generated method stub
        System.out.println("doGet()...");
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Get/Put Test</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<a href = \"../index.jsp\">HOME</a>");
        out.println("<hr />");
        out.println("<p>HTTP Method: " + request.getMethod() + "</p>");
        out.println("<p>Parameters Passed: </p>");
        Enumeration<String> e = request.getParameterNames();
        while (e.hasMoreElements())
        {
            String key = (String) e.nextElement();
            String[] values = request.getParameterValues(key);
            out.print("<p>" + key + "=");
            for (int i = 0; i < values.length; i++)
                out.print(values[i] + "</p>");
        }
        out.println("</body>");
        out.println("</html>");
        // super.doGet(request, response);
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
     * @see HttpServlet#doOptions(HttpServletRequest, HttpServletResponse)
     */
    protected void doOptions(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        System.out.println("doOptions()...");
        super.doOptions(request, response);
    }

    /**
     * @see HttpServlet#doTrace(HttpServletRequest, HttpServletResponse)
     */
    protected void doTrace(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        System.out.println("doTrace()...");
        super.doTrace(request, response);
    }

}
