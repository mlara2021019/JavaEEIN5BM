package com.oscarcumatz.system;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import com.oscarcumatz.dominio.Auto;
import java.util.List;
import javax.persistence.TypedQuery;
import com.oscarcumatz.dominio.Factura;
import com.oscarcumatz.controller.LlantaController;
import com.oscarcumatz.controller.FacturaController;
import com.oscarcumatz.controller.ReparacionController;
import com.oscarcumatz.controller.OrdenReparacionController;
import com.oscarcumatz.controller.OrdenServicioController;
import static com.oscarcumatz.controller.OrdenServicioController.menuOrdenServicio;
import com.oscarcumatz.controller.RepuestoController;
import static com.oscarcumatz.controller.RepuestoController.menuRepuesto;
import com.oscarcumatz.controller.ServicioController;
import static com.oscarcumatz.controller.ServicioController.menuServicio;
import com.oscarcumatz.controller.DetalleFacturaController;
import java.util.Scanner;
import com.oscarcumatz.controller.AccesorioController;
import com.oscarcumatz.controller.EmpleadoController;
import com.oscarcumatz.controller.AutoController;
import com.oscarcumatz.controller.ClienteController;

public class Principal {
        private static final Scanner leer = new Scanner(System.in);
    
        public static void main(String[] args) {
        /*
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
        EntityManager em = emf.createEntityManager();


        Auto a = em.find(Auto.class, 1);
        System.out.println(a);

        System.out.println("Lista de todas las personas");
        TypedQuery<Auto> query = em.createQuery("SELECT a FROM Auto a", Auto.class);
        List<Auto> autos = query.getResultList();

        for (Auto auto : autos) {
            System.out.println(auto);
        }

        em.clear();
        em.close();
        emf.close();                
        */
        FacturaController fcontroller = new FacturaController();
        ReparacionController rcontroller = new ReparacionController();
        OrdenReparacionController ocontroller = new OrdenReparacionController();
        ServicioController scontroller = new ServicioController();
        OrdenServicioController oscontroller = new OrdenServicioController();
        RepuestoController repcontroller = new RepuestoController(); 
        AccesorioController acontroller = new AccesorioController();
        EmpleadoController econtroller = new EmpleadoController();
        LlantaController llcontroller = new LlantaController();
        DetalleFacturaController dfcontroller = new DetalleFacturaController();
        ClienteController clcontroller = new ClienteController();
        AutoController aucontroller = new AutoController();
        
                int opcion;
                do {
                    System.out.println("--------------------------");
                    System.out.println("     La Caja de cambios  ");
                    System.out.println("--------------------------");
                    System.out.println("1.Empleados");
                    System.out.println("2.Clientes");
                    System.out.println("3.Autos");
                    System.out.println("4.Llantas");
                    System.out.println("5.Repuestos");
                    System.out.println("6.Accesorios");
                    System.out.println("7.Servicios");
                    System.out.println("8.Orden de servicios");
                    System.out.println("9.Reparaciones");
                    System.out.println("10.Orden de reparaciones");
                    System.out.println("11.Factura");
                    System.out.println("12. Detalle de factura");
                    System.out.println("0. Salir");
                    opcion = leer.nextInt();
                    leer.nextLine();

                    switch (opcion) {
                        case 1:     
                            econtroller.menuEmpleado();
                            break;
                        case 2:                 
                            clcontroller.menuCliente();
                            break;
                        case 3:
                            aucontroller.menuAuto();
                            break;
                        case 4:  
                            llcontroller.menuLlanta();
                            break;
                        case 5: 
                            repcontroller.menuRepuesto();
                            break;
                        case 6:
                            acontroller.menuAccesorio();
                            break;
                        case 7:
                            scontroller.menuServicio();
                            break;
                        case 8:
                            oscontroller.menuOrdenServicio();
                            break;
                        case 9:
                        rcontroller.menuReparacion();
                            break;
                        case 10:
                        ocontroller.menuOrdenReparacion();  
                            break;
                        case 11:
                        fcontroller.menuFactura();      
                            break;
                        case 12:
                            dfcontroller.menuDetalleFactura();
                            break;          
                        case 0:
                            System.out.println("-- Saliendo --");         
                            break;
                            
                        default : 
                            System.out.println("*******Opción no válida*******");
                            break;
                    }

                } while (opcion != 0);
            }
        

    }
