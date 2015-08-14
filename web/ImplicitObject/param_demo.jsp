<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Param Demo</title>
    </head>
    <body>
        <a href = '../jstl_demo.jsp'>BACK</a>
        <hr />
        <form action='param.jsp'>
            <table>
                <tr>
                    <td>First Name:</td>
                    <td><input type='text' name='firstName' /></td>
                </tr>
                <tr>
                    <td>Lase Name:</td>
                    <td><input type='text' name='lastName' /></td>
                </tr>
                <tr>
                    <td>
                        Select languages that you have worked with:
                    </td>
                    <td>
                        <select name='language' size='7' multiple>
                            <option value='Ada'>Ada</option>
                            <option value='C'>C</option>
                            <option value='C++'>C++</option>
                            <option value='Cobol'>Cobol</option>
                            <option value='Eiffel'>Eiffel</option>
                            <option value='Objective-c'>Objective-C</option>
                            <option value='Java'>Java</option>
                        </select>
                    </td>
                </tr>
            </table>
            <br />
            <input type='submit' value='Finish Survey' />
        </form>
    </body>
</html>