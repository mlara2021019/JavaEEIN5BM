package com.oscarcumatz.dominio;

public class DetalleFactura {
    private int codigoDetalle;
    private int codigoFactura;
    private TipoGasto tipoGasto;
    private int codigoGasto;
    private int cantidad;
    
    public DetalleFactura(){        
    }
    /*Enum tipo gasto*/
    public enum TipoGasto{
        Servicio,Reparacion,Llanta,Repuesto,Accesorio
    }

    public DetalleFactura(int codigoDetalle, int codigoFactura, TipoGasto tipoGasto, int codigoGasto, int cantidad) {
        this.codigoDetalle = codigoDetalle;
        this.codigoFactura = codigoFactura;
        this.tipoGasto = tipoGasto;
        this.codigoGasto = codigoGasto;
        this.cantidad = cantidad;
    }

    public int getCodigoDetalle() {
        return codigoDetalle;
    }

    public void setCodigoDetalle(int codigoDetalle) {
        this.codigoDetalle = codigoDetalle;
    }

    public int getCodigoFactura() {
        return codigoFactura;
    }

    public void setCodigoFactura(int codigoFactura) {
        this.codigoFactura = codigoFactura;
    }

    public TipoGasto getTipoGasto() {
        return tipoGasto;
    }

    public void setTipoGasto(TipoGasto tipoGasto) {
        this.tipoGasto = tipoGasto;
    }

    public int getCodigoGasto() {
        return codigoGasto;
    }

    public void setCodigoGasto(int codigoGasto) {
        this.codigoGasto = codigoGasto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        return "DetalleFactura{" + "codigoDetalle=" + codigoDetalle + ", codigoFactura=" + codigoFactura + ", tipoGasto=" + tipoGasto + ", codigoGasto=" + codigoGasto + ", cantidad=" + cantidad + '}';
    }
    
}
