package com.oscarcumatz.dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Reparacion")
public class Reparacion {
    @Id
    @Column (name="codigoReparacion")
    private int codigoReparacion;
    @Column
    private String nombreReparacion;
    @Column
    private String descripcionReparacion;
    @Column
    private double precioReparacion;

    public Reparacion() {
    }

    public Reparacion(int codigoReparacion, String nombreReparacion, String descripcionReparacion, double precioReparacion) {
        this.codigoReparacion = codigoReparacion;
        this.nombreReparacion = nombreReparacion;
        this.descripcionReparacion = descripcionReparacion;
        this.precioReparacion = precioReparacion;
    }

    public int getCodigoReparacion() {
        return codigoReparacion;
    }

    public void setCodigoReparacion(int codigoReparacion) {
        this.codigoReparacion = codigoReparacion;
    }

    public String getNombreReparacion() {
        return nombreReparacion;
    }

    public void setNombreReparacion(String nombreReparacion) {
        this.nombreReparacion = nombreReparacion;
    }

    public String getDescripcionReparacion() {
        return descripcionReparacion;
    }

    public void setDescripcionReparacion(String descripcionReparacion) {
        this.descripcionReparacion = descripcionReparacion;
    }

    public double getPrecioReparacion() {
        return precioReparacion;
    }

    public void setPrecioReparacion(double precioReparacion) {
        this.precioReparacion = precioReparacion;
    }

    @Override
    public String toString() {
        return "Reparacion{" + "codigoReparacion=" + codigoReparacion + ", nombreReparacion=" + nombreReparacion + ", descripcionReparacion=" + descripcionReparacion + ", precioReparacion=" + precioReparacion + '}';
    }
}