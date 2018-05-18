/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import clases.pedido;
import models.ModeloPedido;

/**
 *
 * @author iCoffee
 */
public class ControladorPedido {
    
    public String getPedidos(){
        ModeloPedido md = new ModeloPedido();
        String htmlcode = "";
        for (pedido pedido : md.getAllPedidos()) {
            htmlcode += "<div class=\"col-md-4\">\n"
                    + "                        <div class=\"about\">\n"
                    + "                            <i class=\"fa fa-coffee\"></i>\n"
                    + "                            <h3>" + pedido.getCliente() + "</h3>\n"
                    + "                            <p>" + pedido.getCantidad()  + "</p>\n"
                    + "                            <p>Producto: " + pedido.getNombre() + "</p>\n"
                    + "<form class=\"contact-form\" method=\"post\" action=\"actualizar.jsp\">"
                    + "<input type=\"hidden\" value=\"6\" name=\"actualizar\">"        
                    + "<input type=\"hidden\" value=\""+ pedido.getId() +"\" name=\"idpedido\">"
                    + "<input type=\"submit\" value=\"Entregado\" class=\"main-btn\" name=\"modupedido\">"
                    + "</form>"
                    + "                        </div>\n"
                    + "                    </div>";
        }

        return htmlcode;
    }
    public pedido getPedido(int id){
       return new ModeloPedido().getPedido(id);
   }
    
}
