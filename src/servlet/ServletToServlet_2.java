package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletToServlet_2
 */
@WebServlet("/servlet/ServletToServlet_2")
public class ServletToServlet_2 extends HttpServlet
{

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletToServlet_2()
    {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet #2</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<a href = \"ServletToServlet_1\">BACK</a>");
        out.println("<hr />");
        out.println("<h1>Servlet #2</h1>");
        String value = (String) request.getAttribute("value");
        if (value != null && !value.equals(""))
        {
            out.println("Servlet #1 passed a String object via request scope. The value of the String is: ");
            out.println("<b>" + value + "</b>");
        } else
            out.println("No value passed");
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
    }

}
