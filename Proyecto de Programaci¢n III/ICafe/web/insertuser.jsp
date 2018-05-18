<%-- 
    Document   : insertuser
    Created on : 04-27-2018, 11:32:12 PM
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
            String nombres = request.getParameter("nombres");
            String apellidos = request.getParameter("apellidos");
            String dui = request.getParameter("dui");
            String nit = request.getParameter("nit");
            String tel1 = request.getParameter("tel1");
            String tel2 = request.getParameter("tel2");
            String direccion = request.getParameter("direccion");
            String usuario = request.getParameter("usuario");
            String contra = request.getParameter("contra");
            int categoria = Integer.parseInt(request.getParameter("categoria"));

            ConexionMySQL conexion = new ConexionMySQL();
            Connection conn = conexion.getConexion();
            Statement st;
            String sql = "INSERT INTO usuario(nombres, apellidos, dui, nit, tel1, tel2, direccion, usuario, contraseña, catempleado_idcatempleado) VALUES ('" + nombres + "','" + apellidos + "','" + dui + "','" + nit + "','" + tel1 + "','" + tel2 + "','" + direccion + "','" + usuario + "','" + contra + "', " + categoria + ")";
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
          alert("Usuario Insertado" );
          window.location = 'administracion.jsp';
     </script>  
    </body>
</html>
