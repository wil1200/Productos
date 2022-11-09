
package com.emergentes.modelo;


public class Producto {
    private int id;
    private String descripcion;
    private int cantidad;
    private Double precio;
    private String categoria;
    
    public Producto(){
    this.id=0;
    this.descripcion="";
    this.cantidad=0;
    this.precio=0.0;
    this.categoria="";
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }
    
    
}
