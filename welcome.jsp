<%-- 
    Document   : welcome
    Created on : 28 Oct, 2018, 4:26:24 PM
    Author     : uzair
--%>
<%@page import="com.sun.xml.ws.api.security.trust.Claims"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
            response.setHeader("pragma", "no-cache");
            response.setHeader("Expires", "0");
            response.setDateHeader("Expires", -1);

            if(session.getAttribute("name")==null)
            {
                response.sendRedirect("index.jsp");            
            }
        %>
        <h1>Hello <%= session.getAttribute("name") %></h1>
        <h1> <a href="insert.jsp">Insert</a>|
        <a href="view.jsp">View</a>|
        <a href="edit.jsp">Edit Profile</a>|
        <a href="logout.jsp">Logout</a></h1>
        <form action="#">
            Enter the name<input type="text" name="sea">
            <input type="submit" value="search">        
        </form>
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
  <hr>      
        
    </body>
</html>
