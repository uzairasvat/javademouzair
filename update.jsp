<%-- 
    Document   : update
    Created on : 28 Oct, 2018, 7:35:22 PM
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
    <center>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo", "root", "");
          Statement st=cn.createStatement();
          int idd=Integer.parseInt(request.getParameter("id"));
          String query="select * from userdata where id="+idd;
          ResultSet rs=st.executeQuery(query);
          while(rs.next())
          {
           String uname=rs.getString(2);
           String phone=rs.getString(4);
           String city=rs.getString(5);
         %>
         <h1>REGISTRATION PAGE</h1>
        <table>
        <Form action="update1.jsp" method="post"><br>
        Id:<input type="text" name="id" value="<%= idd %>" readonly=""><br>    
        Enter The Name:<input type="text" name="uname" value="<%= uname %>"><br>
        Enter The Phone:<input type="text" name="phone" value="<%= phone %>"><br>
        Enter The City:<input type="text" name="city" value="<%= city %>"><br>
        <input type="submit" value="SUBMIT">
        </Form>
        </table>
         <%
          }
        %>    
        </center>
    </body>
</html>
