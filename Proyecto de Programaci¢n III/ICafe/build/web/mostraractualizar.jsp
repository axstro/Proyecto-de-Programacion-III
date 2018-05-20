<%-- 
    Document   : actualizar
    Created on : 05-08-2018, 10:47:12 PM
    Author     : axstr
--%>

<%@page import="java.sql.*"%>
<%@page import="conexiones.ConexionMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html;">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>iCafe - Modificar</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Owl Carousel -->
        <link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
        <link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />

        <!-- Magnific Popup -->
        <link type="text/css" rel="stylesheet" href="css/magnific-popup.css" />

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <!-- Header -->
        <header id="home">
            <!-- Background Image -->
            <div class="bg-img" style="background-image: url('./img/modificar_icafe.jpg');">
                <div class="overlay"></div>
            </div>
            <!-- /Background Image -->

            <!-- Nav -->
            <nav id="nav" class="navbar nav-transparent">
                <div class="container">

                    <div class="navbar-header">
                        <!-- Logo -->
                        <div class="navbar-brand">
                            <a href="administracion.jsp">
                                <img class="logo" src="img/logo_icafe.png" alt="logo">
                                <img class="logo-alt" src="img/logo_icafe_alt.png" alt="logo">
                            </a>
                        </div>
                        <!-- /Logo -->

                        <!-- Collapse nav button -->
                        <div class="nav-collapse">
                            <span></span>
                        </div>
                        <!-- /Collapse nav button -->
                    </div>

                    <!--  Main navigation  -->
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li><a href="logout.jsp">Cerrar Sesión</a></li>
                    </ul>
                    </ul>
                    <!-- /Main navigation -->

                </div>
            </nav>
            <!-- home wrapper -->
            <div class="home-wrapper">
                <div class="container">
                    <div class="row">

                        <!-- home content -->
                        <div class="col-md-10 col-md-offset-1">
                            <div class="home-content">
                                <h1 class="white-text">Modificación de iCAFE</h1>
                                <p class="white-text">¡Bienvenid@s a la sección de modificación de iCAFE! En esta sección usted podrá modificar los datos.
                                </p>
                                <button class="main-btn" OnClick="location.href = 'logout.jsp'">Cerrar Sesión</button>
                            </div>
                        </div>
                        </header>
                        <!-- /home content -->

                        <div id="service" class="section md-padding">
                            <div class="container">
                                <div class="row">

                                    <!-- TÃ­tulo--> 
                                    <div class="section-header text-center">
                                        <h2 class="title">Administración de iCoffee</h2>
                                    </div>
                                    <!--Fin tÃ­tulo-->
                                    <!-- Registrar Usuario -->
                                    <div id="usuario" class="section md-padding bg-grey">

                                        <!-- Container -->
                                        <div class="container">

                                            <!-- Row -->
                                            <div class="row">
                                                <!-- contact form -->
                                                <!-- Nombre Producto-->


                                                <div class="col-md-8 col-md-offset-2">
                                                    <%
                                                        int id = Integer.parseInt(request.getParameter("num"));
                                                        ConexionMySQL conexion = new ConexionMySQL();
                                                        Connection conn = conexion.getConexion();
                                                        Statement st;
                                                        String sql;

                                                        if (id == 1) {
                                                            String iduser = request.getParameter("IdUsuario");
                                                            sql = "SELECT * FROM usuario where idUsuario =" + iduser;
                                                            try {
                                                                st = conn.createStatement();
                                                                ResultSet rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                    %>
                                                    <!-- Creación del formulario Actualizar Usuario-->
                                                    <div class="text-center">
                                                        <h3>Actualizar Usuario</h3>
                                                    </div>
                                                    <form class="contact-form" method="post" action="actualizar.jsp">
                                                        <input type="hidden" value="1" name="actualizar">
                                                        <input type="text" name="id_usuario" class="input" readonly="readonly" value="<%= rs.getString(1)%>">
                                                        <input type="text" name="nombres" class="input" value="<%= rs.getString(2)%>">
                                                        <input type="text" name="apellidos" class="input" value="<%= rs.getString(3)%>">
                                                        <input type="text" name="dui" class="input" value="<%= rs.getString(4)%>">
                                                        <input type="text" name="nit" class="input" value="<%= rs.getString(5)%>">
                                                        <input type="text" name="tel1" class="input" value="<%= rs.getString(6)%>">
                                                        <input type="text" name="tel2" class="input" value="<%= rs.getString(7)%>">
                                                        <input type="text" name="direccion" class="input" value="<%= rs.getString(8)%>">
                                                        <input type="text" name="usuario" class="input" value="<%= rs.getString(9)%>" required>
                                                        <input type="password" name="contra" class="input" value="<%= rs.getString(10)%>" required>
                                                        <%
                                                                }
                                                            } catch (SQLException ex) {
                                                                ex.printStackTrace();
                                                            }

                                                        %>
                                                        Categoría Empleado <select class="input" name="categoria" required>
                                                            <%                                                sql = "SELECT * FROM catempleado";
                                                                try {
                                                                    st = conn.createStatement();
                                                                    ResultSet rs = st.executeQuery(sql);
                                                                    while (rs.next()) {
                                                            %>
                                                            <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>;
                                                            <%
                                                                    }
                                                                } catch (SQLException ex) {
                                                                    ex.printStackTrace();
                                                                }

                                                            %>
                                                        </select><br>
                                                        Tipo Empleado <select class="input" name="tipo" required>
                                                            <option value="Administrador">Administrador</option>
                                                            <option value="Cocinero">Cocinero</option>
                                                        </select><br>
                                                        <input type="submit" value="Actualizar Usuario" class="main-btn" name="registrar"></br>
                                                    </form>
                                                    <%                                            }
                                                    %>
                                                    <!-- Fin a la creación del formulario Actualizar Usuario-->

                                                    <!-- Comienzo del formulario actualizar Producto-->
                                                    <%
                                                        if (id == 2) {
                                                            String idprod = request.getParameter("IdProducto");
                                                            sql = "SELECT * FROM producto where idProducto =" + idprod;
                                                            try {
                                                                st = conn.createStatement();
                                                                ResultSet rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                    %>
                                                    <!-- Creación del formulario para actualizar producto -->
                                                    <div class="text-center">
                                                        <h3>Actualizar Producto</h3>
                                                    </div>
                                                    <form class="contact-form" method="post" action="actualizar.jsp">
                                                        <input type="hidden" value="2" name="actualizar">
                                                        <input type="text" name="id_producto" class="input" readonly="readonly" value="<%= rs.getString(1)%>">
                                                        <input type="text" name="nombre" class="input" value="<%= rs.getString(2)%>" required>
                                                        <input type="text" name="descripcion" class="input" value="<%= rs.getString(3)%>" required>
                                                        <input type="text" name="precio" class="input" value="<%= rs.getString(4)%>" required>
                                                        <input type="text" name="cantidad" class="input" value="<%= rs.getString(5)%>" required>
                                                        <img src="img/<%=rs.getString(8)%>" width="200" height="200">
                                                        <input type="file" name="imagen" src="<%=rs.getString(8)%>" accept=".jpg, .jpeg, .png"> 

                                                        <%
                                                                }
                                                            } catch (SQLException ex) {
                                                                ex.printStackTrace();
                                                            }
                                                        %>

                                                        Categoría Producto <select class="input-sm" name="categoria" required>
                                                            <%
                                                                sql = "SELECT * FROM catproducto";
                                                                try {
                                                                    st = conn.createStatement();
                                                                    ResultSet rs = st.executeQuery(sql);
                                                                    while (rs.next()) {
                                                            %>
                                                            <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>;
                                                            <%
                                                                    }
                                                                    conn.close();
                                                                    st.close();
                                                                } catch (SQLException ex) {
                                                                    ex.printStackTrace();
                                                                }
                                                            %>
                                                        </select><br><br>
                                                        Tipo <select class="input-sm" name="promocion" required>                                          
                                                            <option value="Normal">Normal</option>
                                                            <option value="Promocion">Promoción</option>
                                                        </select><br><br>

                                                        <input type="submit" value="Actualizar Producto" class="main-btn">
                                                    </form>
                                                    <!-- Fin a la creación del formulario Actualizar Producto-->

                                                    <!-- Comienzo del formulario Actualizar Cat. Empleado-->
                                                    <%
                                                        }

                                                        if (id == 3) {
                                                            String idcatemp = request.getParameter("IdCatEmpleado");
                                                            sql = "SELECT * FROM catempleado where idCatEmpleado=" + idcatemp;
                                                            try {
                                                                st = conn.createStatement();
                                                                ResultSet rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                    %>
                                                    <!-- Creación del formulario Actualizar Cat. Empleado-->
                                                    <div class="text-center">
                                                        <h3>Actualizar Cat. Empleado</h3>
                                                    </div>
                                                    <form class="contact-form" method="post" action="actualizar.jsp">
                                                        <input type="hidden" value="3" name="actualizar">
                                                        <input type="text" name="id_catemp" class="input" readonly="readonly" value="<%= rs.getString(1)%>">
                                                        <input type="text" name="nombre" class="input" value="<%= rs.getString(2)%>" required>
                                                        <input type="text" name="descripcion" class="input" value="<%= rs.getString(3)%>" required>
                                                        <%
                                                                }
                                                            } catch (SQLException ex) {
                                                                ex.printStackTrace();
                                                            }
                                                        %>
                                                        </select><br><br>
                                                        <input type="submit" value="Actualizar Cat. Empleado" class="main-btn">
                                                    </form>
                                                    <!-- Fin de la creación del formulario Actualizar Cat. Empleado-->    
                                                    <% }
                                                        if (id == 4) {
                                                            String idprom = request.getParameter("IdPromocion");
                                                            sql = "SELECT * FROM promociones where idPromocion=" + idprom;
                                                            try {
                                                                st = conn.createStatement();
                                                                ResultSet rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                    %>
                                                    <!-- Creación del formulario Actualizar Descuento-->
                                                    <div class="text-center">
                                                        <h3>Actualizar Promoción</h3>
                                                    </div>
                                                    <form class="contact-form" method="post" action="actualizar.jsp">
                                                        <input type="hidden" value="4" name="actualizar">
                                                        <input type="text" name="idProm" class="input" readonly="readonly" value="<%= rs.getString(1)%>">
                                                        <input type="text" name="nombre" class="input" value="<%= rs.getString(2)%>" required>
                                                        <input type="text" name="descripcion" class="input" value="<%= rs.getString(3)%>" required>
                                                        <%
                                                                }
                                                            } catch (SQLException ex) {
                                                                ex.printStackTrace();
                                                            }
                                                        %>
                                                        </select><br><br>
                                                        <input type="submit" value="Actualizar Promoción" class="main-btn">
                                                    </form>
                                                    <!-- Fin de la creación del formulario Actualizar Descuento-->

                                                    <% }

                                                        if (id == 5) {
                                                            String idcatprod = request.getParameter("IdCatProducto");
                                                            sql = "SELECT * FROM catproducto where idCatProducto=" + idcatprod;
                                                            try {
                                                                st = conn.createStatement();
                                                                ResultSet rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                    %>
                                                    <!-- Creación del formulario Actualizar Cat Producto-->
                                                    <div class="text-center">
                                                        <h3>Actualizar Cat. Producto</h3>
                                                    </div>
                                                    <form class="contact-form" method="post" action="actualizar.jsp">
                                                        <input type="hidden" value="5" name="actualizar">
                                                        <input type="text" name="id_catprod" class="input" readonly="readonly" value="<%= rs.getString(1)%>">
                                                        <input type="text" name="nombres" class="input" value="<%= rs.getString(2)%>" required>
                                                        <input type="text" name="descripcion" class="input" value="<%= rs.getString(3)%>" required>
                                                        <%
                                                                }
                                                            } catch (SQLException ex) {
                                                                ex.printStackTrace();
                                                            }
                                                        %>
                                                        </select><br><br>
                                                        <input type="submit" value="Actualizar Cat. Producto" class="main-btn">
                                                    </form>
                                                    <!-- Fin de la creación del formulario Actualizar Descuento-->
                                                    <%
                                                        }
                                                    %>




                                                </div>
                                                <!-- /contact form -->

                                            </div>
                                            <!-- /Row -->

                                        </div>
                                        <!-- /Container -->

                                    </div>
                                    <!-- /Registrar Usuario -->

                                </div>
                            </div>
                        </div>
                        <!-- Footer -->
                        <footer id="footer" class="sm-padding bg-dark">

                            <!-- Container -->
                            <div class="container">

                                <!-- Row -->
                                <div class="row">

                                    <div class="col-md-12">

                                        <!-- footer logo -->
                                        <div class="footer-logo">
                                            <a href="administracion.jsp"><img src="img/logo_icafe_alt.png" alt="logo"></a>
                                        </div>
                                        <!-- /footer logo -->

                                        <!-- footer follow -->
                                        <ul class="footer-follow">
                                            <li><a href="https://www.facebook.com/icafesv/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                        </ul>
                                        <!-- /footer follow -->

                                        <!-- footer copyright -->
                                        <div class="footer-copyright">
                                            <p>iCafé 2018. All Rights Reserved. <!-- <a href="https://colorlib.com" target="_blank">Colorlib</a> --></p>
                                        </div>
                                        <!-- /footer copyright -->

                                    </div>

                                </div>
                                <!-- /Row -->

                            </div>
                            <!-- /Container -->

                        </footer>
                        <!-- /Footer -->
                        <!-- Back to top -->
                        <div id="back-to-top"></div>
                        <!-- /Back to top -->

                        <!-- Preloader -->
                        <div id="preloader">
                            <div class="preloader">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                        <!-- /Preloader -->

                        <!-- jQuery Plugins -->
                        <script type="text/javascript" src="js/jquery.min.js"></script>
                        <script type="text/javascript" src="js/bootstrap.min.js"></script>
                        <script type="text/javascript" src="js/owl.carousel.min.js"></script>
                        <script type="text/javascript" src="js/jquery.magnific-popup.js"></script>
                        <script type="text/javascript" src="js/main.js"></script>
                        <!-- Optional JavaScript -->
                        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
                        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>


                        </body>
                        </html>

