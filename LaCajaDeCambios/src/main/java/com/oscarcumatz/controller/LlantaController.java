package com.oscarcumatz.controller;

import javax.persistence.*;
import java.util.List;
import java.util.Scanner;

public class LlantaController {

    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);

    public static void menuLlanta() {
        int opcion;
        do {
            System.out.println("     MENÚ DE LLANTAS  ");
            System.out.println("--------------------------");
            System.out.println("1. Agregar Llanta");
            System.out.println("2. Listar Llantas");
            System.out.println("3. Buscar Llanta");
            System.out.println("4. Editar Llanta");
            System.out.println("5. Eliminar Llanta");
            System.out.println("6. Salir");
            opcion = leer.nextInt();
            leer.nextLine();

            switch (opcion) {
                case 1: agregarLlanta();
                    break;
                case 2: listarLlantas();
                    break;
                case 3: buscarLlanta();
                    break;
                case 4: editarLlanta();
                    break;
                case 5: eliminarLlanta();
                    break;
                case 6: System.out.println("Regresando al menú principal...");
                    break;
                default: System.out.println("**Opción no válida**");
                    break;
            }

        } while (opcion != 6);
    }

    public static void agregarLlanta() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ancho (milímetros): ");
        int ancho = leer.nextInt();
        System.out.print("Perfil: ");
        int perfil = leer.nextInt();
        System.out.print("Tipo de construcción (Radial/Diagonal/Cinturada): ");
        String tipo = leer.next();
        System.out.print("Diámetro del Rin: ");
        int diametro = leer.nextInt();
        System.out.print("Carga máxima (kg): ");
        int cargaMax = leer.nextInt();
        System.out.print("Precio de la llanta: ");
        double precio = leer.nextDouble();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_nuevaLlanta(?, ?, ?, ?, ?, ?)");
            query.setParameter(1, ancho);
            query.setParameter(2, perfil);
            query.setParameter(3, tipo);
            query.setParameter(4, diametro);
            query.setParameter(5, cargaMax);
            query.setParameter(6, precio);
            query.executeUpdate();
            tx.commit();
            System.out.println("Llanta agregada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al agregar la llanta: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void listarLlantas() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> llantas = em.createNativeQuery("CALL sp_verllantas()").getResultList();
            System.out.println("\n** Lista de Llantas **");
            for (Object[] llanta : llantas) {
                System.out.println("Código: " + llanta[0] + ", Ancho: " + llanta[1] + ", Perfil: " + llanta[2] +
                        ", Tipo: " + llanta[3] + ", Diámetro: " + llanta[4] + ", Carga Máx: " + llanta[5] +
                        ", Precio: Q" + llanta[6]);
            }
        } finally {
            em.close();
        }
    }

    public static void buscarLlanta() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese el código de la llanta a buscar: ");
        int codigo = leer.nextInt();

        try {
            Query query = em.createNativeQuery("CALL sp_buscarLlanta(?)");
            query.setParameter(1, codigo);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("Llanta no encontrada.");
            } else {
                Object[] llanta = result.get(0);
                System.out.println("Código: " + llanta[0] + ", Ancho: " + llanta[1] + ", Perfil: " + llanta[2] +
                        ", Tipo: " + llanta[3] + ", Diámetro: " + llanta[4] + ", Carga Máx: " + llanta[5] +
                        ", Precio: Q" + llanta[6]);
            }
        } finally {
            em.close();
        }
    }

    public static void editarLlanta() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Código de la llanta a editar: ");
        int codigo = leer.nextInt();
        System.out.print("Nuevo ancho (milímetros): ");
        int ancho = leer.nextInt();
        System.out.print("Nuevo perfil: ");
        int perfil = leer.nextInt();
        System.out.print("Nuevo tipo de construcción (Radial/Diagonal/Cinturada): ");
        String tipo = leer.next();
        System.out.print("Nuevo diámetro del Rin: ");
        int diametro = leer.nextInt();
        System.out.print("Nueva carga máxima (kg): ");
        int cargaMax = leer.nextInt();
        System.out.print("Nuevo precio: ");
        double precio = leer.nextDouble();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_editarLlanta(?, ?, ?, ?, ?, ?, ?)");
            query.setParameter(1, codigo);
            query.setParameter(2, ancho);
            query.setParameter(3, perfil);
            query.setParameter(4, tipo);
            query.setParameter(5, diametro);
            query.setParameter(6, cargaMax);
            query.setParameter(7, precio);
            query.executeUpdate();
            tx.commit();
            System.out.println("Llanta editada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al editar la llanta: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void eliminarLlanta() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Código de la llanta a eliminar: ");
        int codigo = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EliminarLanta(?)");
            query.setParameter(1, codigo);
            query.executeUpdate();
            tx.commit();
            System.out.println("Llanta eliminada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al eliminar la llanta: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        menuLlanta();
    }
}