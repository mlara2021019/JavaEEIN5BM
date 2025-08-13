package com.oscarcumatz.controller;

import javax.persistence.*;
import java.util.List;
import java.util.Scanner;

public class ReparacionController {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);

    public static void menuReparacion() {
        int opcion;
        do {
            System.out.println("----- MENÚ REPARACIONES -----");
            System.out.println("1. Agregar Reparación");
            System.out.println("2. Listar Reparaciones");
            System.out.println("3. Buscar Reparación");
            System.out.println("4. Editar Reparación");
            System.out.println("5. Eliminar Reparación");
            System.out.println("6. Salir");
            opcion = leer.nextInt();
            leer.nextLine();

            switch (opcion) {
                case 1 -> agregarReparacion();
                case 2 -> listarReparaciones();
                case 3 -> buscarReparacion();
                case 4 -> editarReparacion();
                case 5 -> eliminarReparacion();
                case 6 -> System.out.println("Regresando al menú principal...");
                default -> System.out.println("Opción no válida.");
            }
        } while (opcion != 6);
    }

    public static void agregarReparacion() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Nombre de reparación: ");
        String nombre = leer.nextLine();
        System.out.print("Descripción: ");
        String descripcion = leer.nextLine();
        System.out.print("Precio: ");
        double precio = leer.nextDouble();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_AgregarReparacion(?, ?, ?)");
            query.setParameter(1, nombre);
            query.setParameter(2, descripcion);
            query.setParameter(3, precio);
            query.executeUpdate();
            tx.commit();
            System.out.println("Reparación agregada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al agregar reparación: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void listarReparaciones() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> reparaciones = em.createNativeQuery("CALL sp_ListarReparaciones()").getResultList();
            System.out.println("\n*** Lista de Reparaciones ***");
            for (Object[] rep : reparaciones) {
                System.out.println("Código: " + rep[0] + ", Nombre: " + rep[1] + ", Descripción: " + rep[2] + ", Precio: Q" + rep[3]);
            }
        } finally {
            em.close();
        }
    }

    public static void buscarReparacion() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese código de reparación a buscar: ");
        int codigo = leer.nextInt();
        try {
            Query query = em.createNativeQuery("CALL sp_BuscarReparacion(?)");
            query.setParameter(1, codigo);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("No se encontró la reparación.");
            } else {
                Object[] rep = result.get(0);
                System.out.println("Código: " + rep[0] + ", Nombre: " + rep[1] + ", Descripción: " + rep[2] + ", Precio: Q" + rep[3]);
            }
        } finally {
            em.close();
        }
    }

    public static void editarReparacion() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Código a editar: ");
        int codigo = leer.nextInt();
        leer.nextLine();
        System.out.print("Nuevo nombre: ");
        String nombre = leer.nextLine();
        System.out.print("Nueva descripción: ");
        String descripcion = leer.nextLine();
        System.out.print("Nuevo precio: ");
        double precio = leer.nextDouble();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EditarReparacion(?, ?, ?, ?)");
            query.setParameter(1, codigo);
            query.setParameter(2, nombre);
            query.setParameter(3, descripcion);
            query.setParameter(4, precio);
            query.executeUpdate();
            tx.commit();
            System.out.println("Reparación editada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al editar reparación: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void eliminarReparacion() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Código a eliminar: ");
        int codigo = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EliminarReparacion(?)");
            query.setParameter(1, codigo);
            query.executeUpdate();
            tx.commit();
            System.out.println("Reparación eliminada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al eliminar reparación: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        menuReparacion();
    }
}