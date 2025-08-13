package com.oscarcumatz.controller;

import javax.persistence.*;
import java.util.List;
import java.util.Scanner;

public class DetalleFacturaController {

    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);

    public static void menuDetalleFactura() {
        int opcion;
        do {
            System.out.println("  MENÚ DE DETALLES DE FACTURA  ");
            System.out.println("--------------------------------");
            System.out.println("1. Agregar Detalle");
            System.out.println("2. Listar Detalles");
            System.out.println("3. Buscar Detalle");
            System.out.println("4. Editar Detalle");
            System.out.println("5. Eliminar Detalle");
            System.out.println("6. Salir");
            opcion = leer.nextInt();
            leer.nextLine();

            switch (opcion) {
                case 1: agregarDetalleFactura();
                    break;
                case 2: listarDetallesFactura();
                    break;
                case 3: buscarDetalleFactura();
                    break;
                case 4: editarDetalleFactura();
                    break;
                case 5: eliminarDetalleFactura();
                    break;
                case 6:
                    System.out.println("Regresando al menú principal");
                    break;
                default:
                    System.out.println("*******Opción no válida*******");
                    break;
            }
        } while (opcion != 6);
    }

    public static void agregarDetalleFactura() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Código de Factura: ");
        int codigoFactura = leer.nextInt();
        leer.nextLine();
        System.out.print("Tipo de Gasto (Servicio/Reparacion/Llanta/Repuesto/Accesorio): ");
        String tipoGasto = leer.nextLine();
        System.out.print("Código de Gasto: ");
        int codigoGasto = leer.nextInt();
        System.out.print("Cantidad: ");
        int cantidad = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_AgregarDetalleFactura(?, ?, ?, ?)");
            query.setParameter(1, codigoFactura);
            query.setParameter(2, tipoGasto);
            query.setParameter(3, codigoGasto);
            query.setParameter(4, cantidad);
            query.executeUpdate();
            tx.commit();
            System.out.println("Detalle de factura agregado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al agregar detalle: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void listarDetallesFactura() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> detalles = em.createNativeQuery("CALL sp_MostrarDetallesFactura()").getResultList();
            System.out.println("\n*** Lista de Detalles de Factura ***");
            for (Object[] detalle : detalles) {
                System.out.println("Código Detalle: " + detalle[0] + ", Factura: " + detalle[1] + ", Tipo: " + detalle[2] + ", Gasto: " + detalle[3] + ", Cantidad: " + detalle[4]);
            }
        } finally {
            em.close();
        }
    }

    public static void buscarDetalleFactura() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese el código del detalle a buscar: ");
        int codigoDetalle = leer.nextInt();

        try {
            Query query = em.createNativeQuery("CALL sp_BuscarDetalleFactura(?)");
            query.setParameter(1, codigoDetalle);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("Detalle no encontrado.");
            } else {
                Object[] detalle = result.get(0);
                System.out.println("Código Detalle: " + detalle[0] + ", Factura: " + detalle[1] + ", Tipo: " + detalle[2] + ", Gasto: " + detalle[3] + ", Cantidad: " + detalle[4]);
            }
        } finally {
            em.close();
        }
    }

    public static void editarDetalleFactura() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ingrese el código del detalle a editar: ");
        int codigoDetalle = leer.nextInt();
        System.out.print("Nuevo código de factura: ");
        int codigoFactura = leer.nextInt();
        leer.nextLine();
        System.out.print("Nuevo tipo de gasto (Servicio/Reparacion/Llanta/Repuesto/Accesorio): ");
        String tipoGasto = leer.nextLine();
        System.out.print("Nuevo código de gasto: ");
        int codigoGasto = leer.nextInt();
        System.out.print("Nueva cantidad: ");
        int cantidad = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EditarDetalleFactura(?, ?, ?, ?, ?)");
            query.setParameter(1, codigoDetalle);
            query.setParameter(2, codigoFactura);
            query.setParameter(3, tipoGasto);
            query.setParameter(4, codigoGasto);
            query.setParameter(5, cantidad);
            query.executeUpdate();
            tx.commit();
            System.out.println("Detalle de factura editado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al editar detalle: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void eliminarDetalleFactura() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ingrese el código de la factura asociada al detalle a eliminar: ");
        int codigoFactura = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EliminarDetalleFactura(?)");
            query.setParameter(1, codigoFactura);
            query.executeUpdate();
            tx.commit();
            System.out.println("Detalle eliminado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al eliminar detalle: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        menuDetalleFactura();
    }
}
