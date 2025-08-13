package com.oscarcumatz.controller;

import javax.persistence.*;
import java.util.List;
import java.util.Scanner;

public class ServicioController {

    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);

    public static void menuServicio() {
        int opcion;
        do {
            System.out.println("     MENÚ DE SERVICIOS  ");
            System.out.println("--------------------------");
            System.out.println("1. Agregar Servicio");
            System.out.println("2. Listar Servicios");
            System.out.println("3. Buscar Servicio");
            System.out.println("4. Editar Servicio");
            System.out.println("5. Eliminar Servicio");
            System.out.println("6. Salir");
            System.out.print("Seleccione una opción: ");
            opcion = leer.nextInt();
            leer.nextLine();

            switch (opcion) {
                case 1:
                    agregarServicio();
                    break;
                case 2:
                    listarServicios();
                    break;
                case 3:
                    buscarServicio();
                    break;
                case 4:
                    editarServicio();
                    break;
                case 5:
                    eliminarServicio();
                    break;
                case 6:
                    System.out.println("Regresando al menú principal...");
                    break;
                default:
                    System.out.println("******* Opción no válida *******");
                    break;
            }

        } while (opcion != 6);
    }

    // Agregar servicio
    public static void agregarServicio() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Nombre del servicio: ");
        String nombre = leer.nextLine();
        System.out.print("Descripción del servicio: ");
        String descripcion = leer.nextLine();
        System.out.print("Precio del servicio: ");
        double precio = leer.nextDouble();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_agregarservicio(?, ?, ?)");
            query.setParameter(1, nombre);
            query.setParameter(2, descripcion);
            query.setParameter(3, precio);
            query.executeUpdate();
            tx.commit();
            System.out.println("Servicio agregado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al agregar servicio: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    // Listar servicios
    public static void listarServicios() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> servicios = em.createNativeQuery("CALL sp_listarservicio()").getResultList();
            System.out.println("\n*** Lista de Servicios ***");
            for (Object[] s : servicios) {
                System.out.println("Código: " + s[0] + ", Nombre: " + s[1] + ", Descripción: " + s[2] + ", Precio: " + s[3]);
            }
        } finally {
            em.close();
        }
    }

    // Buscar servicio
    public static void buscarServicio() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese el código del servicio a buscar: ");
        int codigo = leer.nextInt();

        try {
            Query query = em.createNativeQuery("CALL sp_buscarservicio(?)");
            query.setParameter(1, codigo);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("Servicio no encontrado.");
            } else {
                Object[] s = result.get(0);
                System.out.println("Código: " + s[0] + ", Nombre: " + s[1] + ", Descripción: " + s[2] + ", Precio: " + s[3]);
            }
        } finally {
            em.close();
        }
    }

    // Editar servicio
    public static void editarServicio() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ingrese el código del servicio a editar: ");
        int codigo = leer.nextInt();
        leer.nextLine();

        System.out.print("Nuevo nombre del servicio: ");
        String nombre = leer.nextLine();
        System.out.print("Nueva descripción: ");
        String descripcion = leer.nextLine();
        System.out.print("Nuevo precio: ");
        double precio = leer.nextDouble();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_editarservicio(?, ?, ?, ?)");
            query.setParameter(1, codigo);
            query.setParameter(2, nombre);
            query.setParameter(3, descripcion);
            query.setParameter(4, precio);
            query.executeUpdate();
            tx.commit();
            System.out.println("Servicio editado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al editar servicio: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    // Eliminar servicio
    public static void eliminarServicio() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ingrese el código del servicio a eliminar: ");
        int codigo = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_eliminarservicio(?)");
            query.setParameter(1, codigo);
            query.executeUpdate();
            tx.commit();
            System.out.println("Servicio eliminado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al eliminar servicio: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        menuServicio();
    }
}


