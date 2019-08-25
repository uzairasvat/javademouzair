<%-- 
    Document   : edit
    Created on : 28 Oct, 2018, 10:54:18 PM
    Author     : uzair
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String nm;
            String pwd,ph,ct;
        %>
       
        <h1>Edit profile</h1>
        <hr>
        <% nm = (String)session.getAttribute("name"); %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo","root","");
            Statement st = cn.createStatement();
            String q = "select * from userdata where name='"+nm+"'";
            ResultSet rs = st.executeQuery(q);
            
            while(rs.next()){
                int sid =  rs.getInt(1);
                String snm =  rs.getString(2);
                String spwd =  rs.getString(3);
                String sph =  rs.getString(4);
                String sct =  rs.getString(5);
         %>
         <form action="edit1.jsp">
        ID:<input type="text" name="eid" readonly="readonly" value="<%=sid%>">
        Name:<input type="text" name="ename" value="<%=snm%>">
         Password:<input type="text" name="epwd" value="<%=spwd%>">
         Phone:<input type="text" name="ephone" value="<%=sph%>">
         City:<input type="text" name="ecity" value="<%=sct%>"> 
         <input type="submit"  value="Edit"> 
         </form>
        <%       
             
            }
         %>
        
    </Form>
    </body>
</html>
