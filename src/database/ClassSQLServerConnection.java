package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ClassSQLServerConnection
{

    boolean bConnected;
    Connection connection;
    PreparedStatement prepare;
    ResultSet results;

    public ClassSQLServerConnection()
    {
        System.out.println("Register JDBC driver for SQLServer...");

        bConnected = true;
        connection = null;
        prepare = null;
        results = null;
        try
        {
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver")
                .newInstance();
        } catch (InstantiationException e)
        {
            // TODO Auto-generated catch block
            bConnected = false;
            e.printStackTrace();
        } catch (IllegalAccessException e)
        {
            // TODO Auto-generated catch block
            bConnected = false;
            e.printStackTrace();
        } catch (ClassNotFoundException e)
        {
            // TODO Auto-generated catch block
            bConnected = false;
            e.printStackTrace();
        }

        if (bConnected)
            System.out.println("Register JDBC driver for SQLServer succeed.");
        else
            System.out.println("Register JDBC driver for SQLServer Failed!");
    }

    public boolean Connect(String strDatabaseName, String strUserName,
        String strPassword)
    {
        if (!bConnected)
            return bConnected;
        System.out.println("Connecting database...");
        try
        {
            connection = DriverManager.getConnection(
                "jdbc:microsoft:sqlserver://localhost:1433;DatabaseName="
                + strDatabaseName, strUserName, strPassword);
        } catch (SQLException e)
        {
            // TODO Auto-generated catch block
            bConnected = false;
            e.printStackTrace();
        }
        return bConnected;
    }

    public ResultSet ExecuteSQL(String strSQL)
    {
        if (!bConnected)
            return null;
        System.out.println("Executing SQL query...");
        try
        {
            prepare = connection.prepareStatement(strSQL);
        } catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
        try
        {
            results = prepare.executeQuery();
        } catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
        return results;
    }

    public String getResult()
    {
        System.out.println("Getting result...");
        String sText = "";
        if (results == null)
            return "";
        int column_number;
        try
        {
            column_number = results.getMetaData().getColumnCount();
        } catch (SQLException e1)
        {
            // TODO Auto-generated catch block
            column_number = 0;
            e1.printStackTrace();
        }
        try
        {
            sText += "<ui>";
            while (results.next())
            {
                sText += "<li>";
                for (int i = 1; i <= column_number; i++)
                {
                    String tmpS = results.getString(i);
                    if (tmpS != null)
                    {
                        sText += tmpS.trim() + " : ";
                    } else
                        sText += "NULL" + " : ";
                }
                sText += "</li>";
            }
            sText += "</ui>";
        } catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }

        return sText;
    }

    public boolean Close()
    {
        if (!bConnected)
            return bConnected;
        System.out.println("Closing connection...");
        try
        {
            connection.close();
        } catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean IsConnected()
    {
        return bConnected;
    }

}
