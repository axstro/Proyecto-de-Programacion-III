<%-- 
    Document   : actualizar
    Created on : 05-09-2018, 12:04:10 AM
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

            int id = Integer.parseInt(request.getParameter("actualizar"));
            ConexionMySQL conexion = new ConexionMySQL();
            Connection conn = conexion.getConexion();
            Statement st;
            String sql;

            if (id == 1) {

                String uid = request.getParameter("id_usuario");
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
                sql = "UPDATE usuario SET nombres='" + nombres + "', apellidos='" + apellidos + "', dui='" + dui + "', nit='" + nit + "', tel1='" + tel1 + "', tel2='" + tel2 + "', direccion='" + direccion + "', usuario='" + usuario + "', contraseña='" + contra + "', catempleado_idcatempleado='" + categoria + "' where idUsuario=" + uid;
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
            alert("Usuario Actualizado");
            window.location = 'mostrar.jsp';
        </script>
        <%
            }
                
            if(id ==2 ){

                String idprod = request.getParameter("id_producto");
                String nombre = request.getParameter("nombre");
                String descripprod = request.getParameter("descripcion");
                double precio = Double.parseDouble(request.getParameter("precio"));
                int cant = Integer.parseInt(request.getParameter("cantidad"));
                int cat = Integer.parseInt(request.getParameter("categoria"));
                String tipo = request.getParameter("promocion");
                String imagen = request.getParameter("imagen");
                sql = "UPDATE producto SET nombre='" + nombre + "', descripcion='" + descripprod + "', precio='" + precio + "', cantidad='" + cant + "', catproducto_idcatproducto='" + cat + "', tipo='"+tipo+"', imagen='"+ imagen +"' where idProducto=" + idprod;
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
            alert("Producto Actualizado");
            window.location = 'mostrar.jsp';
        </script>
<%
            }

            if(id == 3) {
                String idcatempleado = request.getParameter("id_catemp");
                String nombrecatemp = request.getParameter("nombre");
                String descripcatemp = request.getParameter("descripcion");
                sql = "UPDATE catempleado SET nombre='" + nombrecatemp+ "', descripcion='" + descripcatemp + "' where idCatEmpleado=" + idcatempleado;
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
            alert("Cat. Emp. Actualizada");
            window.location = 'mostrar.jsp';
        </script>
<%
            }
            
            if(id ==4 ){
                String idprom = request.getParameter("idProm");
                String nombre = request.getParameter("nombre");
                String descripcion = request.getParameter("descripcion");
                sql = "UPDATE promociones SET nombre='" +nombre+ "', descripcion='" +descripcion+ "' where idPromocion=" + idprom;
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
            alert("Promoción Actualizada");
            window.location = 'mostrar.jsp';
        </script>
<%
            }
            if (id == 5) {
                String idcat = request.getParameter("id_catprod");
                String nombrescat = request.getParameter("nombres");
                String descripcat = request.getParameter("descripcion");
                sql = "UPDATE catproducto SET nombres='" +nombrescat+ "', descripcion='" +descripcat+ "' where idCatProducto=" + idcat;
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
            alert("Cat. Prod. Actualizada");
            window.location = 'mostrar.jsp';
        </script>
<%
            }
           if (id == 6) {
                String idpedido = request.getParameter("idpedido");
                sql = "UPDATE pedido SET estado = 1 where idPedido=" + idpedido;
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
            alert("Pedido Entregado");
            window.location = 'mostrarpedidos.jsp';
        </script>
<%
            }
%>
    </body>
</html>
