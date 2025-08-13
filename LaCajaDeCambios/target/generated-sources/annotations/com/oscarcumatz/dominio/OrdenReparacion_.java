package com.oscarcumatz.dominio;

import com.oscarcumatz.dominio.OrdenReparacion.Estado;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2025-07-23T09:04:05", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(OrdenReparacion.class)
public class OrdenReparacion_ { 

    public static volatile SingularAttribute<OrdenReparacion, Integer> codigoAutoReparacion;
    public static volatile SingularAttribute<OrdenReparacion, Integer> codigoReparacion;
    public static volatile SingularAttribute<OrdenReparacion, String> fechaIngresoReparacion;
    public static volatile SingularAttribute<OrdenReparacion, Integer> codigoClienteReparacion;
    public static volatile SingularAttribute<OrdenReparacion, Estado> estadoReparacion;
    public static volatile SingularAttribute<OrdenReparacion, Integer> codigoOrdenReparacion;
    public static volatile SingularAttribute<OrdenReparacion, Integer> codigoEmpleadoReparacion;

}