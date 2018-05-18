/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import clases.pedido;
import conexiones.ConexionMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author luismenendez
 */
public class ModeloPedido extends ConexionMySQL {
    
     public ArrayList<pedido> getAllPedidos() {
      ArrayList<pedido> pedidos = new ArrayList<>();
      PreparedStatement pst = null;
      ResultSet rs = null;
      
      try {
          String sql = "call selectPedidos()";
          pst = getConexion().prepareCall(sql);
          rs = pst.executeQuery();
          while (rs.next()){
           pedidos.add(new pedido(rs.getInt("idPedido"), rs.getString("fecha"), rs.getString("hora"),  rs.getInt("cantidad"),rs.getString("cliente"),rs.getString("nombre"),rs.getBoolean("estado")));
          
          }
          
    } catch(SQLException e) {
      
    }
      finally {
      try {
      if (rs != null) rs.close();
      if (pst != null) pst.close();
      if (getConexion() != null) getConexion().close();
    } catch (SQLException e) {
      
    }
    }
      
      return pedidos; 
      
    }
    
     public pedido getPedido(int id){
      pedido pedido = null;
      PreparedStatement pst = null;
      ResultSet rs = null;
      
      try {
          String sql = "call selectPedido(?)";
          pst = getConexion().prepareCall(sql);
          pst.setInt(1, id);
          rs = pst.executeQuery();
          while (rs.next()){
        pedido = new pedido(rs.getInt("idPedido"), rs.getString("fecha"), rs.getString("hora"),  rs.getInt("cantidad"),rs.getString("cliente"),rs.getString("nombre"),rs.getBoolean("estado"));
          
    }
           
    } catch(SQLException e) {
      
    }
      finally {
      try {
      if (rs != null) rs.close();
      if (pst != null) pst.close();
      if (getConexion() != null) getConexion().close();
    } catch (SQLException e) {
    }
    }
      
      return pedido;
      
    }
}
