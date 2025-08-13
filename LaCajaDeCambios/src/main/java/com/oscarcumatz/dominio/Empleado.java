package com.oscarcumatz.dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Empleado")
public class Empleado {

    @Id
    @Column(name = "codigoEmpleado")
    private int codigoEmpleado;

    @Column
    private String nombreEmpleado;

    @Column
    private String telefonoEmpleado;

    @Column
    private String correoEmpleado;

    @Column
    private String direccion;

    @Enumerated(EnumType.STRING)
    @Column(name = "puesto")
    private puesto puesto;

    public enum puesto {
        Recepcionista, Mecanico
    }

    public Empleado() {
    }

    public int getCodigoEmpleado() {
        return codigoEmpleado;
    }

    public void setCodigoEmpleado(int codigoEmpleado) {
        this.codigoEmpleado = codigoEmpleado;
    }

    public String getNombreEmpleado() {
        return nombreEmpleado;
    }

    public void setNombreEmpleado(String nombreEmpleado) {
        this.nombreEmpleado = nombreEmpleado;
    }

    public String getTelefonoEmpleado() {
        return telefonoEmpleado;
    }

    public void setTelefonoEmpleado(String telefonoEmpleado) {
        this.telefonoEmpleado = telefonoEmpleado;
    }

    public String getCorreoEmpleado() {
        return correoEmpleado;
    }

    public void setCorreoEmpleado(String correoEmpleado) {
        this.correoEmpleado = correoEmpleado;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public puesto getPuesto() {
        return puesto;
    }

    public void setPuesto(puesto puesto) {
        this.puesto = puesto;
    }

    @Override
    public String toString() {
        return "Empleado{" +
                "codigoEmpleado=" + codigoEmpleado +
                ", nombreEmpleado='" + nombreEmpleado + '\'' +
                ", telefonoEmpleado='" + telefonoEmpleado + '\'' +
                ", correoEmpleado='" + correoEmpleado + '\'' +
                ", direccion='" + direccion + '\'' +
                ", puesto=" + puesto +
                '}';
    }
}
