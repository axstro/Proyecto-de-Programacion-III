<%@page import="java.sql.*"%>
<%@page import="conexiones.ConexionMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect("index.html");
    } else {
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
    }
%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html;">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Administración iCafé</title>

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
            <div class="bg-img" style="background-image: url('./img/cafe.jpg');">
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
                        <li><a href="#usuario">Usuario</a></li>
                        <li><a href="#producto">Producto</a></li>
                        <li><a href="#opcionesvarias">Varios</a></li>
                        <li><a href="mostrar.jsp">Mostrar</a></li>
                        <li><a href="logout.jsp">Cerrar Sesión</a></li>
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
                                <h1 class="white-text">Administración de iCAFE</h1>
                                <p class="white-text">¡Bienvenid@s a la sección de administradores de iCAFE!
                                </p>
                                <button class="main-btn" OnClick="location.href = 'logout.jsp'">Cerrar Sesión</button>
                            </div>
                        </div>
                        <!-- /home content -->

                    </div>
                </div>
            </div>
        </header>

        <div id="service" class="section md-padding">
            <div class="container">
                <div class="row">

                    <!-- TÃ­tulo--
                    <div class="section-header text-center">
                        <h2 class="title">Administración de iCoffee</h2>
                        <h4>Registros</h4>
                    </div>
                    Fin tÃ­tulo-->

                    <!-- Registrar Usuario -->
                    <div id="usuario" class="section md-padding bg-grey">

                        <!-- Container -->
                        <div class="container">

                            <!-- Row -->
                            <div class="row">
                                <!-- contact form -->
                                <!-- Nombre Producto-->
                                <div class="section-header text-center">
                                    <h2 class="title">Registrar Usuario</h2>
                                </div>
                                <!--/Nombre Producto-->
                                <div class="col-md-8 col-md-offset-2">
                                    <form class="contact-form" method="post" action="insertuser.jsp">
                                        <input type="text" name="nombres" class="input" placeholder="Nombres" maxlength="50" required>
                                        <input type="text" name="apellidos" class="input" placeholder="Apellidos" maxlength="50" required>
                                        <input type="text" name="dui" class="input" placeholder="DUI (XXXXXXXX-X)" maxlength="10" pattern="\d\d\d\d\d\d\d\d-\d" title="Ingrese el DUI con el formato indicado" required>
                                        <input type="text" name="nit" class="input" placeholder="NIT (XXXX-XXXXXX-XXX-X)" maxlength="17" pattern="\d\d\d\d-\d\d\d\d\d\d-\d\d\d-\d" title="Ingrese el NIT con el formato indicado" required>
                                        <input type="text" name="tel1" class="input" placeholder="Teléfono1 (XXXX-XXXX)" maxlength="9" pattern="\d\d\d\d-\d\d\d\d" title="Ingrese el Teléfono con el formato indicado" required>
                                        <input type="text" name="tel2" class="input" placeholder="Teléfono2(XXXX-XXXX) (Opcional)" pattern="\d\d\d\d-\d\d\d\d" title="Ingrese el Teléfono con el formato indicado" maxlength="9">
                                        <textarea class="input" name="direccion" placeholder="Dirección" maxlength="200" required></textarea>
                                        <input type="text" name="usuario" class="input" placeholder="Usuario" maxlength="100" required>
                                        <input type="password" name="contra" class="input" placeholder="Contraseña" maxlength="100" required>
                                        Categoría Empleado <select class="input" name="categoria" required>
                                            <%
                                                ConexionMySQL conexion = new ConexionMySQL();
                                                Connection conn = conexion.getConexion();
                                                Statement st;
                                                String sql = "SELECT * FROM catempleado";
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
                                        <input type="submit" value="Registrar Usuario" class="main-btn" name="registrar"></br>
                                    </form>



                                    <!-- Fin al formulario insertar usuario -->

                                    <!-- Inicio de formulario eliminar usuario-->

                                </div>
                                <!-- /contact form -->

                            </div>
                            <!-- /Row -->

                        </div>
                        <!-- /Container -->

                    </div>
                    <!-- /Registrar Usuario -->

                    <!-- Producto -->
                    <div id="producto" class="section md-padding">

                        <!-- Container -->
                        <div class="container">

                            <!-- Row -->
                            <div class="row">
                                <!-- contact form -->
                                <!-- Nombre Producto-->
                                <div class="text-center">
                                    <h2 class="title">Registrar Producto</h2>
                                </div>
                                <!--/Nombre Producto-->
                                <div class="col-md-8 col-md-offset-2">
                                    <form class="contact-form" method="post" action="insertprod.jsp">
                                        <input type="text" name="nombre" class="input" placeholder="Nombre" maxlength="50" required>
                                        <input type="number" name="cantidad" class="input" placeholder="Cantidad" min="1" required>
                                        <input type="text" name="precio" class="input" placeholder="Precio" min="0.00" pattern="\d+(\.\d{2})?" required>
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
                                        <textarea class="input" name="descripcion" placeholder="Descripción" maxlength="200" required></textarea>
                                        <input  type="file"  name="imagen">  
                                        <input type="submit" value="Registrar Producto" class="main-btn">
                                    </form>



                                </div>
                                <!-- /contact form -->

                            </div>
                            <!-- /Row -->

                        </div>
                        <!-- /Container -->

                    </div>
                    <!-- /Producto -->

                    <!-- Opciones Varias -->
                    <div id="opcionesvarias" class="section md-padding">

                        <!-- ********-->
                        <!-- Pricing -->
                        <div id="pricing" class="section md-padding">

                            <!-- Container -->
                            <div class="container">

                                <!-- Row -->
                                <div class="row">

                                    <!-- Section header -->
                                    <div class="section-header text-center">
                                        <h2 class="title">Opciones Varias</h2>
                                    </div>
                                    <!-- /Section header -->

                                    <!-- pricing -->
                                    <div class="col-sm-6">
                                        <form method="post" action="insertcatem.jsp">
                                            <div class="pricing">
                                                <span class="price-title">Registrar Categoría de Empleado</span>
                                                <div class="price-head" style="padding-left: 20px; padding-right: 20px;">
                                                    <input type="text" name="nombrecat" class="input" placeholder="Nombre" maxlength="50" required><br><br>
                                                    <input type="text" name="descripcioncat" class="input" placeholder="Descripción" maxlength="500" required>
                                                </div>
                                                <div class="price-btn">
                                                    <input type="submit" value="Registrar Categoría de Empleado" class="outline-btn">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- /pricing -->

                                    
                                    <!-- pricing -->
                                    <div class="col-sm-6">
                                        <form method="post" action="insertcatprod.jsp">
                                            <div class="pricing">
                                                <span class="price-title">Registrar Categoría de Producto </span>
                                                <div class="price-head" style="padding-left: 20px; padding-right: 20px;">
                                                    <input type="text" name="nombre" class="input" placeholder="Nombre" maxlength="50" required><br><br>
                                                    <input type="text" name="descripcion" class="input" placeholder="Descripción" maxlength="500" required>
                                                </div>
                                                <div class="price-btn">
                                                    <input type="submit" value="Registrar Categoría" class="outline-btn">
                                                </div>

                                            </div>
                                        </form>
                                    </div>
                                    <!-- /pricing -->

                                </div>
                                <!-- Row -->

                            </div>
                            <!-- /Container -->

                        </div>

                        <!-- ********-->

                    </div>
                    <!-- /Opciones Varias -->

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
