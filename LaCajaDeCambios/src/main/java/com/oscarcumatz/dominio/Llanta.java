package com.oscarcumatz.dominio;


public class Llanta {
    private int codigoLlanta;
    private int anchoMilimentos;
    private int perfil;
    private TipoConstruccion tipoConstruccion;
    private int diametroRin;
    private int cargaMaximakg;
    private double precioLlanta;
    
    public enum TipoConstruccion{
        Radial,Diagonal,Cinturada
    }

    public Llanta(int codigoLlanta, int anchoMilimentos, int perfil, TipoConstruccion tipoConstruccion, int diametroRin, int cargaMaximakg, double precioLlanta) {
        this.codigoLlanta = codigoLlanta;
        this.anchoMilimentos = anchoMilimentos;
        this.perfil = perfil;
        this.tipoConstruccion = tipoConstruccion;
        this.diametroRin = diametroRin;
        this.cargaMaximakg = cargaMaximakg;
        this.precioLlanta = precioLlanta;
    }

    public int getCodigoLlanta() {
        return codigoLlanta;
    }

    public void setCodigoLlanta(int codigoLlanta) {
        this.codigoLlanta = codigoLlanta;
    }

    public int getAnchoMilimentos() {
        return anchoMilimentos;
    }

    public void setAnchoMilimentos(int anchoMilimentos) {
        this.anchoMilimentos = anchoMilimentos;
    }

    public int getPerfil() {
        return perfil;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }

    public TipoConstruccion getTipoConstruccion() {
        return tipoConstruccion;
    }

    public void setTipoConstruccion(TipoConstruccion tipoConstruccion) {
        this.tipoConstruccion = tipoConstruccion;
    }

    public int getDiametroRin() {
        return diametroRin;
    }

    public void setDiametroRin(int diametroRin) {
        this.diametroRin = diametroRin;
    }

    public int getCargaMaximakg() {
        return cargaMaximakg;
    }

    public void setCargaMaximakg(int cargaMaximakg) {
        this.cargaMaximakg = cargaMaximakg;
    }

    public double getPrecioLlanta() {
        return precioLlanta;
    }

    public void setPrecioLlanta(double precioLlanta) {
        this.precioLlanta = precioLlanta;
    }

    @Override
    public String toString() {
        return "Llanta{" + "codigoLlanta=" + codigoLlanta + ", anchoMilimentos=" + anchoMilimentos + ", perfil=" + perfil + ", tipoConstruccion=" + tipoConstruccion + ", diametroRin=" + diametroRin + ", cargaMaximakg=" + cargaMaximakg + ", precioLlanta=" + precioLlanta + '}';
    }
    
}