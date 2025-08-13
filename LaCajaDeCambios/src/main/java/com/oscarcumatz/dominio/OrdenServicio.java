package com.oscarcumatz.dominio;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="OrdenServicio")
public class OrdenServicio {
    
    @Id
    @Column(name = "codigoOrdenServicio")
    private int codigoOrdenServicio;
    @Column
    private int codigoAuto;
    @Column
    private int codigoCliente;
    @Column
    private int codigoEmpleado;
    @Column
    private int codigoServicio;
    @Column
    private Date fechaIngreso;
    @Enumerated(EnumType.STRING)
    @Column(name = "estado")
    private EstadoOrden estado;

    
    public enum EstadoOrden {
        Pendiente, EnProceso, Finalizado
    }
    
    public OrdenServicio() {
    }

    public OrdenServicio(int codigoOrdenServicio, int codigoAuto, int codigoCliente, int codigoEmpleado, int codigoServicio, Date fechaIngreso, EstadoOrden estado) {
        this.codigoOrdenServicio = codigoOrdenServicio;
        this.codigoAuto = codigoAuto;
        this.codigoCliente = codigoCliente;
        this.codigoEmpleado = codigoEmpleado;
        this.codigoServicio = codigoServicio;
        this.fechaIngreso = fechaIngreso;
        this.estado = estado;
    }

    public void setCodigoOrdenServicio(int codigoOrdenServicio) {
        this.codigoOrdenServicio = codigoOrdenServicio;
    }

    public void setCodigoAuto(int codigoAuto) {
        this.codigoAuto = codigoAuto;
    }

    public void setCodigoCliente(int codigoCliente) {
        this.codigoCliente = codigoCliente;
    }

    public void setCodigoEmpleado(int codigoEmpleado) {
        this.codigoEmpleado = codigoEmpleado;
    }

    public void setCodigoServicio(int codigoServicio) {
        this.codigoServicio = codigoServicio;
    }

    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public void setEstado(EstadoOrden estado) {
        this.estado = estado;
    }

    public int getCodigoOrdenServicio() {
        return codigoOrdenServicio;
    }

    public int getCodigoAuto() {
        return codigoAuto;
    }

    public int getCodigoCliente() {
        return codigoCliente;
    }

    public int getCodigoEmpleado() {
        return codigoEmpleado;
    }

    public int getCodigoServicio() {
        return codigoServicio;
    }

    public Date getFechaIngreso() {
        return fechaIngreso;
    }

    public EstadoOrden getEstado() {
        return estado;
    }

    @Override
    public String toString() {
        return "OrdenServicio{" + "codigoOrdenServicio=" + codigoOrdenServicio + ", codigoAuto=" + codigoAuto + ", codigoCliente=" + codigoCliente + ", codigoEmpleado=" + codigoEmpleado + ", codigoServicio=" + codigoServicio + ", fechaIngreso=" + fechaIngreso + ", estado=" + estado + '}';
    }
    
}
