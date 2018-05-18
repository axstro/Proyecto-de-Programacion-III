<%@page import="java.sql.*"%>
<%@page import="conexiones.ConexionMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("usuario")== null){
        response.sendRedirect("index.html");
    }else{
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

        <title>iCafe - Mostrar</title>

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
            <div class="bg-img" style="background-image: url('./img/cafe2.jpg');">
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
                        <li><a href="administracion.jsp">Registros</a></li>
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
                                <h1 class="white-text">Datos de iCAFE</h1>
                                <p class="white-text">¡Bienvenid@s a la sección de datos de iCAFE! En esta sección usted podrá visualizar los datos.
                                </p>
                                <button class="main-btn" OnClick="location.href='logout.jsp'">Cerrar Sesión</button>
                            </div>
                        </div>
                        <!-- /home content -->

                    </div>
                </div>
            </div>
        </header>
        <!-- /home wrapper -->

        <div id="service" class="section md-padding">
            <div class="container">
                <div class="row">
                    <!-- Registrar Usuario -->
                    <div id="usuario" class="section md-padding bg-grey">

                        <!-- Container -->
                        <div class="container">

                            <!-- Row -->
                            <div class="row">
                                <!-- contact form -->
                                <!-- Nombre Producto-->
                                <div class="text-center">
                                    <h2 class="title">Mostrar Usuarios</h2>
                                </div>
                                <!--/Nombre Producto-->

                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tbody>
                                                <tr>
                                                    <th scope="col">ID</th>
                                                    <th scope="col">Nombres</th>
                                                    <th scope="col">Apellidos</th>
                                                    <th scope="col">DUI</th>
                                                    <th scope="col">NIT</th>
                                                    <th scope="col">Tel1</th>
                                                    <th scope="col">Tel2</th>
                                                    <th scope="col">Direccion</th>
                                                    <th scope="col">Usuario</th>
                                                    <th scope="col">Contraseña</th>
                                                    <th scope="col">Categoría Empleado</th>
                                                </tr>
                                                </thead>
                                                <%
                                                    ConexionMySQL conexion = new ConexionMySQL();
                                                    Connection conn = conexion.getConexion();
                                                    Statement st;
                                                    String sql = "SELECT * FROM usuario INNER JOIN catempleado ON usuario.catempleado_idcatempleado = catempleado.idcatempleado";
                                                    try {
                                                        st = conn.createStatement();
                                                        ResultSet rs = st.executeQuery(sql);
                                                        while (rs.next()) {
                                                %>
                                                <tr>
                                                    <td><%=rs.getString(1)%></td>
                                                    <td><%=rs.getString(2)%></td>
                                                    <td><%=rs.getString(3)%></td>
                                                    <td><%=rs.getString(4)%></td>
                                                    <td><%=rs.getString(5)%></td>
                                                    <td><%=rs.getString(6)%></td>
                                                    <td><%=rs.getString(7)%></td>
                                                    <td><%=rs.getString(8)%></td>
                                                    <td><%=rs.getString(9)%></td>
                                                    <td><%=rs.getString(10)%></td>
                                                    <td><%=rs.getString(13)%></td>
                                                </tr>
                                                <%
                                                        }
                                                    } catch (SQLException ex) {
                                                        ex.printStackTrace();
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                    <form class="contact-form" method="post">
                                        <input type="hidden" value="1" name="num">
                                        Id Usuario <select class="input" name="IdUsuario" required>
                                            <%
                                                sql = "SELECT idUsuario FROM usuario";
                                                try {
                                                    st = conn.createStatement();
                                                    ResultSet rs = st.executeQuery(sql);
                                                    while (rs.next()) {
                                            %>
                                            <option value="<%=rs.getInt(1)%>"><%=rs.getString(1)%></option>;
                                            <%
                                                    }
                                                } catch (SQLException ex) {
                                                    ex.printStackTrace();
                                                }
                                            %>
                                        </select><br>
                                        <input type="submit" value="Eliminar Usuario" class="main-btn" name="eliminar" formaction="eliminar.jsp">
                                        <input type="submit" value="Modificar Usuario" class="main-btn" name="modusuario" formaction="mostraractualizar.jsp"></br>  
                                    </form>
                                </div>
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
                            <div class="text-center">
                                <h2 class="title">Mostrar Productos</h2>
                            </div>
                            <!--/Nombre Producto-->
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tbody>
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">Nombre</th>
                                                <th scope="col">Descripción</th>
                                                <th scope="col">Precio</th>
                                                <th scope="col">Cantidad</th>
                                                <th scope="col">Categoría Producto</th>
                                                <th scope="col">Tipo Producto</th>
                                                
                                            </tr>
                                            </thead>
                                            <%
                                                sql = "SELECT * FROM producto INNER JOIN catproducto ON producto.catproducto_idcatproducto = catproducto.idcatproducto";
                                                try {
                                                    st = conn.createStatement();
                                                    ResultSet rs = st.executeQuery(sql);
                                                    while (rs.next()) {
                                            %>  
                                            <tr>
                                                <td><%=rs.getString(1)%></td>
                                                <td><%=rs.getString(2)%></td>
                                                <td><%=rs.getString(3)%></td>
                                                <td>$ <%=rs.getString(4)%></td>
                                                <td><%=rs.getString(5)%></td>
                                                <td><%=rs.getString(9)%></td>
                                                <td><%=rs.getString(7)%></td>
                                            </tr>
                                            <%
                                                    }
                                                } catch (SQLException ex) {
                                                    ex.printStackTrace();
                                                }
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                                <form class="contact-form" method="post">
                                    <input type="hidden" value="2" name="num">
                                    Id Producto <select class="input" name="IdProducto" required>
                                        <%
                                            sql = "SELECT idProducto FROM producto";
                                            try {
                                                st = conn.createStatement();
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                        %>
                                        <option value="<%=rs.getInt(1)%>"><%=rs.getString(1)%></option>;
                                        <%
                                                }
                                            } catch (SQLException ex) {
                                                ex.printStackTrace();
                                            }
                                        %>
                                    </select><br>
                                    <input type="submit" value="Eliminar Producto" class="main-btn" name="eliminar" formaction="eliminar.jsp">  
                                    <input type="submit" value="Modificar Producto" class="main-btn" name="modusuario" formaction="mostraractualizar.jsp"></br>                      
                                </form>
                                <!-- Fin al formulario para seleccionar el id de lo que se actualizará-->



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
                                    <div class="pricing">
                                        <span class="price-title">Mostrar Categoría de Empleado</span>
                                        <center>
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">ID</th>
                                                            <th scope="col">Nombre</th>
                                                            <th scope="col">Descripción</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            sql = "SELECT * FROM catempleado";
                                                            try {
                                                                st = conn.createStatement();
                                                                ResultSet rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                        %>  
                                                        <tr>
                                                            <td><%=rs.getString(1)%></td>
                                                            <td><%=rs.getString(2)%></td>
                                                            <td><%=rs.getString(3)%></td>
                                                        </tr>
                                                        <%
                                                                }
                                                            } catch (SQLException ex) {
                                                                ex.printStackTrace();
                                                            }
                                                        %>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <form class="contact-form" method="post">
                                                <input type="hidden" value="3" name="num">
                                                Id Cat. Empleado <select class="input" name="IdCatEmpleado" required>
                                                    <%
                                                        sql = "SELECT idCatEmpleado FROM catempleado";
                                                        try {
                                                            st = conn.createStatement();
                                                            ResultSet rs = st.executeQuery(sql);
                                                            while (rs.next()) {
                                                    %>
                                                    <option value="<%=rs.getInt(1)%>"><%=rs.getString(1)%></option>;
                                                    <%
                                                            }
                                                        } catch (SQLException ex) {
                                                            ex.printStackTrace();
                                                        }
                                                    %>
                                                </select><br>
                                                <input type="submit" value="Eliminar Categoría" class="main-btn" name="eliminar" formaction="eliminar.jsp">   
                                                <input type="submit" value="Modificar Cat. Empleado" class="main-btn" name="modusuario" formaction="mostraractualizar.jsp"></br>                      
                                            </form>
                                            <!-- Fin al formulario para seleccionar el id de lo que se actualizará-->

                                        </center>
                                    </div>
                                </div>
                                <!-- /pricing -->

                                <!-- pricing -->
                                <div class="col-sm-6">
                                    <div class="pricing">
                                        <span class="price-title">Mostrar Categoría de Producto </span>
                                        <center>
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">ID</th>
                                                            <th scope="col">Nombres</th>
                                                            <th scope="col">Descripción</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            sql = "SELECT * FROM catproducto";
                                                            try {
                                                                st = conn.createStatement();
                                                                ResultSet rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                        %>  
                                                        <tr>
                                                            <td><%=rs.getString(1)%></td>
                                                            <td><%=rs.getString(2)%></td>
                                                            <td><%=rs.getString(3)%></td>
                                                        </tr>
                                                        <%
                                                                }
                                                            } catch (SQLException ex) {
                                                                ex.printStackTrace();
                                                            }
                                                        %>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <form class="contact-form" method="post">

                                                <input type="hidden" value="5" name="num">
                                                Id Cat. Producto <select class="input" name="IdCatProducto" required>
                                                    <%
                                                        sql = "SELECT idCatProducto FROM catproducto";
                                                        try {
                                                            st = conn.createStatement();
                                                            ResultSet rs = st.executeQuery(sql);
                                                            while (rs.next()) {
                                                    %>
                                                    <option value="<%=rs.getInt(1)%>"><%=rs.getString(1)%></option>;
                                                    <%
                                                            }
                                                            conn.close();
                                                            st.close();
                                                        } catch (SQLException ex) {
                                                            ex.printStackTrace();
                                                        }
                                                    %>
                                                </select><br>
                                                <input type="submit" value="Eliminar Categoría" class="main-btn" name="eliminar" formaction="eliminar.jsp">
                                                <input type="submit" value="Modificar Cat. Producto" class="main-btn" name="moddesc" formaction="mostraractualizar.jsp"></br>                      
                                            </form>
                                        </center>
                                    </div>

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
