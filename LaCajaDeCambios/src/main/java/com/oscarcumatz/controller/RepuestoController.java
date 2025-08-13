package com.oscarcumatz.controller;


import com.oscarcumatz.dominio.Repuesto;
import com.oscarcumatz.dominio.Repuesto.EstadoRepuesto;

import javax.persistence.*;
import java.util.List;
import java.util.Scanner;

public class RepuestoController {

    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);

    public static void menuRepuesto() {
        int opcion;
        do {
            System.out.println("     MENÚ DE REPUESTOS  ");
            System.out.println("--------------------------");
            System.out.println("1. Agregar Repuesto");
            System.out.println("2. Listar Repuestos");
            System.out.println("3. Buscar Repuesto");
            System.out.println("4. Editar Repuesto");
            System.out.println("5. Eliminar Repuesto");
            System.out.println("6. Salir");
            opcion = leer.nextInt();
            leer.nextLine();

            switch (opcion) {
                case 1: agregarRepuesto();
                    break;
                case 2:
                    listarRepuestos();
                    break;
                case 3: buscarRepuesto();
                    break;
                case 4:
                    editarRepuesto();
                    break;
                case 5: 
                    eliminarRepuesto();
                    break;
                case 6:
                    System.out.println("Regresando al menu Inicio");
                    break;
                default : 
                    System.out.println("*******Opción no válida*******");
                    break;
            }

        } while (opcion != 6);
    }

public static void agregarRepuesto() {
    EntityManager em = emf.createEntityManager();
    EntityTransaction tx = em.getTransaction();

    System.out.print("Nombre del Repuesto: ");
    String nombreRepuesto = leer.nextLine();
    System.out.print("Descripción del Repuesto: ");
    String descripcionRepuesto = leer.nextLine();
    System.out.print("Precio del Repuesto: ");
    double precioRepuesto = leer.nextDouble();
    System.out.print("Stock del Repuesto: ");
    int stockRepuesto = leer.nextInt();
    System.out.print("Estado del Repuesto (Disponibles/Agotados): ");
    String estadoRepuesto = leer.next().trim();  

    if (!estadoRepuesto.equals("Disponibles") && !estadoRepuesto.equals("Agotados")) {
        System.out.println("Valor de estado no válido. Debe ser 'Disponibles' o 'Agotados'.");
        return;  
    }
    try {
        tx.begin();
       
        Query query = em.createNativeQuery("CALL sp_AgregarRepuesto(?, ?, ?, ?, ?)");
        query.setParameter(1, nombreRepuesto);
        query.setParameter(2, descripcionRepuesto);
        query.setParameter(3, precioRepuesto);
        query.setParameter(4, stockRepuesto);
        query.setParameter(5, estadoRepuesto);  
        
        query.executeUpdate();
        tx.commit();
        System.out.println("Repuesto agregado correctamente.");
    } catch (Exception e) {
        tx.rollback();
        System.err.println("Error al agregar repuesto: " + e.getMessage());
    } finally {
        em.close();
    }
}


  
    public static void listarRepuestos() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> repuestos = em.createNativeQuery("CALL sp_ListarRepuestos()").getResultList();
            System.out.println("\n*** Lista de Repuestos ***");
            for (Object[] repuesto : repuestos) {
                System.out.println("Código: " + repuesto[0] + ", Nombre: " + repuesto[1] + ", Descripción: " + repuesto[2] +
                        ", Precio: " + repuesto[3] + ", Stock: " + repuesto[4] + ", Estado: " + repuesto[5]);
            }
        } finally {
            em.close();
        }
    }

    
    public static void buscarRepuesto() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese el código del repuesto a buscar: ");
        int codigoRepuesto = leer.nextInt();

        try {
            Query query = em.createNativeQuery("CALL sp_BuscarRepuesto(?)");
            query.setParameter(1, codigoRepuesto);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("Repuesto no encontrado.");
            } else {
                Object[] repuesto = result.get(0);
                System.out.println("Código: " + repuesto[0] + ", Nombre: " + repuesto[1] + ", Descripción: " + repuesto[2] +
                        ", Precio: " + repuesto[3] + ", Stock: " + repuesto[4] + ", Estado: " + repuesto[5]);
            }
        } finally {
            em.close();
        }
    }

    
   public static void editarRepuesto() {
    EntityManager em = emf.createEntityManager();
    EntityTransaction tx = em.getTransaction();

    System.out.print("Ingrese el ID del Repuesto a editar: ");
    int idRepuesto = leer.nextInt();
    leer.nextLine();  

    System.out.print("Nuevo Nombre del Repuesto: ");
    String nombreRepuesto = leer.nextLine();
    System.out.print("Nueva Descripción del Repuesto: ");
    String descripcionRepuesto = leer.nextLine();
    System.out.print("Nuevo Precio del Repuesto: ");
    double precioRepuesto = leer.nextDouble();
    System.out.print("Nuevo Stock del Repuesto: ");
    int stockRepuesto = leer.nextInt();
    System.out.print("Nuevo Estado del Repuesto (Disponibles/Agotados): ");
    String estadoRepuesto = leer.next().trim();  

    
    if (!estadoRepuesto.equals("Disponibles") && !estadoRepuesto.equals("Agotados")) {
        System.out.println("Valor de estado no válido. Debe ser 'Disponibles' o 'Agotados'.");
        return;  
    }

    try {
        tx.begin();
        
        Query query = em.createNativeQuery("CALL sp_EditarRepuesto(?, ?, ?, ?, ?, ?)");
        query.setParameter(1, idRepuesto);
        query.setParameter(2, nombreRepuesto);
        query.setParameter(3, descripcionRepuesto);
        query.setParameter(4, precioRepuesto);
        query.setParameter(5, stockRepuesto);
        query.setParameter(6, estadoRepuesto);  

        query.executeUpdate();
        tx.commit();
        System.out.println("Repuesto editado correctamente.");
    } catch (Exception e) {
        tx.rollback();
        System.err.println("Error al editar repuesto: " + e.getMessage());
    } finally {
        em.close();
    }
}


    
    public static void eliminarRepuesto() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ingrese el código del repuesto a eliminar: ");
        int codigoRepuesto = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EliminarRepuesto(?)");
            query.setParameter(1, codigoRepuesto);
            query.executeUpdate();
            tx.commit();
            System.out.println("Repuesto eliminado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al eliminar repuesto: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        menuRepuesto();
    }
}

