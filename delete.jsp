<%-- 
    Document   : delete
    Created on : 28 Oct, 2018, 7:34:48 PM
    Author     : uzair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo", "root", "");
        Statement st=cn.createStatement();
        int idd=Integer.parseInt(request.getParameter("id"));
        String q="delete from userdata where id="+idd;
         int i=st.executeUpdate(q);
         if(i>0)
         {    
         RequestDispatcher dis = request.getRequestDispatcher("view.jsp");
         dis.forward(request, response);
         }
         else
         {
             RequestDispatcher dis = request.getRequestDispatcher("view.jsp");
         dis.forward(request, response);
         }
         
        %>
    </body>
</html>
