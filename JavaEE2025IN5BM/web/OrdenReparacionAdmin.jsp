<%-- 
    Document   : OrdenReparacionAdmin
    Created on : 28/07/2025, 14:54:42
    Author     : 1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Styles/CRUD.css" />
    <link rel="icon" href="Images/logo.png" type="image/png">
    <title>Administración de Órdenes de Reparación</title>
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
                <img src="../Images/logo.png" alt="logo" class="logo-img">
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
                <li><a href="ReparacionesAdmin.jsp">Reparaciones</a></li>
            </ul>
        </nav>
    </header>

    <main class="crud-main">
        <section class="top-container">
            <!-- Formulario -->
            <div class="formulario">
                <h2>Agregar / Modificar Orden de Reparación</h2>
                <form>
                    <label for="codigoOrden">Código Orden</label>
                    <input type="text" id="codigoOrden" placeholder="Ej: 100" />

                    <label for="codigoAuto">Código Auto</label>
                    <input type="text" id="codigoAuto" placeholder="Ej: 2" />

                    <label for="codigoCliente">Código Cliente</label>
                    <input type="text" id="codigoCliente" placeholder="Ej: 5" />

                    <label for="codigoEmpleado">Código Empleado</label>
                    <input type="text" id="codigoEmpleado" placeholder="Ej: 3" />

                    <label for="codigoReparacion">Código Reparación</label>
                    <input type="text" id="codigoReparacion" placeholder="Ej: 1" />

                    <label for="fechaIngreso">Fecha Ingreso</label>
                    <input type="date" id="fechaIngreso" />

                    <label for="estado">Estado</label>
                    <select id="estado">
                        <option value="Pendiente">Pendiente</option>
                        <option value="En proceso">En proceso</option>
                        <option value="Finalizado">Finalizado</option>
                    </select>

                    <button type="submit">Guardar</button>
                    <a href="ReparacionesAdmin.jsp"><button type="button">Ver Reparaciones</button></a>
                </form>
            </div>

            <!-- Tabla -->
            <div class="tabla-registros">
                <h2>Órdenes Registradas</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Auto</th>
                            <th>Cliente</th>
                            <th>Empleado</th>
                            <th>Reparación</th>
                            <th>Fecha</th>
                            <th>Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>100</td>
                            <td>2</td>
                            <td>5</td>
                            <td>3</td>
                            <td>1</td>
                            <td>2025-07-28</td>
                            <td>Pendiente</td>
                        </tr>
                        <!-- Más registros -->
                    </tbody>
                </table>
            </div>
        </section>

        <!-- Sección inferior -->
        <section class="acciones">
            <h2>Buscar y Eliminar Orden</h2>
            <div class="acciones-inputs">
                <div>
                    <label for="buscar-orden">Buscar Código</label>
                    <input type="text" id="buscar-orden" placeholder="Ej: 100" />
                    <button>Buscar</button>
                </div>
                <div>
                    <label for="eliminar-orden">Eliminar Código</label>
                    <input type="text" id="eliminar-orden" placeholder="Ej: 100" />
                    <button>Eliminar</button>
                </div>
            </div>
        </section>
    </main>
</body>
</html>

