package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import conexiones.ConexionMySQL;

public final class vistapedidos_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html;\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n");
      out.write("\r\n");
      out.write("        <title>iCafe - Estado de Pedidos</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Google font -->\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap -->\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- Owl Carousel -->\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/owl.carousel.css\" />\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/owl.theme.default.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- Magnific Popup -->\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/magnific-popup.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- Font Awesome Icon -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom stlylesheet -->\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/style.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("        <!--[if lt IE 9]>\r\n");
      out.write("                <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\r\n");
      out.write("                <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("        <![endif]-->\r\n");
      out.write("    </head>\r\n");
      out.write("    <!-- Header -->\r\n");
      out.write("    <body>\r\n");
      out.write("        <header id=\"home\">\r\n");
      out.write("            <!-- Background Image -->\r\n");
      out.write("            <div class=\"bg-img\" style=\"background-image: url('./img/modificar_icafe.jpg');\">\r\n");
      out.write("                <div class=\"overlay\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /Background Image -->\r\n");
      out.write("\r\n");
      out.write("            <!-- Nav -->\r\n");
      out.write("            <nav id=\"nav\" class=\"navbar nav-transparent\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"navbar-header\">\r\n");
      out.write("                        <!-- Logo -->\r\n");
      out.write("                        <div class=\"navbar-brand\">\r\n");
      out.write("                            <a href=\"administracion.jsp\">\r\n");
      out.write("                                <img class=\"logo\" src=\"img/logo_icafe.png\" alt=\"logo\">\r\n");
      out.write("                                <img class=\"logo-alt\" src=\"img/logo_icafe_alt.png\" alt=\"logo\">\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- /Logo -->\r\n");
      out.write("\r\n");
      out.write("                        <!-- Collapse nav button -->\r\n");
      out.write("                        <div class=\"nav-collapse\">\r\n");
      out.write("                            <span></span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- /Collapse nav button -->\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!--  Main navigation  -->\r\n");
      out.write("                    <ul class=\"main-nav nav navbar-nav navbar-right\">\r\n");
      out.write("                        <li><a href=\"logout.jsp\">Cerrar Sesión</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <!-- /Main navigation -->\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("            <!-- home wrapper -->\r\n");
      out.write("            <div class=\"home-wrapper\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("                        <!-- home content -->\r\n");
      out.write("                        <div class=\"col-md-10 col-md-offset-1\">\r\n");
      out.write("                            <div class=\"home-content\">\r\n");
      out.write("                                <h1 class=\"white-text\">Modificación de iCAFE</h1>\r\n");
      out.write("                                <p class=\"white-text\">¡Bienvenid@s a la sección de modificación de iCAFE! En esta sección usted podrá modificar los datos.\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <button class=\"main-btn\" OnClick=\"location.href = 'logout.jsp'\">Cerrar Sesión</button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        </header>    \r\n");
      out.write("\r\n");
      out.write("     </body>\r\n");
      out.write("</html>\r\n");
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
