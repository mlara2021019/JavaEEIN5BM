
package com.oscarcumatz.dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Accesorios")
public class Accesorios {

    @Id
    @Column(name = "codigoAccesorio")
    private int codigoAccesorio;
    @Column
    private String nombreAccesorio;
    @Column
    private String descripcionAccesorio;
    @Column
    private double precioAccesorio;
    @Column
    private int stockAccesorio;
    @Enumerated(EnumType.STRING)
    @Column(name = "estadoAccesorio")
    private EstadoAccesorio estadoAccesorio;

    public enum EstadoAccesorio {
        Disponible, Agotado
    }

    public Accesorios() {
    }

    public int getCodigoAccesorio() {
        return codigoAccesorio;
    }

    public void setCodigoAccesorio(int codigoAccesorio) {
        this.codigoAccesorio = codigoAccesorio;
    }

    public String getNombreAccesorio() {
        return nombreAccesorio;
    }

    public void setNombreAccesorio(String nombreAccesorio) {
        this.nombreAccesorio = nombreAccesorio;
    }

    public String getDescripcionAccesorio() {
        return descripcionAccesorio;
    }

    public void setDescripcionAccesorio(String descripcionAccesorio) {
        this.descripcionAccesorio = descripcionAccesorio;
    }

    public double getPrecioAccesorio() {
        return precioAccesorio;
    }

    public void setPrecioAccesorio(double precioAccesorio) {
        this.precioAccesorio = precioAccesorio;
    }

    public int getStockAccesorio() {
        return stockAccesorio;
    }

    public void setStockAccesorio(int stockAccesorio) {
        this.stockAccesorio = stockAccesorio;
    }

    public EstadoAccesorio getEstadoAccesorio() {
        return estadoAccesorio;
    }

    public void setEstadoAccesorio(EstadoAccesorio estadoAccesorio) {
        this.estadoAccesorio = estadoAccesorio;
    }

    @Override
    public String toString() {
        return "Accesorios{" + "codigoAccesorio=" + codigoAccesorio + ", nombreAccesorio=" + nombreAccesorio + ", descripcionAccesorio=" + descripcionAccesorio + ", precioAccesorio=" + precioAccesorio + ", stockAccesorio=" + stockAccesorio + ", estadoAccesorio=" + estadoAccesorio + '}';
    }
   
       
    }



