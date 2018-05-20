<%@page import="controllers.ControladorProducto"%>
<%
    controllers.ControladorProducto cp = new ControladorProducto();
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
                        </div>

                        <!-- /Collapse nav button -->
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li><a href="#Menu">Menu</a></li>
                        <!-- /Main navigation -->
                    </ul>
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
                                <h1 class="white-text">Menu - iCAFE</h1>
                                <p class="white-text">¡Descubre nuestro menu!
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


            <div id="Menu" class="section md-padding">

                <!-- Container -->
                <div class="container">

                    <!-- Row -->
                    <div class="row">
                        <!-- Section header -->
                        <div class="section-header text-center">
                            <h2 class="title">Menu</h2>
                        </div>
                        <!-- /Section header -->

                        <%= cp.getProductos()%>
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
                            <li><a href="https://www.facebook.com/icafesv/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        </ul>
                        <!-- /footer follow -->

                        <!-- footer copyright -->
                        <div class="footer-copyright">
                            <p>iCafé 2018. All Rights Reserved. <!-- <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
                                <br><br><a href="login.html"> Si eres un administrador da clic aquí</a></p>
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
