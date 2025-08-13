package com.oscarcumatz.controller;

import com.oscarcumatz.dominio.OrdenServicio;
import com.oscarcumatz.dominio.OrdenServicio.EstadoOrden;

import javax.persistence.*;
import java.sql.Date;
import java.util.List;
import java.util.Scanner;

public class OrdenServicioController {

    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);

    public static void menuOrdenServicio() {
        int opcion;
        do {
            System.out.println("\n     MENÚ DE ORDENES DE SERVICIO");
            System.out.println("--------------------------------------");
            System.out.println("1. Agregar OrdenServicio");
            System.out.println("2. Listar OrdeneServicio");
            System.out.println("3. Buscar OrdenServicio");
            System.out.println("4. Editar OrdenServicio");
            System.out.println("5. Eliminar OrdenServicio");
            System.out.println("6. Salir");
            System.out.print("Seleccione una opción: ");
            opcion = leer.nextInt();
            leer.nextLine();

            switch (opcion) {
                case 1: 
                    agregarOrden();
                    break;
                case 2: 
                    listarOrdenes();
                    break;
                case 3: 
                    buscarOrden();
                    break;
                case 4: 
                    editarOrden();
                    break;
                case 5: 
                    eliminarOrden();
                    break;
                case 6: 
                    System.out.println("Regresando al menú principal...");
                    break;
                default: 
                    System.out.println("***** Opción no válida *****");
                    break;
            }
        } while (opcion != 6);
    }

    // Agregar orden de servicio
    public static void agregarOrden() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            System.out.print("Código Auto: ");
            int auto = leer.nextInt();
            System.out.print("Código Cliente: ");
            int cliente = leer.nextInt();
            System.out.print("Código Empleado: ");
            int empleado = leer.nextInt();
            System.out.print("Código Servicio: ");
            int servicio = leer.nextInt();
            System.out.print("Fecha de Ingreso (yyyy-mm-dd): ");
            String fecha = leer.next();
            System.out.print("Estado (Pendiente/EnProceso/Finalizado): ");
            String estado = leer.next();

            tx.begin();
            Query query = em.createNativeQuery("CALL sp_AgregarOrdenServicio(?, ?, ?, ?, ?, ?)");
            query.setParameter(1, auto);
            query.setParameter(2, cliente);
            query.setParameter(3, empleado);
            query.setParameter(4, servicio);
            query.setParameter(5, Date.valueOf(fecha));
            query.setParameter(6, estado);
            query.executeUpdate();
            tx.commit();
            System.out.println("Orden agregada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al agregar orden: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    // Listar órdenes de servicio
    public static void listarOrdenes() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> ordenes = em.createNativeQuery("CALL sp_ListarOrdenServicio()").getResultList();
            System.out.println("\n*** Lista de Ordenes de Servicio ***");
            for (Object[] o : ordenes) {
                System.out.println("Código: " + o[0] + ", Auto: " + o[1] + ", Cliente: " + o[2] + ", Empleado: " + o[3] +
                        ", Servicio: " + o[4] + ", Fecha: " + o[5] + ", Estado: " + o[6]);
            }
        } finally {
            em.close();
        }
    }

    // Buscar orden por código
    public static void buscarOrden() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese el código de la orden a buscar: ");
        int codigo = leer.nextInt();

        try {
            Query query = em.createNativeQuery("CALL sp_BuscarOrdenServicio(?)");
            query.setParameter(1, codigo);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("Orden no encontrada.");
            } else {
                Object[] o = result.get(0);
                System.out.println("Código: " + o[0] + ", Auto: " + o[1] + ", Cliente: " + o[2] +
                        ", Empleado: " + o[3] + ", Servicio: " + o[4] + ", Fecha: " + o[5] + ", Estado: " + o[6]);
            }
        } finally {
            em.close();
        }
    }

    // Editar orden
    public static void editarOrden() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            System.out.print("Código de la orden a editar: ");
            int codigo = leer.nextInt();
            System.out.print("Nuevo código Auto: ");
            int auto = leer.nextInt();
            System.out.print("Nuevo código Cliente: ");
            int cliente = leer.nextInt();
            System.out.print("Nuevo código Empleado: ");
            int empleado = leer.nextInt();
            System.out.print("Nuevo código Servicio: ");
            int servicio = leer.nextInt();
            System.out.print("Nueva fecha de ingreso (yyyy-mm-dd): ");
            String fecha = leer.next();
            System.out.print("Nuevo estado (Pendiente/EnProceso/Finalizado): ");
            String estado = leer.next();

            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EditarOrdenServicio(?, ?, ?, ?, ?, ?, ?)");
            query.setParameter(1, codigo);
            query.setParameter(2, auto);
            query.setParameter(3, cliente);
            query.setParameter(4, empleado);
            query.setParameter(5, servicio);
            query.setParameter(6, Date.valueOf(fecha));
            query.setParameter(7, estado);
            query.executeUpdate();
            tx.commit();
            System.out.println("Orden editada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al editar orden: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    // Eliminar orden
    public static void eliminarOrden() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ingrese el código de la orden a eliminar: ");
        int codigo = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EliminarOrdenServicio(?)");
            query.setParameter(1, codigo);
            query.executeUpdate();
            tx.commit();
            System.out.println("Orden eliminada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            if (e.getMessage().contains("foreign key")) {
                System.err.println("No se puede eliminar la orden: está siendo utilizada por otra tabla.");
            } else {
                System.err.println("Error al eliminar orden: " + e.getMessage());
            }
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        menuOrdenServicio();
    }
}

