package com.oscarcumatz.dominio;

import com.oscarcumatz.dominio.OrdenServicio.EstadoOrden;
import java.util.Date;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2025-07-23T09:04:05", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(OrdenServicio.class)
public class OrdenServicio_ { 

    public static volatile SingularAttribute<OrdenServicio, Integer> codigoOrdenServicio;
    public static volatile SingularAttribute<OrdenServicio, Integer> codigoServicio;
    public static volatile SingularAttribute<OrdenServicio, Date> fechaIngreso;
    public static volatile SingularAttribute<OrdenServicio, EstadoOrden> estado;
    public static volatile SingularAttribute<OrdenServicio, Integer> codigoEmpleado;
    public static volatile SingularAttribute<OrdenServicio, Integer> codigoCliente;
    public static volatile SingularAttribute<OrdenServicio, Integer> codigoAuto;

}