<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <a href = "index.jsp">HOME</a>
        <hr />
        <p>Please fill in the following information and click on Submit name.</p>
        <form action = "servlet/GetFormFieldsServlet" method = "get">
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type = "text" size = "35" maxlength = "256" name = "UserName" /></td>
                </tr>
                <tr>
                    <td>Tel</td>
                    <td><input type = "text" size = "35" maxlength = "256" name = "UserTel" /></td>
                </tr>
            </table>
            <p><input type = "submit" value = "Submit Name" /><input type = "reset" value = "Clear Form" /></p>
        </form>
    </body>
</html>