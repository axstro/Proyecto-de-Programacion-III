<%@page import="javafx.scene.input.KeyCode.*"%>
<%@page import="java.sql.*"%>
<%@page import="conexiones.ConexionMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import="java.lang.*" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            int veces = Integer.parseInt(request.getParameter("veces"));
            for (int i = 1; i <= veces; i++) {
                String cliente = request.getParameter("cliente");
                int cantidad = Integer.parseInt(request.getParameter("cantidad" + i));
                int idProducto = Integer.parseInt(request.getParameter("idProducto" + i));

                ConexionMySQL conexion = new ConexionMySQL();
                Connection conn = conexion.getConexion();
                Statement st;
                String sql = "INSERT INTO pedido(fecha, hora, cantidad,cliente,producto_idProducto,estado) VALUES (CURDATE(), CURTIME(), " + cantidad + ",'" + cliente + "'," + idProducto + ",0)";
                try {
                    st = conn.createStatement();
                    st.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                sql="UPDATE producto SET cantidad=cantidad-"+cantidad+" WHERE idProducto="+idProducto;
                try {
                    st = conn.createStatement();
                    st.executeUpdate(sql);
                    conn.close();
                    st.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            session.setAttribute("carrito", null);
            session.invalidate();
        %>
        <script>
            alert("Pedido Realizado");
            window.location = 'mostrarproductos.jsp';
        </script> 

    </body>
</html>
