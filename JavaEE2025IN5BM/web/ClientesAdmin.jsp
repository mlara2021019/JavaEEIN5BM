<%-- 
    Document   : ClientesAdmin
    Created on : 28/07/2025, 18:04:59
    Author     : Clara Lopez
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="Styles/CRUD.css" />
        <link rel="icon" href="Images/logo.png" type="image/png">
        <title>Administración de Clientes</title>
    </head>
    <body>

        <header class="headerOpciones">
            <div class="bannerHorario">
                <span><i class='bx bx-time-five'></i> Lunes a Viernes: 8:00 – 17:30 – Sábado: 8:00 – 12:00</span>
                <div class="social">
                    <a href="#"><i class='bx bxl-instagram'></i></a>
                    <a href="#"><i class='bx bxl-facebook'></i></a>
                    <a href="#"><i class='bx bxl-whatsapp'></i></a>
                </div>
            </div>
            <div class="bannerInfo">
                <div class="logo">
                    <img src="Images/logo.png" alt="logo" class="logo-img">
                    <h1>La caja de cambios</h1>
                </div>
                <div class="infoGroup">
                    <div class="infoItem">
                        <h4>LLÁMANOS</h4>
                        <span>+502 5967‑7843</span>
                    </div>
                    <div class="infoItem">
                        <h4>E-MAIL</h4>
                        <span>lacajadecambios2025@gmail.com</span>
                    </div>
                    <div class="infoItem">
                        <h4>VISÍTANOS</h4>
                        <span>19 Calle 2‑47 Zona 3 Ciudad Guatemala</span>
                    </div>
                </div>
            </div>
            <nav class="bannerOpciones">
                <ul class="menu">
                    <li><a href="MenuInicioAdmin.jsp">Inicio</a></li>       
                </ul>
            </nav>
        </header>

        <main class="crud-main">
            <section class="top-container">
                <div class="formulario">
                    <h2>Agregar / Modificar Cliente</h2>
                    <form action="Controlador?menu=ClientesAdmin" method="POST">
                        <label for="nombreCliente">Nombre</label>
                        <input type="text" value="${cliente.getNombreCliente()}" name="txtNombreCliente" placeholder="Nombre completo" />

                        <label for="telefonoCliente">Teléfono</label>
                        <input type="text" value="${cliente.getTelefonoCliente()}" name="txtTelefonoCliente" placeholder="59677843" maxlength="8" />

                        <label for="correoCliente">Correo</label>
                        <input type="email" value="${cliente.getCorreoCliente()}" name="txtCorreoCliente" placeholder="cliente@correo.com" />

                        <label for="direccion">Dirección</label>
                        <input type="text" value="${cliente.getDireccion()}" name="txtDireccionCliente" placeholder="Dirección del cliente" />

                        <label for="contrasena">Contraseña</label>
                        <input type="text" value="${cliente.getContrasena()}" name="txtContrasenaCliente" placeholder="Contraseña del cliente" />
                      
                        <div>
                            <input type="submit" name="accion" value="Agregar">
                            <input type="submit" name="accion" value="Actualizar">
                        </div>
                    </form>
                </div>

                <!-- Tabla -->
                <div class="tabla-registros">
                    <h2>Clientes Registrados</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Nombre</th>
                                <th>Teléfono</th>
                                <th>Correo</th>
                                <th>Dirección</th>
                                <th>Contraseña</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cliente" items="${clientes}">
                                <tr>
                                    <td>${cliente.getCodigoCliente()}</td>
                                    <td>${cliente.getNombreCliente()}</td>
                                    <td>${cliente.getTelefonoCliente()}</td>
                                    <td>${cliente.getCorreoCliente()}</td>
                                    <td>${cliente.getDireccion()}</td>
                                    <td>${cliente.getContrasena()}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </section>
            <section class="acciones">
                <h2>Buscar y Eliminar Cliente</h2>
                <div class="acciones-inputs">
                    <div>
                        <label for="buscar-cliente">Buscar Código Cliente</label>
                        <input type="text" id="txtBuscar-cliente" placeholder="Ej: 101" />
                        <button id="btnBuscar-cliente">Buscar</button>
                    </div>
                    <div>
                        <label for="eliminar-cliente">Eliminar Código Cliente</label>
                        <input type="text" id="txtEliminar-cliente" placeholder="Ej: 101" />
                        <button id="btnEliminar-cliente">Eliminar</button>
                    </div>
                </div>
            </section>
        </main>

    </body>
</html>