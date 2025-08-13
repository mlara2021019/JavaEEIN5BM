package com.oscarcumatz.controller;

import com.oscarcumatz.dominio.Empleado;
import com.oscarcumatz.dominio.Empleado.puesto;

import javax.persistence.*;
import java.util.List;
import java.util.Scanner;

public class EmpleadoController {

    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dominio");
    private static final Scanner leer = new Scanner(System.in);

    public static void menuEmpleado() {
        int opcion;
        do {
            System.out.println("     MENÚ DE EMPLEADOS  ");
            System.out.println("----------------------------");
            System.out.println("1. Agregar Empleado");
            System.out.println("2. Listar Empleados");
            System.out.println("3. Buscar Empleado");
            System.out.println("4. Editar Empleado");
            System.out.println("5. Eliminar Empleado");
            System.out.println("6. Salir");
            System.out.print("Seleccione una opción: ");
            opcion = leer.nextInt();
            leer.nextLine();

            switch (opcion) {
                case 1: agregarEmpleado(); break;
                case 2: listarEmpleados(); break;
                case 3: buscarEmpleado(); break;
                case 4: editarEmpleado(); break;
                case 5: eliminarEmpleado(); break;
                case 6: System.out.println("Regresando al menú principal..."); break;
                default: System.out.println("******* Opción no válida *******"); break;
            }

        } while (opcion != 6);
    }

    public static void agregarEmpleado() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Nombre del Empleado: ");
        String nombre = leer.nextLine();
        System.out.print("Teléfono: ");
        String telefono = leer.next();
        System.out.print("Correo: ");
        String correo = leer.next();
        leer.nextLine(); // Limpiar buffer
        System.out.print("Dirección: ");
        String direccion = leer.nextLine();
        System.out.print("Puesto (Recepcionista/Mecanico): ");
        String p = leer.next();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_AgregarEmpleado(?, ?, ?, ?, ?)");
            query.setParameter(1, nombre);
            query.setParameter(2, telefono);
            query.setParameter(3, correo);
            query.setParameter(4, direccion);
            query.setParameter(5, p);
            query.executeUpdate();
            tx.commit();
            System.out.println("Empleado agregado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al agregar empleado: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void listarEmpleados() {
        EntityManager em = emf.createEntityManager();
        try {
            List<Object[]> empleados = em.createNativeQuery("CALL sp_ListarEmpleado()").getResultList();
            System.out.println("\n*** Lista de Empleados ***");
            for (Object[] emp : empleados) {
                System.out.println("Código: " + emp[0] + ", Nombre: " + emp[1] + ", Teléfono: " + emp[2] +
                        ", Correo: " + emp[3] + ", Dirección: " + emp[4] + ", Puesto: " + emp[5]);
            }
        } finally {
            em.close();
        }
    }

    public static void buscarEmpleado() {
        EntityManager em = emf.createEntityManager();
        System.out.print("Ingrese el código del empleado a buscar: ");
        int codigo = leer.nextInt();

        try {
            Query query = em.createNativeQuery("CALL sp_BuscarEmpleado(?)");
            query.setParameter(1, codigo);
            List<Object[]> result = query.getResultList();
            if (result.isEmpty()) {
                System.out.println("Empleado no encontrado.");
            } else {
                Object[] emp = result.get(0);
                System.out.println("Código: " + emp[0] + ", Nombre: " + emp[1] + ", Teléfono: " + emp[2] +
                        ", Correo: " + emp[3] + ", Dirección: " + emp[4] + ", Puesto: " + emp[5]);
            }
        } finally {
            em.close();
        }
    }

    public static void editarEmpleado() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ingrese el código del empleado a editar: ");
        int codigo = leer.nextInt();
        leer.nextLine();
        System.out.print("Nuevo nombre: ");
        String nombre = leer.nextLine();
        System.out.print("Nuevo teléfono: ");
        String telefono = leer.next();
        System.out.print("Nuevo correo: ");
        String correo = leer.next();
        leer.nextLine();
        System.out.print("Nueva dirección: ");
        String direccion = leer.nextLine();
        System.out.print("Nuevo puesto (Recepcionista/Mecanico): ");
        String p = leer.next();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EditarEmpleado(?, ?, ?, ?, ?, ?)");
            query.setParameter(1, codigo);
            query.setParameter(2, nombre);
            query.setParameter(3, telefono);
            query.setParameter(4, correo);
            query.setParameter(5, direccion);
            query.setParameter(6, p);
            query.executeUpdate();
            tx.commit();
            System.out.println("Empleado editado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al editar empleado: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void eliminarEmpleado() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        System.out.print("Ingrese el código del empleado a eliminar: ");
        int codigo = leer.nextInt();

        try {
            tx.begin();
            Query query = em.createNativeQuery("CALL sp_EliminarEmpleado(?)");
            query.setParameter(1, codigo);
            query.executeUpdate();
            tx.commit();
            System.out.println("Empleado eliminado correctamente.");
        } catch (Exception e) {
            tx.rollback();
            System.err.println("Error al eliminar empleado: " + e.getMessage());
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        menuEmpleado();
    }
}

