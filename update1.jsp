<%-- 
    Document   : update1
    Created on : 28 Oct, 2018, 10:25:25 PM
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
           int idd1=Integer.parseInt(request.getParameter("id"));
           String name=request.getParameter("uname");
           String phone=request.getParameter("phone");
           String city=request.getParameter("city");
           String q="update userdata set name='"+name+"',phone='"+phone+"',city='"+city+"' where id="+idd1;
           int i=st.executeUpdate(q);
           if(i>0)
           {
               response.sendRedirect("view.jsp");
           }
           else
           {
               System.out.println("UserName And Password Wrong");
               RequestDispatcher dis=request.getRequestDispatcher("update.jsp");
               dis.include(request, response);
           }
         %>   
    </body>
</html
