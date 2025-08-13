package com.oscarcumatz.controller;

import javax.persistence.*;
import java.util.List;
import java.util.Scanner;

public class OrdenReparacionController {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);

    public static void menuOrdenReparacion() {
        int opcion;
        do {
            System.out.println("----- MENÚ ORDENES DE REPARACIÓN -----");
            System.out.println("1. Agregar Orden de Reparación");
            System.out.println("2. Listar Órdenes de Reparación");
            System.out.println("3. Buscar Orden de Reparación");
            System.out.println("4. Editar Orden de Reparación");
            System.out.println("5. Eliminar Orden de Reparación");
            System.out.println("6. Salir");
            opcion = leer.nextInt();
            leer.nextLine();

            switch (opcion) {
                case 1 -> agregarOrdenReparacion();
                case 2 -> listarOrdenesReparacion();
                case 3 -> buscarOrdenReparacion();
                case 4 -> editarOrdenReparacion();
                case 5 -> eliminarOrdenReparacion();
                case 6 -> System.out.println("Regresando al menú principal...");
                default -> System.out.println("Opción no válida.");
            }
        } while (opcion != 6);
    }

    public static void agregarOrdenReparacion() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Código Auto: ");
        int auto = leer.nextInt();
        System.out.print("Código Cliente: ");
        int cliente = leer.nextInt();
        System.out.print("Código Empleado: ");
        int empleado = leer.nextInt();
        System.out.print("Código Reparación: ");
        int reparacion = leer.nextInt();
        System.out.print("Fecha Ingreso (yyyy-mm-dd): ");
        String fechaIngreso = leer.next();
        System.out.print("Estado (Pendiente/En proceso/Finalizado): ");
        String estado = leer.next();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_AgregarOrdenReparacion(?, ?, ?, ?, ?, ?)");
            query.setParameter(1, auto);
            query.setParameter(2, cliente);
            query.setParameter(3, empleado);
            query.setParameter(4, reparacion);
            query.setParameter(5, fechaIngreso);
            query.setParameter(6, estado);
            query.executeUpdate();
            tx.commit();
            System.out.println("Orden de reparación agregada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al agregar orden de reparación: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void listarOrdenesReparacion() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> ordenes = em.createNativeQuery("CALL sp_ListarOrdenesReparacion()").getResultList();
            System.out.println("\n*** Lista de Órdenes de Reparación ***");
            for (Object[] orden : ordenes) {
                System.out.println("Código: " + orden[0] + ", Auto: " + orden[1] + ", Cliente: " + orden[2] +
                        ", Empleado: " + orden[3] + ", Reparación: " + orden[4] + ", Fecha Ingreso: " + orden[5] +
                        ", Estado: " + orden[6]);
            }
        } finally {
            em.close();
        }
    }

    public static void buscarOrdenReparacion() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese código de la orden a buscar: ");
        int codigo = leer.nextInt();
        try {
            Query query = em.createNativeQuery("CALL sp_BuscarOrdenReparacion(?)");
            query.setParameter(1, codigo);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("No se encontró la orden.");
            } else {
                Object[] orden = result.get(0);
                System.out.println("Código: " + orden[0] + ", Auto: " + orden[1] + ", Cliente: " + orden[2] +
                        ", Empleado: " + orden[3] + ", Reparación: " + orden[4] + ", Fecha Ingreso: " + orden[5] +
                        ", Estado: " + orden[6]);
            }
        } finally {
            em.close();
        }
    }

    public static void editarOrdenReparacion() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Código a editar: ");
        int codigo = leer.nextInt();
        System.out.print("Nuevo código Auto: ");
        int auto = leer.nextInt();
        System.out.print("Nuevo código Cliente: ");
        int cliente = leer.nextInt();
        System.out.print("Nuevo código Empleado: ");
        int empleado = leer.nextInt();
        System.out.print("Nuevo código Reparación: ");
        int reparacion = leer.nextInt();
        System.out.print("Fecha Ingreso (yyyy-mm-dd): ");
        String fechaIngreso = leer.next();
        System.out.print("Nuevo estado (Pendiente/En proceso/Finalizado): ");
        String estado = leer.next();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EditarOrdenReparacion(?, ?, ?, ?, ?, ?, ?)");
            query.setParameter(1, codigo);
            query.setParameter(2, auto);
            query.setParameter(3, cliente);
            query.setParameter(4, empleado);
            query.setParameter(5, reparacion);
            query.setParameter(6, fechaIngreso);
            query.setParameter(7, estado);
            query.executeUpdate();
            tx.commit();
            System.out.println("Orden de reparación editada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al editar orden de reparación: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void eliminarOrdenReparacion() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Código a eliminar: ");
        int codigo = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EliminarOrdenReparacion(?)");
            query.setParameter(1, codigo);
            query.executeUpdate();
            tx.commit();
            System.out.println("Orden de reparación eliminada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al eliminar orden de reparación: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        menuOrdenReparacion();
    }
}