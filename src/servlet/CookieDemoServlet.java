package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookieDemoServlet
 */
@WebServlet("/servlet/CookieDemoServlet")
public class CookieDemoServlet extends HttpServlet
{

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CookieDemoServlet()
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
        String[] cookieNames =
        {
            "userName", "password"
        };
        String[] cookieValues =
        {
            "wangxinghe", "star1983"
        };

        for (int i = 0; i < cookieNames.length; i++)
        {
            Cookie cookie = new Cookie(cookieNames[i], cookieValues[i]);
            response.addCookie(cookie);
        }

        RequestDispatcher rd = request.getRequestDispatcher("../ImplicitObject/Cookie_demo.jsp");
        rd.forward(request, response);
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
