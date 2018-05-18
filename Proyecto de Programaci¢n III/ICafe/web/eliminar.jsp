<%-- 
    Document   : eliminar
    Created on : 05-07-2018, 09:57:03 PM
    Author     : axstr
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
            int id = Integer.parseInt(request.getParameter("num"));
            ConexionMySQL conexion = new ConexionMySQL();
            Connection conn = conexion.getConexion();
            Statement st;
            String sql;

            if (id == 1) {
                int usuario = Integer.parseInt(request.getParameter("IdUsuario"));

                sql = "DELETE FROM usuario where IdUsuario=" + usuario;
                try {
                    st = conn.createStatement();
                    st.executeUpdate(sql);
                    conn.close();
                    st.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } else if (id == 2) {
                int producto = Integer.parseInt(request.getParameter("IdProducto"));

                sql = "DELETE FROM producto where idProducto=" + producto;
                try {
                    st = conn.createStatement();
                    st.executeUpdate(sql);
                    conn.close();
                    st.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } else if (id == 3) {
                int catempleado = Integer.parseInt(request.getParameter("IdCatEmpleado"));

                sql = "DELETE FROM catempleado where idCatEmpleado=" + catempleado;
                try {
                    st = conn.createStatement();
                    st.executeUpdate(sql);
                    conn.close();
                    st.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } else if (id == 4) {
                int promocion = Integer.parseInt(request.getParameter("IdPromocion"));

                sql = "DELETE FROM promociones where idPromocion=" + promocion;
                try {
                    st = conn.createStatement();
                    st.executeUpdate(sql);
                    conn.close();
                    st.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } else {
                int catproducto = Integer.parseInt(request.getParameter("IdCatProducto"));

                sql = "DELETE FROM catproducto where idCatProducto=" + catproducto;
                try {
                    st = conn.createStatement();
                    st.executeUpdate(sql);
                    conn.close();
                    st.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
        <script>
            alert("Registro Eliminado");
            window.location = 'mostrar.jsp';
        </script> 
        }
    </body>
</html>
