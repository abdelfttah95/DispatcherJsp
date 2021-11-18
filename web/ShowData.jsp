<%-- 
    Document   : ShowData
    Created on : Nov 17, 2021, 4:40:50 PM
    Author     : abdel
--%>
<%@page import="data.SetData" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Data</title>
    </head>
    <body>
        <b>Welcome </b>
        <jsp:useBean id="person" class="data.SetData" scope="request"/>
        <jsp:getProperty  name="person" property="name"/>
        <%-- <%
            SetData s = (SetData) request.getAttribute("user"); 
        %>
        <%= s.getName() %> --%>
        
    </body>
</html>
