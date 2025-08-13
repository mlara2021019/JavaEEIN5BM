package com.oscarcumatz.dominio;

import com.oscarcumatz.dominio.Empleado.puesto;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2025-07-23T09:04:05", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Empleado.class)
public class Empleado_ { 

    public static volatile SingularAttribute<Empleado, puesto> puesto;
    public static volatile SingularAttribute<Empleado, Integer> codigoEmpleado;
    public static volatile SingularAttribute<Empleado, String> correoEmpleado;
    public static volatile SingularAttribute<Empleado, String> direccion;
    public static volatile SingularAttribute<Empleado, String> nombreEmpleado;
    public static volatile SingularAttribute<Empleado, String> telefonoEmpleado;

}