package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SQLServerServlet
 */
@WebServlet("/servlet/SQLServerServlet")
public class SQLServerServlet extends HttpServlet
{

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SQLServerServlet()
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
        out.println("<title>SQL Server Servlet Test</title>");
        out.println("</head>");
        out.print("<body>");
        out.println("<a href = \"../index.jsp\">HOME</a>");
        out.println("<hr />");
        String connectionURL = "jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=mydatabase";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultset = null;
        try
        {
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver")
                .newInstance();
            try
            {
                connection = DriverManager.getConnection(connectionURL, "sa",
                    "");
                statement = connection.createStatement();
                resultset = statement.executeQuery("select * from book");
                int column_number = resultset.getMetaData().getColumnCount();
                out.print("<ui>");
                while (resultset.next())
                {
                    out.print("<li>");
                    String sText = "";
                    for (int i = 1; i <= column_number; i++)
                    {
                        String tmpS = resultset.getString(i);
                        if (tmpS != null)
                        {
                            sText += tmpS + " : ";
                        } else
                            sText += "NULL" + " : ";
                    }
                    out.print(sText);
                    out.print("</li>");
                }
                out.print("</ui>");
                if (resultset != null)
                    resultset.close();
                if (connection != null)
                    connection.close();
            } catch (SQLException e)
            {
                // TODO Auto-generated catch block
                out.print("<p>Cann't connect to the MySQL database! Exception: SQLException</p>");
                e.printStackTrace();
            }
        } catch (InstantiationException e)
        {
            // TODO Auto-generated catch block
            out.print("<p>Cann't register jdbc MySQL driver! Exception: InstantiationException</p>");
            e.printStackTrace();
        } catch (IllegalAccessException e)
        {
            // TODO Auto-generated catch block
            out.print("<p>Cann't register jdbc MySQL driver! Exception: IllegalAccessException</p>");
            e.printStackTrace();
        } catch (ClassNotFoundException e)
        {
            out.print("<p>Cann't register jdbc MySQL driver! Exception: ClassNotFoundException</p>");
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        out.print("</body>");
        out.print("</html>");
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
