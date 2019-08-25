<%-- 
    Document   : reg1
    Created on : 28 Oct, 2018, 6:00:38 PM
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
     try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo", "root", "");
         Statement st=cn.createStatement();
         String uname=request.getParameter("uname");
         String pass=request.getParameter("pass");
         String phone=request.getParameter("phone");
         String city=request.getParameter("city");
         String query="insert into userdata(name,password,phone,city) values('"+uname+"','"+pass+"','"+phone+"','"+city+"')";
         int i=st.executeUpdate(query);
         if(i>0)
         {
             System.out.println("Successfully");
           response.sendRedirect("index.jsp");
         }
         else
         {
             System.out.println("not register");
             RequestDispatcher dis=request.getRequestDispatcher("reg.jsp");
             dis.include(request, response);
         }
        }
        catch(ClassNotFoundException ex)
        {
            System.out.println(ex);
        }
        catch(SQLException ex)
        {
            System.out.println(ex);
        }
        %>
    </body>
</html>
