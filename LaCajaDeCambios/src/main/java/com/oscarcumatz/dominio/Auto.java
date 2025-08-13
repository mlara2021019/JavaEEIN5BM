
package com.oscarcumatz.dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="Auto")
public class Auto {
    
    @Id
    @Column (name="codigoAuto")
    private int codigoAuto;
    @Column
    private int codigoCliente;
    @Column
    private String placa;
    @Column
    private String marca;
    @Column
    private String modelo;
    @Column
    private String color;
    
    public Auto(){
        
    }

    public int getCodigoAuto() {
        return codigoAuto;
    }

    public void setCodigoAuto(int codigoAuto) {
        this.codigoAuto = codigoAuto;
    }

    public int getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(int codigoCliente) {
        this.codigoCliente = codigoCliente;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return "Auto{" + "codigoAuto=" + codigoAuto + ", codigoCliente=" + codigoCliente + ", placa=" + placa + ", marca=" + marca + ", modelo=" + modelo + ", color=" + color + '}';
    }
    
}
