package com.oscarcumatz.dominio;

import com.oscarcumatz.dominio.Repuesto.EstadoRepuesto;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2025-07-23T09:04:05", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Repuesto.class)
public class Repuesto_ { 

    public static volatile SingularAttribute<Repuesto, EstadoRepuesto> estadoRepuesto;
    public static volatile SingularAttribute<Repuesto, String> descripcionRepuesto;
    public static volatile SingularAttribute<Repuesto, Integer> stockRepuesto;
    public static volatile SingularAttribute<Repuesto, Integer> codigoRepuesto;
    public static volatile SingularAttribute<Repuesto, String> nombreRepuesto;
    public static volatile SingularAttribute<Repuesto, Double> precioRepuesto;

}