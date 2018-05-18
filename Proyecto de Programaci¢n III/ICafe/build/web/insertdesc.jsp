<%-- 
    Document   : insertdesc
    Created on : 05-04-2018, 01:20:55 PM
    Author     : iCoffee
--%>


<%@page import="javafx.scene.input.KeyCode.*"%>
<%@page import="java.sql.*"%>
<%@page import="conexiones.ConexionMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import="java.lang.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String nombre = request.getParameter("nombre");
            String descripcion = request.getParameter("descripcion");

            ConexionMySQL conexion = new ConexionMySQL();
            Connection conn = conexion.getConexion();
            Statement st;
            String sql = "INSERT INTO promociones (nombre, descripcion) VALUES ('"+nombre+"', '"+descripcion+"')";
            try {
                st = conn.createStatement();
                st.executeUpdate(sql);
                conn.close();
                st.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
        <script>
          alert("Promoción Registrada" );
          window.location = 'administracion.jsp';
     </script> 
    </body>
</html>
