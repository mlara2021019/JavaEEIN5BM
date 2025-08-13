package com.oscarcumatz.dominio;

import com.oscarcumatz.dominio.Factura.MetodoPago;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2025-07-23T09:04:05", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Factura.class)
public class Factura_ { 

    public static volatile SingularAttribute<Factura, Integer> codigoClienteFactura;
    public static volatile SingularAttribute<Factura, MetodoPago> metodoPago;
    public static volatile SingularAttribute<Factura, Integer> codigoEmpleadoFactura;
    public static volatile SingularAttribute<Factura, Double> total;
    public static volatile SingularAttribute<Factura, Integer> codigoAutoFactura;
    public static volatile SingularAttribute<Factura, Integer> codigoFactura;
    public static volatile SingularAttribute<Factura, String> fechaEmision;

}