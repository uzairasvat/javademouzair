<%-- 
    Document   : edit1
    Created on : 28 Oct, 2018, 11:30:18 PM
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
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo", "root", "");
            Statement st=cn.createStatement();
            String eid=request.getParameter("eid");
            String name=request.getParameter("ename");
            String pwd=request.getParameter("epwd");
            String phone=request.getParameter("ephone");
            String city=request.getParameter("ecity");
            String q="update userdata set name='"+name+"',password='"+pwd+"',phone='"+phone+"',city='"+city+"' where id="+eid;
            int i=st.executeUpdate(q);
            if(i > 0)
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
</html>
