<%-- 
    Document   : vistapedidos
    Created on : 05-27-2018, 10:43:37 AM
    Author     : iCafe
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

        <title>iCafe - Estado de Pedidos</title>

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
    <!-- Header -->
    <body>
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
                        <li><a href="index.html">Inicio</a></li>
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
                                <h1 class="white-text">Pedidos</h1>
                                <p class="white-text">¡Bienvenid@s a la sección de pedidos de iCAFE! En esta sección usted podrá observar los estados de los difentes pedidos.
                                </p>
                            </div>
                        </div>
                        </header>    

                        <div id="service" class="section md-padding">
                            <div class="container">
                                <div class="row">

                                    <!-- TÃ­tulo--> 
                                    <div class="section-header text-center">
                                        <h2 class="title">Pedidos Actuales</h2>
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

                                                </div>
                                                <%

                                                    ConexionMySQL conexion = new ConexionMySQL();
                                                    Connection conn = conexion.getConexion();
                                                    Statement st;
                                                    String sql;
                                                %>
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <thead>
                                                            <tbody>
                                                                <tr>
                                                                    <th scope="col">ID</th>
                                                                    <th scope="col">Fecha</th>
                                                                    <th scope="col">Hora</th>
                                                                    <th scope="col">Cantidad</th>
                                                                    <th scope="col">Cliente</th>
                                                                    <th scope="col">Producto</th>
                                                                    <th scope="col">Estado</th>
                                                                    <th scope="col">Tiempo</th>
                                                                </tr>
                                                                </thead>
                                                                <%
                                                                    sql = "SELECT * FROM pedido INNER JOIN producto ON pedido.producto_idProducto = producto.idProducto";
                                                                    try {
                                                                        st = conn.createStatement();
                                                                        ResultSet rs = st.executeQuery(sql);
                                                                        int i = 0;
                                                                        while (rs.next()) {
                                                                %>  
                                                                <tr id="registro<%=i%>">
                                                                    <td><%=rs.getString(1)%></td>
                                                                    <td><%=rs.getString(2)%></td>
                                                                    <td><%=rs.getString(3)%></td>
                                                                    <td><%=rs.getString(4)%></td>
                                                                    <td><%=rs.getString(5)%></td>
                                                                    <td><%=rs.getString(9)%></td>
                                                                    <%
                                                                        String estado = "";
                                                                        if (Integer.parseInt(rs.getString(7)) == 0) {
                                                                            estado = "En cocina";
                                                                        } else {
                                                                            estado = "Entregado";
                                                                        }
                                                                    %>
                                                                    <td><%=estado%></td>
                                                                    <td><div id="tiempo<%=i%>"></div></td>
                                                                </tr>
                                                            <script>
                                                                var countDownDate<%=i%> = new Date("<%=rs.getString(2) + " " + rs.getString(3)%>").getTime();
                                                                var x<%=i%> = setInterval(function () {

                                                                    var now<%=i%> = new Date().getTime();
                                                                    var distance<%=i%> = now<%=i%> - countDownDate<%=i%>;
                                                                    var hours<%=i%> = Math.floor((distance<%=i%> % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                                                                    var minutes<%=i%> = Math.floor((distance<%=i%> % (1000 * 60 * 60)) / (1000 * 60));
                                                                    var seconds<%=i%> = Math.floor((distance<%=i%> % (1000 * 60)) / 1000);
                                                                    if (seconds<%=i%> < 10) {
                                                                        seconds<%=i%> = "0" + seconds<%=i%>;
                                                                    }
                                                                    if (minutes<%=i%> < 10) {
                                                                        minutes<%=i%> = "0" + minutes<%=i%>;
                                                                    }
                                                                    if (hours<%=i%> < 10) {
                                                                        hours<%=i%> = "0" + hours<%=i%>;
                                                                    }
                                                                    document.getElementById("tiempo<%=i%>").innerHTML = hours<%=i%> + ":"
                                                                            + minutes<%=i%> + ":" + seconds<%=i%>;
                                                                <%
                                                                    if (Integer.parseInt(rs.getString(7)) == 1) {
                                                                %>
                                                                    clearInterval(x<%=i%>);
                                                                    document.getElementById("tiempo<%=i%>").innerHTML = "Entregado";
                                                                    document.getElementById("registro<%=i%>").style.backgroundColor = "#baffc9";
                                                                <%
                                                                } else {
                                                                %>
                                                                    if (distance<%=i%> > 1799802) {
                                                                        document.getElementById("registro<%=i%>").style.backgroundColor = "#ffb3ba";
                                                                    } else {
                                                                        if (distance<%=i%> > 599934) {
                                                                            document.getElementById("registro<%=i%>").style.backgroundColor = "#ffdfba";
                                                                        } else {
                                                                            document.getElementById("registro<%=i%>").style.backgroundColor = "#ffffba";
                                                                        }
                                                                    }
                                                                <%
                                                                    }
                                                                %>
                                                                }, 1000);
                                                            </script>
                                                            <%
                                                                        i++;
                                                                    }
                                                                } catch (SQLException ex) {
                                                                    ex.printStackTrace();
                                                                }
                                                            %>
                                                            </tbody>
                                                        </table>
                                                    </div>            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </body>
                            </html>
