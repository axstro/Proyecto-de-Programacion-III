package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import clases.producto;
import controllers.ControladorProducto;
import clases.Articulo;
import java.util.ArrayList;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("\n");

    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");


      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>CARRITO</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body style=\"background-color:white;\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <table style=\"width:80%\">\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td></td> \n");
      out.write("\n");
      out.write("            <td>ID</td>\n");
      out.write("\n");
      out.write("            <td>NOMBRE</td>\n");
      out.write("\n");
      out.write("            <td> CANTIDAD</td>\n");
      out.write("\n");
      out.write("            <td>TOTAL</td>\n");
      out.write("\n");
      out.write("            <td> </td>\n");
      out.write("\n");
      out.write("        </tr>\n");
      out.write("        ");
     controllers.ControladorProducto cp = new ControladorProducto();
            double total = 0;
            if (articulos != null) {
                for (Articulo a : articulos) {
                    producto producto = cp.getProducto(a.getIdProducto());
                    total += a.getCantidad() * producto.getPrecio();

        
      out.write(" \n");
      out.write("        <tr>\n");
      out.write("            <td></td>    \n");
      out.write("            <td>");
      out.print( producto.getId());
      out.write("</td>\n");
      out.write("\n");
      out.write("            <td>");
      out.print( producto.getNombre());
      out.write("</td> \n");
      out.write("\n");
      out.write("            <td>");
      out.print( a.getCantidad());
      out.write("</td>\n");
      out.write("\n");
      out.write("            <td>$ ");
      out.print( Math.round(producto.getPrecio() * a.getCantidad() * 100.0) / 100.0);
      out.write("</td> \n");
      out.write("\n");
      out.write("            <td>\n");
      out.write("                <form action=\"borraritem\" method=\"post\">\n");
      out.write("                    <input type=\"hidden\" id=\"idarticulo\" name=\"idproducto\" value=\"");
      out.print( producto.getId());
      out.write("\">\n");
      out.write("                    <button type=\"submit\" id=\"deleteitem\">Eliminar</button>\n");
      out.write("                </form>\n");
      out.write("            </td>\n");
      out.write("\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        ");

                }
            }
        
      out.write("\n");
      out.write("    </table>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <table style=\"width:80%\">\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td></td> \n");
      out.write("\n");
      out.write("            <td></td>\n");
      out.write("\n");
      out.write("            <td>Sub Total</td>\n");
      out.write("\n");
      out.write("            <td>$ ");
      out.print( Math.round(total * 100.0) / 100.0);
      out.write("</td>\n");
      out.write("\n");
      out.write("            <td></td>\n");
      out.write("\n");
      out.write("            <td> </td>\n");
      out.write("\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td></td>   \n");
      out.write("\n");
      out.write("            <td></td>\n");
      out.write("\n");
      out.write("            <td>TOTAL</td> \n");
      out.write("\n");
      out.write("            <td>$ ");
      out.print( Math.round(total * 100.0) / 100.0);
      out.write("</td>\n");
      out.write("\n");
      out.write("            <td></td> \n");
      out.write("\n");
      out.write("            <td>\n");
      out.write("\n");
      out.write("            </td>\n");
      out.write("\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("    </table>\n");
      out.write("    <form class=\"contact-form\" method=\"post\" action=\"insertpedido.jsp\">\n");
      out.write("        <input type=\"text\" name=\"cliente\" class=\"input\" placeholder=\"Nombre\" maxlength=\"50\" required>\n");
      out.write("        ");

            int i=0;
            for (Articulo a : articulos) {
                producto producto = cp.getProducto(a.getIdProducto());
                total += a.getCantidad() * producto.getPrecio();
            i++;   
        
      out.write(" \n");
      out.write("\n");
      out.write("        <input type=\"hidden\" name=\"cantidad");
      out.print(i);
      out.write("\" value=\"");
      out.print( a.getCantidad());
      out.write("\" class=\"input\" placeholder=\"Cantidad\" maxlength=\"50\" required>\n");
      out.write("        <input type=\"hidden\" name=\"idProducto");
      out.print(i);
      out.write("\" value=\"");
      out.print( a.getIdProducto());
      out.write("\" class=\"input\" placeholder=\"idProducto\" maxlength=\"50\" required>\n");
      out.write("        ");
 }

        
      out.write("\n");
      out.write("        <input type=\"hidden\" name=\"veces\" value=\"");
      out.print(i);
      out.write("\" class=\"input\" placeholder=\"Cantidad\" maxlength=\"50\" required>\n");
      out.write("        <button type=\"submit\"  id=\"pagar\">Pagar</button>\n");
      out.write("    </form>\n");
      out.write("    <script>\n");
      out.write("\n");
      out.write("        //alert(\"Categoría del Producto Insertada\" );\n");
      out.write("        //function myFunction() {\n");
      out.write("\n");
      out.write("        //}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        //</script> \n");
      out.write("\n");
      out.write("\n");
      out.write("    <a href=\"mostrarproductos.jsp\">Seguir comprando</a>\n");
      out.write("\n");
      out.write("    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>\n");
      out.write("    <script src='js/jquery/carrito.min.js'></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
