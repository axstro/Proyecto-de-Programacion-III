/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;
import clases.producto;
import conexiones.ConexionMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author iCoffee
 */
public class ModeloProducto extends ConexionMySQL {
    
    public ArrayList<producto> getAllProductos(){
      ArrayList<producto> productos = new ArrayList<>();
      PreparedStatement pst = null;
      ResultSet rs = null;
      
      try {
          String sql = "call selectProductos()";
          pst = getConexion().prepareCall(sql);
          rs = pst.executeQuery();
          while (rs.next()){
           productos.add(new producto (rs.getInt("idProducto"), rs.getString("nombre"), rs.getString("descripcion"), rs.getDouble("precio"), rs.getInt("cantidad"), rs.getInt("catproducto_idcatproducto"), rs.getString("tipo")));
           
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
      
      return productos;
    }
    
    public producto getProducto(int id){
      producto producto = null;
      PreparedStatement pst = null;
      ResultSet rs = null;
      
      try {
          String sql = "call selectProducto(?)";
          pst = getConexion().prepareCall(sql);
          pst.setInt(1, id);
          rs = pst.executeQuery();
          while (rs.next()){
        producto = new producto(rs.getInt("idProducto"), rs.getString("nombre"), rs.getString("descripcion"), rs.getDouble("precio"), rs.getInt("cantidad"), rs.getInt("catproducto_idcatproducto"), rs.getString("tipo"));
    
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
      
      return producto;
      
    }
    
  
           
    
   
    
}
