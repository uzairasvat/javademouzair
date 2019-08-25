<%-- 
    Document   : itemview
    Created on : 7 Nov, 2018, 9:14:54 PM
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
        <h1>View Item</h1>
        <table border="01">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Price</th>
                <th>Qty</th>
                <th>Total</th>
            </tr>
           
            <%
             
              Class.forName("com.mysql.jdbc.Driver");
              Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo", "root", "");
              Statement st=cn.createStatement();
              String q="select * from item";
              ResultSet rs=st.executeQuery(q);
            int t=0;
              
              while(rs.next())
              {
                  int id=rs.getInt(1);
                  String name=rs.getString(2);
                  int price=rs.getInt(3);
                  int qty=rs.getInt(4);
                  int total=price*qty;
                  t=t+total;
                  out.print("<tr><td>"+id+"</td><td>"+name+"</td><td>"+price+"</td><td>"+qty+"</td><td>"+total+"</td></tr>");
                               
              
              }
             out.print("<tr><td></td><td></td><td></td><td></td><td>"+t+"</td></tr>");
            %>  
            
        </table>
    </body>
</html>
