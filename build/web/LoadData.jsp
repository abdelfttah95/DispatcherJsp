<%-- 
    Document   : LoadData
    Created on : Nov 17, 2021, 4:29:15 PM
    Author     : abdel
--%>
<%@page import="data.SetData" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Load Data</title>
    </head>
    <body>
        <%-- <%
            String d = request.getParameter("id");
            String n = request.getParameter("name");
            String s = request.getParameter("salary");
            
            SetData p = new SetData();
            p.setId(Integer.parseInt(d));
            p.setName(n);
            p.setSalary(Integer.parseInt(s));
            
            // application.setAttribute("user", p);
           // session.setAttribute("user", p);
           request.setAttribute("user", p);
           RequestDispatcher req = request.getRequestDispatcher("ShowData.jsp");
           req.forward(request,response);
        %>--%>
        
        <jsp:useBean id="person" scope="request" class="data.SetData" >
            <jsp:setProperty name="person" property="id" param="id"/>
            <jsp:setProperty name="person" property="name" param="name"/>
            <jsp:setProperty name="person" property="salary" param="salary"/>
        </jsp:useBean>
        
        <jsp:forward page="ShowData.jsp" />
        <a href="ShowData.jsp">Show Data</a>
    </body>
</html>
