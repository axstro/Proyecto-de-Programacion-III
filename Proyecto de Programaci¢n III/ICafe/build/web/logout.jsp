<%-- 
    Document   : logout
    Created on : 04-29-2018, 04:15:32 PM
    Author     : iCoffee
--%>

<%
session.setAttribute("usuario", null);
session.invalidate();
response.sendRedirect("index.html");
%>
