package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import conexiones.ConexionMySQL;

public final class mostraractualizar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       <head>\n");
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
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
      out.write("                        <h4>Actualizar Datos</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Fin tÃ­tulo-->\n");
      out.write(" <!-- Registrar Usuario -->\n");
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
      out.write("                                    <h3>Registrar Usuario</h3>\n");
      out.write("                                </div>\n");
      out.write("                                <!--/Nombre Producto-->\n");
      out.write("                                <div class=\"col-md-8 col-md-offset-2\">\n");
      out.write("                                    <form class=\"contact-form\" method=\"post\" action=\"insertuser.jsp\">\n");
      out.write("                                        Id Empleado <select class=\"input\" name=\"id Empleado\" rquerided>\n");
      out.write("                                            ");
 ConexionMySQL conexion = new ConexionMySQL();
                                                Connection conn = conexion.getConexion();
                                                Statement st;
                                                String sql = "SELECT IdUsuario FROM usuario";
                                                try {
                                                    st = conn.createStatement();
                                                    ResultSet rs = st.executeQuery(sql);
                                                    while (rs.next()) {
                                          
      out.write("   \n");
      out.write("                                           \n");
      out.write("                                            <option value=\"");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</option>;\n");
      out.write("                                            ");

                                             }
                                                } catch (SQLException ex) {
                                                    ex.printStackTrace();
                                                }
                                            
      out.write("\n");
      out.write("                                        </select><br>\n");
      out.write("                                        <input type=\"text\" name=\"nombres\" class=\"input\" placeholder=\"Nombres\" required>\n");
      out.write("                                        <input type=\"text\" name=\"apellidos\" class=\"input\" placeholder=\"Apellidos\" required>\n");
      out.write("                                        <input type=\"text\" name=\"dui\" class=\"input\" placeholder=\"DUI\" required>\n");
      out.write("                                        <input type=\"text\" name=\"nit\" class=\"input\" placeholder=\"NIT\" required>\n");
      out.write("                                        <input type=\"text\" name=\"tel1\" class=\"input\" placeholder=\"TelÃ©fono1\" required>\n");
      out.write("                                        <input type=\"text\" name=\"tel2\" class=\"input\" placeholder=\"TelÃ©fono2\" required>\n");
      out.write("                                        <textarea class=\"input\" name=\"direccion\" placeholder=\"DirecciÃ³n\" required></textarea>\n");
      out.write("                                        <input type=\"text\" name=\"usuario\" class=\"input\" placeholder=\"Usuario\" required>\n");
      out.write("                                        <input type=\"password\" name=\"contra\" class=\"input\" placeholder=\"ContraseÃ±a\" required>\n");
      out.write("                                        Categoría Empleado <select class=\"input\" name=\"categoria\" required>\n");
      out.write("                                            ");

                                                ConexionMySQL conexion1 = new ConexionMySQL();
                                                Connection conn1 = conexion1.getConexion();
                                                Statement st1;
                                                String sql1 = "SELECT * FROM catempleado";
                                                try {
                                                    st1 = conn1.createStatement();
                                                    ResultSet rs1 = st1.executeQuery(sql1);
                                                    while (rs1.next()) {
                                            
      out.write("\n");
      out.write("                                            <option value=\"");
      out.print(rs1.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>;\n");
      out.write("                                            ");

                                                    }
                                                } catch (SQLException ex) {
                                                    ex.printStackTrace();
                                                }
                                            
      out.write("\n");
      out.write("                                        </select><br>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        <input type=\"submit\" value=\"Actualizar Usuario\" class=\"main-btn\" name=\"registrar\"></br>\n");
      out.write("                                        </form>\n");
      out.write("                                        <!-- Fin al formulario insertar usuario -->\n");
      out.write("                                        \n");
      out.write("                                        <!-- Inicio de formulario eliminar usuario-->\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /contact form -->\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <!-- /Row -->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!-- /Container -->\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /Registrar Usuario -->\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
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
