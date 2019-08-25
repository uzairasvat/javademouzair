<%-- 
    Document   : insert
    Created on : 7 Nov, 2018, 8:53:42 PM
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
        <h1>Insert Item</h1>
        <form action="insert1.jsp" method="post">
            Enter The Item Name:<input type="text" name="iname">
            Enter The Item Price:<input type="text" name="iprice">
            Enter The Item Qty:<input type="text" name="iqty">
            <input type="submit" value="Insert">
        </form>
    </body>
</html>
