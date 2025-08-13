package com.oscarcumatz.controller;

import com.oscarcumatz.dominio.Factura;
import com.oscarcumatz.dominio.Factura.MetodoPago;

import javax.persistence.*;
import java.util.List;
import java.util.Scanner;

public class FacturaController {

    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);

    public static void menuFactura() {
        int opcion;
        do {
            System.out.println("     MENÚ DE FACTURAS  ");
            System.out.println("--------------------------");
            System.out.println("1. Agregar Factura");
            System.out.println("2. Listar Facturas");
            System.out.println("3. Buscar Factura");
            System.out.println("4. Editar Factura");
            System.out.println("5. Eliminar Factura");
            System.out.println("6. Salir");
            opcion = leer.nextInt();
            leer.nextLine();

            switch (opcion) {
                case 1: agregarFactura();
                    break;
                case 2:
                    listarFacturas();
                    break;
                case 3: buscarFactura();
                    break;
                case 4:
                    editarFactura();
                    break;
                case 5: 
                    eliminarFactura();
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

    // Método para agregar una nueva factura
    public static void agregarFactura() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Código Cliente: ");
        int codigoCliente = leer.nextInt();
        System.out.print("Código Empleado: ");
        int codigoEmpleado = leer.nextInt();
        System.out.print("Código Auto: ");
        int codigoAuto = leer.nextInt();
        System.out.print("Fecha de Emisión (yyyy-mm-dd): ");
        String fechaEmision = leer.next();
        System.out.print("Método de Pago (Efectivo/Targeta): ");
        String metodoPago = leer.next();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_agregarFactura(?, ?, ?, ?, ?)");
            query.setParameter(1, codigoCliente);
            query.setParameter(2, codigoEmpleado);
            query.setParameter(3, codigoAuto);
            query.setParameter(4, fechaEmision);
            query.setParameter(5, metodoPago);
            query.executeUpdate();
            tx.commit();
            System.out.println("Factura agregada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al agregar factura: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    // Método para listar todas las facturas
    public static void listarFacturas() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> facturas = em.createNativeQuery("CALL sp_ListarFactura()").getResultList();
            System.out.println("\n*** Lista de Facturas ***");
            for (Object[] factura : facturas) {
                System.out.println("Código: " + factura[0] + ", Cliente: " + factura[1] + ", Empleado: " + factura[2] +
                        ", Auto: " + factura[3] + ", Fecha: " + factura[4] + ", Total: " + factura[5] +
                        ", Método de Pago: " + factura[6]);
            }
        } finally {
            em.close();
        }
    }

    // Método para buscar una factura por código
    public static void buscarFactura() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese el código de la factura a buscar: ");
        int codigoFactura = leer.nextInt();

        try {
            Query query = em.createNativeQuery("CALL sp_BuscarFactura(?)");
            query.setParameter(1, codigoFactura);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("Factura no encontrada.");
            } else {
                Object[] factura = result.get(0);
                System.out.println("Código: " + factura[0] + ", Cliente: " + factura[1] + ", Empleado: " + factura[2] +
                        ", Auto: " + factura[3] + ", Fecha: " + factura[4] + ", Total: " + factura[5] +
                        ", Método de Pago: " + factura[6]);
            }
        } finally {
            em.close();
        }
    }

    // Método para editar una factura
    public static void editarFactura() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ingrese el código de la factura a editar: ");
        int idFactura = leer.nextInt();
        System.out.print("Nuevo código de cliente: ");
        int cliente = leer.nextInt();
        System.out.print("Nuevo código de empleado: ");
        int empleado = leer.nextInt();
        System.out.print("Nuevo código de auto: ");
        int auto = leer.nextInt();
        System.out.print("Fecha de emisión (yyyy-mm-dd): ");
        String fechaEmision = leer.next();
        System.out.print("Nuevo total de la factura: ");
        double total = leer.nextDouble();
        System.out.print("Nuevo método de pago (Efectivo/Targeta) -escribalo tal y como es- : ");
        String metodoPago = leer.next();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EditarFactura(?, ?, ?, ?, ?, ?, ?)");
            query.setParameter(1, idFactura);
            query.setParameter(2, cliente);
            query.setParameter(3, empleado);
            query.setParameter(4, auto);
            query.setParameter(5, fechaEmision);
            query.setParameter(6, total);
            query.setParameter(7, metodoPago);
            query.executeUpdate();
            tx.commit();
            System.out.println("Factura editada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al editar factura: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    // Método para eliminar una factura
    public static void eliminarFactura() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ingrese el código de la factura a eliminar: ");
        int codigoFactura = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EliminarFactura(?)");
            query.setParameter(1, codigoFactura);
            query.executeUpdate();
            tx.commit();
            System.out.println("Factura eliminada correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al eliminar factura: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        menuFactura();
    }
}
