
package com.oscarcumatz.controller;

import com.oscarcumatz.dominio.Accesorios;
import com.oscarcumatz.dominio.Accesorios.EstadoAccesorio;
 
import javax.persistence.*;
import java.util.List;
import java.util.Scanner;
 
public class AccesorioController {
 
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);
 
    public static void menuAccesorio() {
        int opcion;
        do {
            System.out.println("\n     MENÚ DE ACCESORIOS  ");
            System.out.println("-----------------------------");
            System.out.println("1. Agregar Accesorio");
            System.out.println("2. Listar Accesorios");
            System.out.println("3. Buscar Accesorio");
            System.out.println("4. Editar Accesorio");
            System.out.println("5. Eliminar Accesorio");
            System.out.println("6. Salir");
            System.out.print("Seleccione una opción: ");
            opcion = leer.nextInt();
            leer.nextLine();
 
            switch (opcion) {
                case 1: agregarAccesorio(); break;
                case 2: listarAccesorios(); break;
                case 3: buscarAccesorio(); break;
                case 4: editarAccesorio(); break;
                case 5: eliminarAccesorio(); break;
                case 6: System.out.println("Regresando al menú principal..."); break;
                default: System.out.println("******* Opción no válida *******"); break;
            }
 
        } while (opcion != 6);
    }
 
    public static void agregarAccesorio() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
 
        System.out.print("Nombre del Accesorio: ");
        String nombre = leer.nextLine();
        System.out.print("Descripción: ");
        String descripcion = leer.nextLine();
        System.out.print("Precio: ");
        double precio = leer.nextDouble();
        System.out.print("Stock: ");
        int stock = leer.nextInt();
        leer.nextLine();
        System.out.print("Estado (Disponibles/Agotados): ");
        String estado = leer.next();
 
        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_insertarAccesorio(?, ?, ?, ?, ?)");
            query.setParameter(1, nombre);
            query.setParameter(2, descripcion);
            query.setParameter(3, precio);
            query.setParameter(4, stock);
            query.setParameter(5, estado);
            query.executeUpdate();
            tx.commit();
            System.out.println("Accesorio agregado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al agregar accesorio: " + e.getMessage());
        } finally {
            em.close();
        }
    }
 
    public static void listarAccesorios() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> accesorios = em.createNativeQuery("CALL sp_listarAccesorios()").getResultList();
            System.out.println("\n*** Lista de Accesorios ***");
            for (Object[] acc : accesorios) {
                System.out.println("Código: " + acc[0] + ", Nombre: " + acc[1] + ", Descripción: " + acc[2] +
                        ", Precio: Q" + acc[3] + ", Stock: " + acc[4] + ", Estado: " + acc[5]);
            }
        } finally {
            em.close();
        }
    }
 
    public static void buscarAccesorio() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese el código del accesorio a buscar: ");
        int codigo = leer.nextInt();
 
        try {
            Query query = em.createNativeQuery("CALL sp_buscarAccesorio(?)");
            query.setParameter(1, codigo);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("Accesorio no encontrado.");
            } else {
                Object[] acc = result.get(0);
                System.out.println("Código: " + acc[0] + ", Nombre: " + acc[1] + ", Descripción: " + acc[2] +
                        ", Precio: Q" + acc[3] + ", Stock: " + acc[4] + ", Estado: " + acc[5]);
            }
        } finally {
            em.close();
        }
    }
 
    public static void editarAccesorio() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
 
        System.out.print("Ingrese el código del accesorio a editar: ");
        int codigo = leer.nextInt();
        leer.nextLine();
        System.out.print("Nuevo nombre: ");
        String nombre = leer.nextLine();
        System.out.print("Nueva descripción: ");
        String descripcion = leer.nextLine();
        System.out.print("Nuevo precio: ");
        double precio = leer.nextDouble();
        System.out.print("Nuevo stock: ");
        int stock = leer.nextInt();
        leer.nextLine();
        System.out.print("Nuevo estado (Disponibles/Agotados): ");
        String estado = leer.next();
 
        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_editarAccesorio(?, ?, ?, ?, ?, ?)");
            query.setParameter(1, codigo);
            query.setParameter(2, nombre);
            query.setParameter(3, descripcion);
            query.setParameter(4, precio);
            query.setParameter(5, stock);
            query.setParameter(6, estado);
            query.executeUpdate();
            tx.commit();
            System.out.println("Accesorio editado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al editar accesorio: " + e.getMessage());
        } finally {
            em.close();
        }
    }
 
    public static void eliminarAccesorio() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
 
        System.out.print("Ingrese el código del accesorio a eliminar: ");
        int codigo = leer.nextInt();
 
        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_eliminarAccesorio(?)");
            query.setParameter(1, codigo);
            query.executeUpdate();
            tx.commit();
            System.out.println("Accesorio eliminado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al eliminar accesorio: " + e.getMessage());
        } finally {
            em.close();
        }
    }
 
    public static void main(String[] args) {
        menuAccesorio();
    }
}