
<%@page import="clases.producto"%>
<%@page import="controllers.ControladorProducto"%>
<%@page import="clases.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");

%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html;">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Carrito de Compras</title>

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
            <div class="bg-img" style="background-image: url('./img/compraicafe.jpg');">
                <div class="overlay"></div>
            </div>
            <!-- /Background Image -->

            <!-- Nav -->
            <nav id="nav" class="navbar nav-transparent">
                <div class="container">

                    <div class="navbar-header">
                        <!-- Logo -->
                        <div class="navbar-brand">
                            <a href="mostrarproductos.jsp">
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
                        <li><a href="mostrarproductos.jsp">Menú</a></li>

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
                                <h1 class="white-text">Carrito de compras iCAFE</h1>
                                <p class="white-text">¡Bienvenid@s a la sección de compras de iCAFE!
                                </p>
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
                    <div id="usuario" class="section md-padding bg-grey">

                        <div class="container">

                            <!-- Row -->
                            <div class="contact-form">
                                <br>
                                <br>
                                <table style="width:80%">

                                    <tr>
                                        <td></td> 

                                        <td>ID</td>

                                        <td>NOMBRE</td>

                                        <td> CANTIDAD</td>

                                        <td>TOTAL</td>

                                        <td> </td>

                                    </tr>
                                    <%     controllers.ControladorProducto cp = new ControladorProducto();
                                        double total = 0;
                                        if (articulos != null) {
                                            for (Articulo a : articulos) {
                                                producto producto = cp.getProducto(a.getIdProducto());
                                                total += a.getCantidad() * producto.getPrecio();

                                    %> 
                                    <tr>
                                        <td></td>    
                                        <td><%= producto.getId()%></td>

                                        <td><%= producto.getNombre()%></td> 

                                        <td><%= a.getCantidad()%></td>

                                        <td>$ <%= Math.round(producto.getPrecio() * a.getCantidad() * 100.0) / 100.0%></td> 

                                        <td>
                                            <form action="borraritem" method="post">
                                                <input type="hidden" id="idarticulo" name="idproducto" value="<%= producto.getId()%>">
                                                <button type="submit" class="main-btn" id="deleteitem">Eliminar</button>
                                            </form>
                                        </td>

                                    </tr>

                                    <%
                                            }
                                        }
                                    %>
                                </table>
                                <br>
                                <br>
                                <br>


                                <table style="width:80%">

                                    <tr>
                                        <td></td> 

                                        <td></td>

                                        <td>Sub Total</td>

                                        <td>$ <%= Math.round(total * 100.0) / 100.0%></td>

                                        <td></td>

                                        <td> </td>

                                    </tr>

                                    <tr>
                                        <td></td>   

                                        <td></td>

                                        <td>TOTAL</td> 

                                        <td>$ <%= Math.round(total * 100.0) / 100.0%></td>

                                        <td></td> 

                                        <td>

                                        </td>

                                    </tr>

                                </table>
                                <form class="contact-form" method="post" action="insertpedido.jsp">
                                    <input type="text" name="cliente" class="input" placeholder="Nombre" maxlength="50" required>
                                    <%
                                        int i = 0;
                                        for (Articulo a : articulos) {
                                            producto producto = cp.getProducto(a.getIdProducto());
                                            total += a.getCantidad() * producto.getPrecio();
                                            i++;
                                    %> 

                                    <input type="hidden" name="cantidad<%=i%>" value="<%= a.getCantidad()%>" class="input" placeholder="Cantidad" maxlength="50" required>
                                    <input type="hidden" name="idProducto<%=i%>" value="<%= a.getIdProducto()%>" class="input" placeholder="idProducto" maxlength="50" required>
                                    <% }

                                    %>
                                    <input type="hidden" name="veces" value="<%=i%>" class="input" placeholder="Cantidad" maxlength="50" required>
                                    <button type="submit" class="main-btn"  id="pagar">Pagar</button>
                                </form>

                            </div>
                        </div>
                    </div>

                    <a href="mostrarproductos.jsp" class="main-btn" >Seguir comprando</a>

                </div>
            </div>
        </div>
        <script>

            //alert("Categoría del Producto Insertada" );
            //function myFunction() {

            //}



            //</script> 




        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='js/jquery/carrito.min.js'></script>

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



