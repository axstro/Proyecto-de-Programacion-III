/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import clases.producto;
import models.ModeloProducto;

/**
 *
 * @author iCoffee
 */
public class ControladorProducto {

    
    public String getProductos() {
        ModeloProducto mp = new ModeloProducto();
        String htmlcode = "";
        for (producto producto : mp.getAllProductos()) {
            htmlcode += "<div class=\"col-md-4\">\n"
                    + "                        <div class=\"about\">\n"
                    + "                            <i class=\"fa fa-coffee\"></i>\n"
                    + "                            <h3>" + producto.getNombre() + "</h3>\n"
                    + "                            <p>" + producto.getDescripcion() + "</p>\n"
                    + "                            <p>Precio: $" + producto.getPrecio() + "</p>\n"
                    + "                            <p>Cantidad: " + producto.getCantidad() + "</p>\n"
                    + "                            <p>Categoría: " + producto.getCategoria() + "</p>\n"
                    + "                            <p>Tipo: " + producto.getTipo() + "</p>\n"
                    + "<form action=\"agregarproducto\" method=\"post\">"
                    + "<input type=\"hidden\" value=\""+ producto.getId() +"\" name=\"idproducto\">"
                    + "<input type=\"number\" value=\"1\" id=\"txt-cantidad\" name=\"cantidad\" min=\"1\" max=\""+producto.getCantidad()+"\" required><br><br>"
                    + "<button class=\"main-btn\" type=\"submit\">Comprar</button>\n"
                    + "</form>"
                    + "                        </div>\n"
                    + "                    </div>";
        }

        return htmlcode;
    }
    public producto getProducto(int id){
       return new ModeloProducto().getProducto(id);
   }
}

/*htmlcode += "<li class=\"catCardList\">\n" +
"<div class=\"catCard\"><a href=\"#\"><img src=\"http://placehold.it/221x200\" alt=\"\"></a>\n" +
"<div class=\"lowerCatCard\">\n" +
"<h3>"+producto.getNombre()+"</h3>\n" +
"<div class=\"startingPrice\">Prices Starting At <span>$"+producto.getPrecio()+"</span></div>\n" +
"<p>"+producto.getDescripcion()+"</p>\n" +
"<h4>Best Used For:</h4>\n" +
"<ul>\n" +
"<li>"+producto.getCantidad()+"</li>\n" +
"<li>"+producto.getCategoria()+"</li>\n" +
"</ul>\n" +
"<div id=\"catCardButton\" class=\"button\"><a href=\"#\">View Product</a></div>\n" +
"</div>\n" +
"</div>\n" +
"</li>";*/
