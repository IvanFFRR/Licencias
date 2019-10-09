/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author alumno
 */
public class Venta {
    private int id;
    private String desde;
    private String hasta;
    private Cliente cliente;
    private int cantidad;
    private int mes;
    private int anio;

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDesde() {
        return desde;
    }

    public void setDesde(String desde) {
        this.desde = desde;
    }

    public String getHasta() {
        return hasta;
    }

    public void setHasta(String hasta) {
        this.hasta = hasta;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int mes) {
        this.mes = mes;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public Venta(int id, String desde, String hasta, Cliente cliente, int cantidad, int mes, int anio) {
        this.id = id;
        this.desde = desde;
        this.hasta = hasta;
        this.cliente = cliente;
        this.cantidad = cantidad;
        this.mes = mes;
        this.anio = anio;
    }
    
    public Venta() {
        this.id = 0;
        this.desde = "";
        this.hasta = "";
        this.cliente = null;
        this.cantidad = 0;
        this.mes = 0;
        this.anio = 0;
    }

    @Override
    public String toString() {
       return String.format("%s (Desde %s hasta %s) x%d. %d/%d", cliente.getNombre(), desde, hasta, cantidad, mes, anio);
    }
    
    
}
