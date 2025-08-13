package com.oscarcumatz.dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Repuesto")
public class Repuesto {

    @Id
    @Column(name = "codigoRepuesto")
    private int codigoRepuesto;

    @Column(name = "nombreRepuesto")
    private String nombreRepuesto;

    @Column(name = "descripcionRepuesto")
    private String descripcionRepuesto;

    @Column(name = "precioRepuesto")
    private double precioRepuesto;

    @Column(name = "stockRepuesto")
    private int stockRepuesto;

    @Enumerated(EnumType.STRING)
    @Column(name = "estadoRepuesto")
    private EstadoRepuesto estadoRepuesto;

    public Repuesto() {
    }

    
    public enum EstadoRepuesto {
        NUEVO, USADO, DAÑADO;
    }

    
    public int getCodigoRepuesto() {
        return codigoRepuesto;
    }

    public void setCodigoRepuesto(int codigoRepuesto) {
        this.codigoRepuesto = codigoRepuesto;
    }

    public String getNombreRepuesto() {
        return nombreRepuesto;
    }

    public void setNombreRepuesto(String nombreRepuesto) {
        this.nombreRepuesto = nombreRepuesto;
    }

    public String getDescripcionRepuesto() {
        return descripcionRepuesto;
    }

    public void setDescripcionRepuesto(String descripcionRepuesto) {
        this.descripcionRepuesto = descripcionRepuesto;
    }

    public double getPrecioRepuesto() {
        return precioRepuesto;
    }

    public void setPrecioRepuesto(double precioRepuesto) {
        if (precioRepuesto < 0) {
            throw new IllegalArgumentException("El precio no puede ser negativo");
        }
        this.precioRepuesto = precioRepuesto;
    }

    public int getStockRepuesto() {
        return stockRepuesto;
    }

    public void setStockRepuesto(int stockRepuesto) {
        if (stockRepuesto < 0) {
            throw new IllegalArgumentException("El stock no puede ser negativo");
        }
        this.stockRepuesto = stockRepuesto;
    }

    public EstadoRepuesto getEstadoRepuesto() {
        return estadoRepuesto;
    }

    public void setEstadoRepuesto(EstadoRepuesto estadoRepuesto) {
        this.estadoRepuesto = estadoRepuesto;
    }

    @Override
    public String toString() {
        return "Repuesto{" +
                "codigoRepuesto=" + codigoRepuesto +
                ", nombreRepuesto='" + nombreRepuesto + '\'' +
                ", descripcionRepuesto='" + descripcionRepuesto + '\'' +
                ", precioRepuesto=" + precioRepuesto +
                ", stockRepuesto=" + stockRepuesto +
                ", estadoRepuesto=" + estadoRepuesto +
                '}';
    }
}
