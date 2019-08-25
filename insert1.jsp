<%-- 
    Document   : insert1
    Created on : 7 Nov, 2018, 8:57:58 PM
    Author     : uzair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo", "root", "");
        Statement st=cn.createStatement();
        String name=request.getParameter("iname");
        String price=request.getParameter("iprice");
        String qty=request.getParameter("iqty");
        String query="insert into item(itemname,price,qty) values('"+name+"',"+price+","+qty+")";
        int i=st.executeUpdate(query);
        
        if(i>0)
        {
          System.out.print("Scussecfully insert");
          response.sendRedirect("itemview.jsp");
        }   
        else
        {
            System.out.print("not inserted");
            RequestDispatcher dis=request.getRequestDispatcher("insert.jsp");
            dis.include(request, response);
        }
        }
        catch(SQLException ex)
        {
           out.print(ex);
        }
        catch(ClassNotFoundException ex){
        out.print(ex);
        }
        %>
    </body>
</html>
