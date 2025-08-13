package com.oscarcumatz.dominio;

import com.oscarcumatz.dominio.Accesorios.EstadoAccesorio;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2025-07-23T09:04:05", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Accesorios.class)
public class Accesorios_ { 

    public static volatile SingularAttribute<Accesorios, String> nombreAccesorio;
    public static volatile SingularAttribute<Accesorios, Integer> codigoAccesorio;
    public static volatile SingularAttribute<Accesorios, Integer> stockAccesorio;
    public static volatile SingularAttribute<Accesorios, Double> precioAccesorio;
    public static volatile SingularAttribute<Accesorios, EstadoAccesorio> estadoAccesorio;
    public static volatile SingularAttribute<Accesorios, String> descripcionAccesorio;

}