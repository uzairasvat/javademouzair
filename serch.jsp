<%-- 
    Document   : serch
    Created on : 28 Oct, 2018, 11:59:39 PM
    Author     : uzair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
     try
     {
                
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo", "root", "");
        Statement st=cn.createStatement();
        String Name=request.getParameter("sea");
        String q="select * from userdata where name='"+Name+"'";
        ResultSet rs=st.executeQuery(q);
        while(rs.next())
        {
            int id=rs.getInt(1);
            String name=rs.getString(2);
            String phone=rs.getString(4);
            String city=rs.getString(5);
            out.print("<tr><td>"+id+"</td><td>"+name+"</td><td>"+phone+"</td><td>"+city+"</td><td><a href=delete.jsp?id="+id+">Delete</a></td><td><a href=update.jsp?id="+id+">Update</a></td></tr>");
            
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
