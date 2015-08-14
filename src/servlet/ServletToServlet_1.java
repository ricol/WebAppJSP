package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletToServlet_1
 */
//notes: be careful about the correct format!
@WebServlet("/servlet/ServletToServlet_1")
public class ServletToServlet_1 extends HttpServlet
{

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletToServlet_1()
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
        String param = request.getParameter("value");
        if (param != null && !param.equals(""))
        {
            request.setAttribute("value", param);
            RequestDispatcher rd = request.getRequestDispatcher("/servlet/ServletToServlet_2");
            rd.forward(request, response);
            return;
        }

        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet #1</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<a href = '../index.jsp'>HOME</a>");
        out.println("<hr />");
        out.println("<h1> A Form from servlet #1</h1>");
        out.println("<form>");
        out.println("Enter a value to send to servlet #2.");
        out.println("<input name = \"value\">");
        out.println("<input type = \"submit\" value = \"Send to Servlet #2\">");
        out.println("</form>");
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
