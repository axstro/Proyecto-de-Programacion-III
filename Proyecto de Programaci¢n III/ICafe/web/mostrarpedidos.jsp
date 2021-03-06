<%@page import="clases.pedido"%>
<%@page import="models.ModeloPedido"%>
<%@page import="controllers.ControladorPedido"%>
<%
    controllers.ControladorPedido dc = new ControladorPedido();
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect("index.html");
    } else {
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
    }
%>
<!DOCTYPE html>
<html lang="en" >

    <head>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round" rel="stylesheet"/>

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Owl Carousel -->
        <link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
        <link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />

        <!-- Magnific Popup -->
        <link type="text/css" rel="stylesheet" href="css/magnific-popup.css" />

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css"/>

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css" />
        <meta charset="UTF-8">
        <title>Menu - iCafe</title>



        <link rel="stylesheet" href="css/style.css">


    </head>

    <body>
        <!-- Header -->
        <header id="home">
            <!-- Fondo -->
            <div class="bg-img" style="background-image: url('./img/menu.jpg');">
                <div class="overlay"></div>
            </div>
            <!-- /Fondo -->

            <!-- Navigator -->
            <nav id="nav" class="navbar nav-transparent">
                <div class="container">

                    <div class="navbar-header">
                        <!-- Logo -->
                        <div class="navbar-brand">
                            <a href="index.html">
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

                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li><a href="logout.jsp">Cerrar Sesi�n</a></li>
                    </ul>

                    <!-- /Main navigation -->

                </div>
            </nav>
            <!-- /Nav -->

            <!-- home wrapper -->
            <div class="home-wrapper">
                <div class="container">
                    <div class="row">

                        <!-- home content -->
                        <div class="col-md-10 col-md-offset-1">
                            <div class="home-content">
                                <h1 class="white-text">Cocina - iCAFE</h1>
                                <p class="white-text">�Descubre nuestro cocina!
                                </p>
                            </div>
                        </div>
                        <!-- /home content -->

                    </div>
                </div>
            </div>
            <!-- /home wrapper -->

        </header>
        <!-- /Header -->
        <ul class="catCardList">


            <div id="about" class="section md-padding">

                <!-- Container -->
                <div class="container">

                    <!-- Row -->
                    <div class="row">
                        <!-- Section header -->
                        <div class="section-header text-center">
                            <h2 class="title">Pedidos</h2>
                        </div>
                        <!-- /Section header -->

                        <%= dc.getPedidos()%>
                        <%
                            ModeloPedido md = new ModeloPedido();
                            int i = 0;
                            for (pedido pedido : md.getAllPedidos()) {
                        %>
                        <script>
                            var countDownDate<%=i%> = new Date("<%=pedido.getFecha() + " " + pedido.getHora()%>").getTime();
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
                            }, 1000);
                        </script>
                        <%
                            i++;
                            }
                            %>
                    </div>
                </div>
            </div>




        </ul>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>



        <!-- Footer -->
        <footer id="footer" class="sm-padding bg-dark">

            <!-- Container -->
            <div class="container">

                <!-- Row -->
                <div class="row">

                    <div class="col-md-12">

                        <!-- footer logo -->
                        <div class="footer-logo">
                            <a href="index.html"><img src="img/logo_icafe_alt.png" alt="logo"></a>
                        </div>
                        <!-- /footer logo -->

                        <!-- footer follow -->
                        <ul class="footer-follow">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        </ul>
                        <!-- /footer follow -->

                        <!-- footer copyright -->
                        <div class="footer-copyright">
                            <p>iCaf� 2018. All Rights Reserved. <!-- <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
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
