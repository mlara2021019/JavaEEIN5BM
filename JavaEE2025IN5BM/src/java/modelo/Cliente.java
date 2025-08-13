package modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Cliente")
public class Cliente {
    
    @Id
    @Column(name="codigoCliente")
    private int codigoCliente;
    @Column
    private String nombreCliente;
    @Column
    private String telefonoCliente;
    @Column
    private String correoCliente;
    @Column
    private String direccion;
    @Column
    private String contrasena;
    
    public Cliente(){
    }

    public Cliente(int codigoCliente, String nombreCliente, String telefonoCliente, String correoCliente, String direccion, String contrasena) {
        this.codigoCliente = codigoCliente;
        this.nombreCliente = nombreCliente;
        this.telefonoCliente = telefonoCliente;
        this.correoCliente = correoCliente;
        this.direccion = direccion;
        this.contrasena = contrasena;
    }
    

    public int getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(int codigoCliente) {
        this.codigoCliente = codigoCliente;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    public void setTelefonoCliente(String telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }

    public String getCorreoCliente() {
        return correoCliente;
    }

    public void setCorreoCliente(String correoCliente) {
        this.correoCliente = correoCliente;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    @Override
    public String toString() {
        return "Cliente{" + 
            "codigoCliente=" + codigoCliente + 
            ", nombreCliente=" + nombreCliente + 
            ", telefonoCliente=" + telefonoCliente + 
            ", correoCliente=" + correoCliente + 
            ", direccion=" + direccion +
            ", contrasena=" + contrasena + 
            '}';
    }
}
