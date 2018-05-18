<%--
    Document   : login
    Created on : 04-29-2018, 03:44:28 PM
    Author     : iCoffee
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexiones.ConexionMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");

            ConexionMySQL conexion = new ConexionMySQL();
            Connection conn = conexion.getConexion();
            Statement st;
            String sql = "SELECT * FROM usuario WHERE usuario='" + user + "' AND contraseña='" + pass + "'";
            try {
                st = conn.createStatement();
                ResultSet rs = st.executeQuery(sql);
                if (rs.next()) {
                    session.setAttribute("usuario", user);
                    response.sendRedirect("administracion.jsp");
                } else {
        %>
        <script>
            alert("El usuario o la Contraseña están incorrectos");
            window.location = 'login.html';
        </script>  
        <%
                }
                conn.close();
                st.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
