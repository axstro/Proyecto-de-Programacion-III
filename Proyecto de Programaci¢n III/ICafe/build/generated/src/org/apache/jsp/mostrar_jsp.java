package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import conexiones.ConexionMySQL;

public final class mostrar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html;\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("\n");
      out.write("        <title>Administración iCoffee</title>\n");
      out.write("\n");
      out.write("        <!-- Google font -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\n");
      out.write("\n");
      out.write("        <!-- Owl Carousel -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/owl.carousel.css\" />\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/owl.theme.default.css\" />\n");
      out.write("\n");
      out.write("        <!-- Magnific Popup -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/magnific-popup.css\" />\n");
      out.write("\n");
      out.write("        <!-- Font Awesome Icon -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <!-- Custom stlylesheet -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/style.css\" />\n");
      out.write("\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("                <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("                <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav id=\"nav\" class=\"navbar\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <!-- Logo -->\n");
      out.write("                    <div class=\"navbar-brand\">\n");
      out.write("                        <a href=\"index.html\">\n");
      out.write("                            <img class=\"logo\" src=\"img/logo.png\" alt=\"logo\">\n");
      out.write("                            <img class=\"logo-alt\" src=\"img/logo-alt.png\" alt=\"logo\">\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /Logo -->\n");
      out.write("\n");
      out.write("                    <!-- Collapse nav button -->\n");
      out.write("                    <div class=\"nav-collapse\">\n");
      out.write("                        <span></span>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /Collapse nav button -->\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!--  Main navigation  -->\n");
      out.write("                <ul class=\"main-nav nav navbar-nav navbar-right\">\n");
      out.write("                    <li><a href=\"#usuario\">Usuario</a></li>\n");
      out.write("                    <li><a href=\"#producto\">Producto</a></li>\n");
      out.write("                    <li><a href=\"#opcionesvarias\">Varios</a></li>\n");
      out.write("                    <li><a href=\"administracion.jsp\">Registros</a></li>\n");
      out.write("                    <li><a href=\"logout.jsp\">Cerrar Sesión</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <!-- /Main navigation -->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <div id=\"service\" class=\"section md-padding\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <!-- TÃ­tulo--> \n");
      out.write("                    <div class=\"section-header text-center\">\n");
      out.write("                        <h2 class=\"title\">Administración de iCoffee</h2>\n");
      out.write("                        <h4>Mostrar</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Fin tÃ­tulo-->\n");
      out.write("\n");
      out.write("                    <!-- Registrar Usuario -->\n");
      out.write("                    <div id=\"usuario\" class=\"section md-padding bg-grey\">\n");
      out.write("\n");
      out.write("                        <!-- Container -->\n");
      out.write("                        <div class=\"container\">\n");
      out.write("\n");
      out.write("                            <!-- Row -->\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <!-- contact form -->\n");
      out.write("                                <!-- Nombre Producto-->\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <h3>Mostrar Usuarios</h3>\n");
      out.write("                                </div>\n");
      out.write("                                <!--/Nombre Producto-->\n");
      out.write("                                <div class=\"col-md-12\">\n");
      out.write("                                    <div class=\"table-responsive\">\n");
      out.write("                                        <table class=\"table\">\n");
      out.write("                                            <thead>\n");
      out.write("                                            <tbody>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <th scope=\"col\">ID</th>\n");
      out.write("                                                    <th scope=\"col\">Nombres</th>\n");
      out.write("                                                    <th scope=\"col\">Apellidos</th>\n");
      out.write("                                                    <th scope=\"col\">DUI</th>\n");
      out.write("                                                    <th scope=\"col\">NIT</th>\n");
      out.write("                                                    <th scope=\"col\">Tel1</th>\n");
      out.write("                                                    <th scope=\"col\">Tel2</th>\n");
      out.write("                                                    <th scope=\"col\">Direccion</th>\n");
      out.write("                                                    <th scope=\"col\">Usuario</th>\n");
      out.write("                                                    <th scope=\"col\">Contraseña</th>\n");
      out.write("                                                    <th scope=\"col\">Categoría Empleado</th>\n");
      out.write("                                                </tr>\n");
      out.write("                                                </thead>\n");
      out.write("                                                ");

                                                    ConexionMySQL conexion = new ConexionMySQL();
                                                    Connection conn = conexion.getConexion();
                                                    Statement st;
                                                    String sql = "SELECT * FROM usuario INNER JOIN catempleado ON usuario.catempleado_idcatempleado = catempleado.idcatempleado";
                                                    try {
                                                        st = conn.createStatement();
                                                        ResultSet rs = st.executeQuery(sql);
                                                        while (rs.next()) {
                                                
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(8));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(9));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(10));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString(13));
      out.write("</td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                ");

                                                        }
                                                    } catch (SQLException ex) {
                                                        ex.printStackTrace();
                                                    }
                                                
      out.write("\n");
      out.write("                                            </tbody>\n");
      out.write("                                        </table>\n");
      out.write("                                    </div>\n");
      out.write("                                    <form class=\"contact-form\" method=\"post\" action=\"eliminar.jsp\">\n");
      out.write("                                        <input type=\"hidden\" value=\"1\" name=\"num\">\n");
      out.write("                                        Id Usuario <select class=\"input\" name=\"IdUsuario\" required>\n");
      out.write("                                            ");

                                                sql = "SELECT idUsuario FROM usuario";
                                                try {
                                                    st = conn.createStatement();
                                                    ResultSet rs = st.executeQuery(sql);
                                                    while (rs.next()) {
                                            
      out.write("\n");
      out.write("                                            <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write("</option>;\n");
      out.write("                                            ");

                                                    }
                                                } catch (SQLException ex) {
                                                    ex.printStackTrace();
                                                }
                                            
      out.write("\n");
      out.write("                                        </select><br>\n");
      out.write("                                        <input type=\"submit\" value=\"Eliminar Usuario\" class=\"main-btn\" name=\"eliminar\">\n");
      out.write("                                    </form>\n");
      out.write("                                        <!-- Formulario Usado para elejir el id de lo que se actualizará-->\n");
      out.write("                                         <form class=\"contact-form\" method=\"post\" action=\"mostraractualizar.jsp\">\n");
      out.write("                                        \n");
      out.write("                                            <input type=\"hidden\" value=\"1\" name=\"x\">\n");
      out.write("                                            Id Usuario <select class=\"input\" name=\"id_usuario\" required>\n");
      out.write("                                                ");

                                                    String sql1 = "SELECT * FROM usuario";
                                                    try {
                                                        st = conn.createStatement();
                                                        ResultSet rs = st.executeQuery(sql1);
                                                        while (rs.next()) {
                                                
      out.write("\n");
      out.write("                                                <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getInt(1));
      out.write("</option>;\n");
      out.write("                                                ");

                                                        }
                                                    } catch (SQLException ex) {
                                                        ex.printStackTrace();
                                                    }
                                                
      out.write("\n");
      out.write("                                            </select><br>     \n");
      out.write("                                            <input type=\"submit\" value=\"Modificar Usuario\" class=\"main-btn\" name=\"modusuario\"></br>                      \n");
      out.write("                                    </form>\n");
      out.write("                                            <!-- Fin al formulario para seleccionar el id de lo que se actualizará-->\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- /contact form -->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!-- /Row -->\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /Container -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- /Registrar Usuario -->\n");
      out.write("\n");
      out.write("                <!-- Producto -->\n");
      out.write("                <div id=\"producto\" class=\"section md-padding\">\n");
      out.write("\n");
      out.write("                    <!-- Container -->\n");
      out.write("                    <div class=\"container\">\n");
      out.write("\n");
      out.write("                        <!-- Row -->\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <!-- contact form -->\n");
      out.write("                            <!-- Nombre Producto-->\n");
      out.write("                            <div class=\"text-center\">\n");
      out.write("                                <h3>Mostrar Productos</h3>\n");
      out.write("                            </div>\n");
      out.write("                            <!--/Nombre Producto-->\n");
      out.write("                            <div class=\"col-md-12\">\n");
      out.write("                                <div class=\"table-responsive\">\n");
      out.write("                                    <table class=\"table\">\n");
      out.write("                                        <thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th scope=\"col\">ID</th>\n");
      out.write("                                                <th scope=\"col\">Nombre</th>\n");
      out.write("                                                <th scope=\"col\">Descripción</th>\n");
      out.write("                                                <th scope=\"col\">Precio</th>\n");
      out.write("                                                <th scope=\"col\">Cantidad</th>\n");
      out.write("                                                <th scope=\"col\">Categoría Producto</th>\n");
      out.write("                                            </tr>\n");
      out.write("                                            </thead>\n");
      out.write("                                            ");

                                                sql = "SELECT * FROM producto INNER JOIN catproducto ON producto.catproducto_idcatproducto = catproducto.idcatproducto";
                                                try {
                                                    st = conn.createStatement();
                                                    ResultSet rs = st.executeQuery(sql);
                                                    while (rs.next()) {
                                            
      out.write("  \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                                                <td>$ ");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString(8));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");

                                                    }
                                                } catch (SQLException ex) {
                                                    ex.printStackTrace();
                                                }
                                            
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                                <form class=\"contact-form\" method=\"post\" action=\"eliminar.jsp\">\n");
      out.write("                                    <input type=\"hidden\" value=\"2\" name=\"num\">\n");
      out.write("                                    Id Producto <select class=\"input\" name=\"IdProducto\" required>\n");
      out.write("                                        ");

                                            sql = "SELECT idProducto FROM producto";
                                            try {
                                                st = conn.createStatement();
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                        
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write("</option>;\n");
      out.write("                                        ");

                                                }
                                            } catch (SQLException ex) {
                                                ex.printStackTrace();
                                            }
                                        
      out.write("\n");
      out.write("                                    </select><br>\n");
      out.write("                                    <input type=\"submit\" value=\"Eliminar Producto\" class=\"main-btn\" name=\"eliminar\">\n");
      out.write("                                </form>\n");
      out.write("                                    \n");
      out.write("                                    <!-- Formulario Usado para elejir el id de lo que se actualizará PRODUCTO-->\n");
      out.write("                                         <form class=\"contact-form\" method=\"post\" action=\"mostraractualizar.jsp\">\n");
      out.write("                                        \n");
      out.write("                                            <input type=\"hidden\" value=\"2\" name=\"x\">\n");
      out.write("                                            Id Producto <select class=\"input\" name=\"id_producto\" required>\n");
      out.write("                                                ");

                                                    String sql2 = "SELECT * FROM producto";
                                                    try {
                                                        st = conn.createStatement();
                                                        ResultSet rs = st.executeQuery(sql2);
                                                        while (rs.next()) {
                                                
      out.write("\n");
      out.write("                                                <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getInt(1));
      out.write("</option>;\n");
      out.write("                                                ");

                                                        }
                                                    } catch (SQLException ex) {
                                                        ex.printStackTrace();
                                                    }
                                                
      out.write("\n");
      out.write("                                            </select><br>     \n");
      out.write("                                            <input type=\"submit\" value=\"Modificar Producto\" class=\"main-btn\" name=\"modusuario\"></br>                      \n");
      out.write("                                    </form>\n");
      out.write("                                            <!-- Fin al formulario para seleccionar el id de lo que se actualizará-->\n");
      out.write("                                \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                            </div>\n");
      out.write("                            <!-- /contact form -->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!-- /Row -->\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /Container -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- /Producto -->\n");
      out.write("\n");
      out.write("                <!-- Opciones Varias -->\n");
      out.write("                <div id=\"opcionesvarias\" class=\"section md-padding\">\n");
      out.write("\n");
      out.write("                    <!-- ********-->\n");
      out.write("                    <!-- Pricing -->\n");
      out.write("                    <div id=\"pricing\" class=\"section md-padding\">\n");
      out.write("\n");
      out.write("                        <!-- Container -->\n");
      out.write("                        <div class=\"container\">\n");
      out.write("\n");
      out.write("                            <!-- Row -->\n");
      out.write("                            <div class=\"row\">\n");
      out.write("\n");
      out.write("                                <!-- Section header -->\n");
      out.write("                                <div class=\"section-header text-center\">\n");
      out.write("                                    <h2 class=\"title\">Opciones Varias</h2>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /Section header -->\n");
      out.write("\n");
      out.write("                                <!-- pricing -->\n");
      out.write("                                <div class=\"col-sm-4\">\n");
      out.write("                                    <div class=\"pricing\">\n");
      out.write("                                        <span class=\"price-title\">Mostrar Categoría de Empleado</span>\n");
      out.write("                                        <center>\n");
      out.write("                                            <div class=\"table-responsive\">\n");
      out.write("                                                <table class=\"table\">\n");
      out.write("                                                    <thead>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <th scope=\"col\">ID</th>\n");
      out.write("                                                            <th scope=\"col\">Nombre</th>\n");
      out.write("                                                            <th scope=\"col\">Descripción</th>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                    </thead>\n");
      out.write("                                                    <tbody>\n");
      out.write("                                                        ");

                                                            sql = "SELECT * FROM catempleado";
                                                            try {
                                                                st = conn.createStatement();
                                                                ResultSet rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                        
      out.write("  \n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                                                            <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                                                            <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        ");

                                                                }
                                                            } catch (SQLException ex) {
                                                                ex.printStackTrace();
                                                            }
                                                        
      out.write("\n");
      out.write("                                                    </tbody>\n");
      out.write("                                                </table>\n");
      out.write("                                            </div>\n");
      out.write("                                            <form class=\"contact-form\" method=\"post\" action=\"eliminar.jsp\">\n");
      out.write("                                                <input type=\"hidden\" value=\"3\" name=\"num\">\n");
      out.write("                                                Id Cat. Empleado <select class=\"input\" name=\"IdCatEmpleado\" required>\n");
      out.write("                                                    ");

                                                        sql = "SELECT idCatEmpleado FROM catempleado";
                                                        try {
                                                            st = conn.createStatement();
                                                            ResultSet rs = st.executeQuery(sql);
                                                            while (rs.next()) {
                                                    
      out.write("\n");
      out.write("                                                    <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write("</option>;\n");
      out.write("                                                    ");

                                                            }
                                                        } catch (SQLException ex) {
                                                            ex.printStackTrace();
                                                        }
                                                    
      out.write("\n");
      out.write("                                                </select><br>\n");
      out.write("                                                <input type=\"submit\" value=\"Eliminar Categoría\" class=\"main-btn\" name=\"eliminar\">\n");
      out.write("                                            </form>\n");
      out.write("                                                 <!-- Formulario Usado para elejir el id de lo que se actualizará CATEMPLEADO-->\n");
      out.write("                                         <form class=\"contact-form\" method=\"post\" action=\"mostraractualizar.jsp\">\n");
      out.write("                                        \n");
      out.write("                                            <input type=\"hidden\" value=\"3\" name=\"x\">\n");
      out.write("                                            Id Categoría <select class=\"input\" name=\"id_categoriaemp\" required>\n");
      out.write("                                                ");

                                                    sql = "SELECT * FROM catempleado";
                                                    try {
                                                        st = conn.createStatement();
                                                        ResultSet rs = st.executeQuery(sql);
                                                        while (rs.next()) {
                                                
      out.write("\n");
      out.write("                                                <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getInt(1));
      out.write("</option>;\n");
      out.write("                                                ");

                                                        }
                                                    } catch (SQLException ex) {
                                                        ex.printStackTrace();
                                                    }
                                                
      out.write("\n");
      out.write("                                            </select><br>     \n");
      out.write("                                            <input type=\"submit\" value=\"Modificar Cat. Empleado\" class=\"main-btn\" name=\"modusuario\"></br>                      \n");
      out.write("                                    </form>\n");
      out.write("                                            <!-- Fin al formulario para seleccionar el id de lo que se actualizará-->\n");
      out.write("                                \n");
      out.write("                                        </center>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /pricing -->\n");
      out.write("\n");
      out.write("                                <!-- pricing -->\n");
      out.write("                                <div class=\"col-sm-4\">\n");
      out.write("                                    <div class=\"pricing\">\n");
      out.write("                                        <span class=\"price-title\">Mostrar Descuentos</span>\n");
      out.write("                                        <center>\n");
      out.write("                                            <div class=\"table-responsive\">\n");
      out.write("                                                <table class=\"table\">\n");
      out.write("                                                    <thead>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <th scope=\"col\">ID</th>\n");
      out.write("                                                            <th scope=\"col\">Día</th>\n");
      out.write("                                                            <th scope=\"col\">Cantidad</th>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                    </thead>\n");
      out.write("                                                    <tbody>\n");
      out.write("                                                        ");

                                                            sql = "SELECT * FROM descuento";
                                                            try {
                                                                st = conn.createStatement();
                                                                ResultSet rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                        
      out.write("  \n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                                                            <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                                                            <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        ");

                                                                }
                                                            } catch (SQLException ex) {
                                                                ex.printStackTrace();
                                                            }
                                                        
      out.write("\n");
      out.write("                                                    </tbody>\n");
      out.write("                                                </table>\n");
      out.write("                                            </div>\n");
      out.write("                                            <form class=\"contact-form\" method=\"post\" action=\"eliminar.jsp\">\n");
      out.write("                                                <input type=\"hidden\" value=\"4\" name=\"num\">\n");
      out.write("                                                Id Descuento <select class=\"input\" name=\"IdDescuento\" required>\n");
      out.write("                                                    ");

                                                        sql = "SELECT idDescuento FROM descuento";
                                                        try {
                                                            st = conn.createStatement();
                                                            ResultSet rs = st.executeQuery(sql);
                                                            while (rs.next()) {
                                                    
      out.write("\n");
      out.write("                                                    <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write("</option>;\n");
      out.write("                                                    ");

                                                            }
                                                        } catch (SQLException ex) {
                                                            ex.printStackTrace();
                                                        }
                                                    
      out.write("\n");
      out.write("                                                </select><br>\n");
      out.write("                                                <input type=\"submit\" value=\"Eliminar Descuento\" class=\"main-btn\" name=\"eliminar\">\n");
      out.write("                                            </form>\n");
      out.write("                                                \n");
      out.write("                                                <!-- Formulario Usado para elejir el id de lo que se actualizará DESCUENTO-->\n");
      out.write("                                         <form class=\"contact-form\" method=\"post\" action=\"mostraractualizar.jsp\">\n");
      out.write("                                        \n");
      out.write("                                            <input type=\"hidden\" value=\"4\" name=\"x\">\n");
      out.write("                                            Id Descuento <select class=\"input\" name=\"id_desc\" required>\n");
      out.write("                                                ");

                                                    sql = "SELECT * FROM descuento";
                                                    try {
                                                        st = conn.createStatement();
                                                        ResultSet rs = st.executeQuery(sql);
                                                        while (rs.next()) {
                                                
      out.write("\n");
      out.write("                                                <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getInt(1));
      out.write("</option>;\n");
      out.write("                                                ");

                                                        }
                                                    } catch (SQLException ex) {
                                                        ex.printStackTrace();
                                                    }
                                                
      out.write("\n");
      out.write("                                            </select><br>     \n");
      out.write("                                            <input type=\"submit\" value=\"Modificar Descuento\" class=\"main-btn\" name=\"moddesc\"></br>                      \n");
      out.write("                                    </form>\n");
      out.write("                                            <!-- Fin al formulario para seleccionar el id de lo que se actualizará-->\n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                        </center>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /pricing -->\n");
      out.write("                                <!-- pricing -->\n");
      out.write("                                <div class=\"col-sm-4\">\n");
      out.write("                                    <div class=\"pricing\">\n");
      out.write("                                        <span class=\"price-title\">Mostrar Categoría de Producto </span>\n");
      out.write("                                        <center>\n");
      out.write("                                            <div class=\"table-responsive\">\n");
      out.write("                                                <table class=\"table\">\n");
      out.write("                                                    <thead>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <th scope=\"col\">ID</th>\n");
      out.write("                                                            <th scope=\"col\">Nombres</th>\n");
      out.write("                                                            <th scope=\"col\">Descripción</th>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                    </thead>\n");
      out.write("                                                    <tbody>\n");
      out.write("                                                        ");

                                                            sql = "SELECT * FROM catproducto";
                                                            try {
                                                                st = conn.createStatement();
                                                                ResultSet rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                        
      out.write("  \n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                                                            <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                                                            <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        ");

                                                                }
                                                            } catch (SQLException ex) {
                                                                ex.printStackTrace();
                                                            }
                                                        
      out.write("\n");
      out.write("                                                    </tbody>\n");
      out.write("                                                </table>\n");
      out.write("                                            </div>\n");
      out.write("                                            <form class=\"contact-form\" method=\"post\" action=\"eliminar.jsp\">\n");
      out.write("                                 \n");
      out.write("                                                <input type=\"hidden\" value=\"5\" name=\"num\">\n");
      out.write("                                                Id Cat. Producto <select class=\"input\" name=\"IdCatProducto\" required>\n");
      out.write("                                                    ");

                                                        sql = "SELECT idCatProducto FROM catproducto";
                                                        try {
                                                            st = conn.createStatement();
                                                            ResultSet rs = st.executeQuery(sql);
                                                            while (rs.next()) {
                                                    
      out.write("\n");
      out.write("                                                    <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write("</option>;\n");
      out.write("                                                    ");

                                                            }
                                                                conn.close();
                                                                st.close();
                                                        } catch (SQLException ex) {
                                                            ex.printStackTrace();
                                                        }
                                                    
      out.write("\n");
      out.write("                                                </select><br>\n");
      out.write("                                                <input type=\"submit\" value=\"Eliminar Categoría\" class=\"main-btn\" name=\"eliminar\">\n");
      out.write("                                            </form>   \n");
      out.write("                                        </center>\n");
      out.write("                                                \n");
      out.write("                                             \n");
      out.write("                                                \n");
      out.write("                                    </div>\n");
      out.write("                                                <!-- Formulario Usado para elejir el id de lo que se actualizará DESCUENTO-->\n");
      out.write("                                         <form class=\"contact-form\" method=\"post\" action=\"mostraractualizar.jsp\">\n");
      out.write("                                        \n");
      out.write("                                            <input type=\"hidden\" value=\"5\" name=\"x\">\n");
      out.write("                                            Id Cat. Prod <select class=\"input\" name=\"id_catprod\" required>\n");
      out.write("                                                ");

                                                    sql = "select * from catproducto";
                                                    try {
                                                        st = conn.createStatement();
                                                        ResultSet rs = st.executeQuery(sql);
                                                        while (rs.next()) {
                                                
      out.write("\n");
      out.write("                                                <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write("</option>;\n");
      out.write("                                                ");

                                                        }
                                                    } catch (SQLException ex) {
                                                        ex.printStackTrace();
                                                    }
                                                
      out.write("\n");
      out.write("                                            </select><br>     \n");
      out.write("                                            <input type=\"submit\" value=\"Modificar Cat. Producto\" class=\"main-btn\" name=\"moddesc\"></br>                      \n");
      out.write("                                    </form>\n");
      out.write("                                            <!-- Fin al formulario para seleccionar el id de lo que se actualizará-->\n");
      out.write("                                               \n");
      out.write("                                </div>\n");
      out.write("                                <!-- /pricing -->\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Row -->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!-- /Container -->\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- ********-->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- /Opciones Varias -->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
