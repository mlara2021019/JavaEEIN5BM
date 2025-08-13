package com.oscarcumatz.dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "OrdenReparacion")
public class OrdenReparacion {
    @Id
    @Column(name = "codigoOrdenReparacion")
    private int codigoOrdenReparacion;
    @Column
    private int codigoAutoReparacion;
    @Column
    private int codigoClienteReparacion;
    @Column
    private int codigoEmpleadoReparacion;
    @Column
    private int codigoReparacion;
    @Column
    private String fechaIngresoReparacion;
    @Enumerated(EnumType.STRING)
    @Column(name = "estadoReparacion")
    private Estado estadoReparacion;

    public enum Estado {
        Pendiente, En_proceso, Finalizado
    }

    public OrdenReparacion() {
        
    }

    public OrdenReparacion(int codigoOrdenReparacion, int codigoAutoReparacion, int codigoClienteReparacion, int codigoEmpleadoReparacion, int codigoReparacion, String fechaIngresoReparacion, Estado estadoReparacion) {
        this.codigoOrdenReparacion = codigoOrdenReparacion;
        this.codigoAutoReparacion = codigoAutoReparacion;
        this.codigoClienteReparacion = codigoClienteReparacion;
        this.codigoEmpleadoReparacion = codigoEmpleadoReparacion;
        this.codigoReparacion = codigoReparacion;
        this.fechaIngresoReparacion = fechaIngresoReparacion;
        this.estadoReparacion = estadoReparacion;
    }

    public int getCodigoOrdenReparacion() {
        return codigoOrdenReparacion;
    }

    public void setCodigoOrdenReparacion(int codigoOrdenReparacion) {
        this.codigoOrdenReparacion = codigoOrdenReparacion;
    }

    public int getCodigoAutoReparacion() {
        return codigoAutoReparacion;
    }

    public void setCodigoAutoReparacion(int codigoAutoReparacion) {
        this.codigoAutoReparacion = codigoAutoReparacion;
    }

    public int getCodigoClienteReparacion() {
        return codigoClienteReparacion;
    }

    public void setCodigoClienteReparacion(int codigoClienteReparacion) {
        this.codigoClienteReparacion = codigoClienteReparacion;
    }

    public int getCodigoEmpleadoReparacion() {
        return codigoEmpleadoReparacion;
    }

    public void setCodigoEmpleadoReparacion(int codigoEmpleadoReparacion) {
        this.codigoEmpleadoReparacion = codigoEmpleadoReparacion;
    }

    public int getCodigoReparacion() {
        return codigoReparacion;
    }

    public void setCodigoReparacion(int codigoReparacion) {
        this.codigoReparacion = codigoReparacion;
    }

    public String getFechaIngresoReparacion() {
        return fechaIngresoReparacion;
    }

    public void setFechaIngresoReparacion(String fechaIngresoReparacion) {
        this.fechaIngresoReparacion = fechaIngresoReparacion;
    }

    public Estado getEstadoReparacion() {
        return estadoReparacion;
    }

    public void setEstadoReparacion(Estado estadoReparacion) {
        this.estadoReparacion = estadoReparacion;
    }

    @Override
    public String toString() {
        return "OrdenReparacion{" + "codigoOrdenReparacion=" + codigoOrdenReparacion + ", codigoAutoReparacion=" + codigoAutoReparacion + ", codigoClienteReparacion=" + codigoClienteReparacion + ", codigoEmpleadoReparacion=" + codigoEmpleadoReparacion + ", codigoReparacion=" + codigoReparacion + ", fechaIngresoReparacion=" + fechaIngresoReparacion + ", estadoReparacion=" + estadoReparacion + '}';
    }
}
