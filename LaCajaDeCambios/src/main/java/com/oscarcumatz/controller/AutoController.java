package com.oscarcumatz.controller;
 
import javax.persistence.*;
import java.util.List;
import java.util.Scanner;
 
public class AutoController {
 
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);
 
    public static void menuAuto() {
        int opcion;
        do {
            System.out.println("\n     MENÚ DE AUTOS  ");
            System.out.println("-----------------------------");
            System.out.println("1. Agregar Auto");
            System.out.println("2. Listar Autos");
            System.out.println("3. Buscar Auto");
            System.out.println("4. Editar Auto");
            System.out.println("5. Eliminar Auto");
            System.out.println("6. Salir");
            System.out.print("Seleccione una opción: ");
            opcion = leer.nextInt();
            leer.nextLine();
 
            switch (opcion) {
                case 1: agregarAuto(); break;
                case 2: listarAutos(); break;
                case 3: buscarAuto(); break;
                case 4: editarAuto(); break;
                case 5: eliminarAuto(); break;
                case 6: System.out.println("Regresando al menú principal..."); break;
                default: System.out.println("******* Opción no válida *******"); break;
            }
 
        } while (opcion != 6);
    }
 
    public static void agregarAuto() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
 
        System.out.print("Código del Cliente: ");
        int codigoCliente = leer.nextInt();
        leer.nextLine();
        System.out.print("Placa del Auto: ");
        String placa = leer.nextLine();
        System.out.print("Marca: ");
        String marca = leer.nextLine();
        System.out.print("Modelo: ");
        String modelo = leer.nextLine();
        System.out.print("Color: ");
        String color = leer.nextLine();
 
        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_AgregarAuto(?, ?, ?, ?, ?)");
            query.setParameter(1, codigoCliente);
            query.setParameter(2, placa);
            query.setParameter(3, marca);
            query.setParameter(4, modelo);
            query.setParameter(5, color);
            query.executeUpdate();
            tx.commit();
            System.out.println("Auto agregado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al agregar auto: " + e.getMessage());
        } finally {
            em.close();
        }
    }
 
    public static void listarAutos() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> autos = em.createNativeQuery("CALL sp_ListarAuto()").getResultList();
            System.out.println("\n*** Lista de Autos ***");
            for (Object[] auto : autos) {
                System.out.println("Código: " + auto[0] + ", Cliente: " + auto[1] + ", Placa: " + auto[2] +
                        ", Marca: " + auto[3] + ", Modelo: " + auto[4] + ", Color: " + auto[5]);
            }
        } finally {
            em.close();
        }
    }
 
    public static void buscarAuto() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese el código del auto a buscar: ");
        int codigo = leer.nextInt();
 
        try {
            Query query = em.createNativeQuery("CALL sp_BuscarAuto(?)");
            query.setParameter(1, codigo);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("Auto no encontrado.");
            } else {
                Object[] auto = result.get(0);
                System.out.println("Cliente: " + auto[0] + ", Placa: " + auto[1] + ", Marca: " + auto[2] +
                        ", Modelo: " + auto[3] + ", Color: " + auto[4]);
            }
        } finally {
            em.close();
        }
    }
 
    public static void editarAuto() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
 
        System.out.print("Ingrese el código del auto a editar: ");
        int codigoAuto = leer.nextInt();
        leer.nextLine();
        System.out.print("Código del Cliente: ");
        int codigoCliente = leer.nextInt();
        leer.nextLine();
        System.out.print("Placa del Auto: ");
        String placa = leer.nextLine();
        System.out.print("Marca: ");
        String marca = leer.nextLine();
        System.out.print("Modelo: ");
        String modelo = leer.nextLine();
        System.out.print("Color: ");
        String color = leer.nextLine();
 
        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_ModificarAuto(?, ?, ?, ?, ?, ?)");
            query.setParameter(1, codigoAuto);
            query.setParameter(2, codigoCliente);
            query.setParameter(3, placa);
            query.setParameter(4, marca);
            query.setParameter(5, modelo);
            query.setParameter(6, color);
            query.executeUpdate();
            tx.commit();
            System.out.println("Auto editado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al editar auto: " + e.getMessage());
        } finally {
            em.close();
        }
    }
 
    public static void eliminarAuto() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
 
        System.out.print("Ingrese el código del auto a eliminar: ");
        int codigo = leer.nextInt();
 
        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EliminarAuto(?)");
            query.setParameter(1, codigo);
            query.executeUpdate();
            tx.commit();
            System.out.println("Auto eliminado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al eliminar auto: " + e.getMessage());
        } finally {
            em.close();
        }
    }
 
    public static void main(String[] args) {
        menuAuto();
    }
}