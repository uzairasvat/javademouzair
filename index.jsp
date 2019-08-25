<%-- 
    Document   : index
    Created on : 28 Oct, 2018, 3:54:26 PM
    Author     : uzair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <h1>LOGIN PAGE</h1>
        <form method="post" action="login">
            ENTER THE USERNAME:<input type="text" name="uname"><br>
            ENTER THE PASSWORD:<input type="text" name="pass"><br>
            <input type="submit" value="LOGIN"><br>
            <a href="reg.jsp">REGISTER HERE</a>            
        </form>
        </center>
    </body>
</html>
