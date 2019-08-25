<%-- 
    Document   : logout
    Created on : 28 Oct, 2018, 11:48:42 PM
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
        <% 
      HttpSession se=request.getSession(false);
            se.invalidate();
            response.sendRedirect("index.jsp");
%>
            </body>
</html>
