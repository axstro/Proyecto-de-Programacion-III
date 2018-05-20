<%-- 
    Document   : insertprod
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
            String nombre = request.getParameter("nombre");
            String descripcion = request.getParameter("descripcion");
            double precio = Double.parseDouble(request.getParameter("precio"));
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            int categoria = Integer.parseInt(request.getParameter("categoria"));
            String tipo = request.getParameter("promocion");
            String imagen = request.getParameter("imagen");
            
            ConexionMySQL conexion = new ConexionMySQL();
            Connection conn = conexion.getConexion();
            Statement st;
            String sql = "INSERT INTO producto(nombre, descripcion, precio, cantidad, catproducto_idcatproducto, tipo, imagen) VALUES ('" + nombre + "','" + descripcion + "'," + precio + "," + cantidad + "," + categoria + ", '"+tipo+"', '"+imagen+"')";
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
          alert("Producto Insertado" );
          window.location = 'administracion.jsp';
     </script> 
    </body>
</html>
