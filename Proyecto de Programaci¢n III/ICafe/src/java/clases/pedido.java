/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author iCoffee
 */
public class pedido {
    
    private int id;
    private String fecha;
    private String hora;
    private int cantidad;
    private String cliente;
    private String nombre;
    private boolean estado;
    
     public pedido(){
    }
     
     public pedido(int id, String fecha, String hora, int cantidad, String cliente,String nombre, boolean estado) {
        this.id = id;
        this.fecha = fecha;
        this.hora = hora;
        this.cantidad = cantidad;
        this.cliente = cliente;
        this.nombre = nombre;
        this.estado = estado;
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    
    
}
