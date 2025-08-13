<%-- 
    Document   : DetalleServicio
    Created on : 27/07/2025, 15:20:32
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Styles/CRUD.css">
    <link rel="icon" href="Images/logo.png" type="image/png">
    <title>Administración Detalle Servicio</title>
</head>
<body>
    <header class="headerOpciones">
        <div class="bannerHorario">
            <span><i class="bx bx-time-five"></i> Lunes a Viernes: 8:00 - 17:30 | Sábado: 8:00 - 12:00</span>
            <div class="social">
                <a href="#"><i class="bx bxl-instagram"></i></a>
                <a href="#"><i class="bx bxl-facebook"></i></a>
                <a href="#"><i class="bx bxl-whatsapp"></i></a>
            </div>
        </div>
        <div class="bannerInfo">
            <div class="logo">
                <img src="Images/logo.png" alt="logo" class="logo-img">
                <h1>La Caja de Cambios</h1>
            </div>
            <div class="infoGroup">
                <div class="infoItem">
                    <h4>LLÁMANOS</h4>
                    <span>+502 5967-7843</span>
                </div>
                <div class="infoItem">
                    <h4>E-MAIL</h4>
                    <span>lacajadecambios2025</span>
                </div>
                <div class="infoItem">
                    <h4>VISÍTANOS</h4>
                    <span>19 calle 2-47 Zona 3 Ciudad Guatemala</span>
                </div>
            </div>
        </div>
        <nav class="bannerOpciones">
            <ul class="menu">
                <li><a href="MenuInicioAdmin.jsp">Inicio</a></li>
                <li><a href="ServicioAdmin.jsp">Servicios</a></li>
            </ul>
        </nav>
    </header>

    <main class="crud-main">
        <section class="top-container">
            <div class="formulario">
                <h2>Agregar / Modificar Orden de Servicio</h2>
                <form>
                    <label for="codigoOrden">Código Orden de Servicio</label>
                    <input type="text" id="codigoOrden" placeholder="Ej: 1001">

                    <label for="codigoAuto">Código Auto</label>
                    <input type="text" id="codigoAuto" placeholder="Ej: 2001">

                    <label for="codigoCliente">Código Cliente</label>
                    <input type="text" id="codigoCliente" placeholder="Ej: 3001">

                    <label for="codigoEmpleado">Código Empleado</label>
                    <input type="text" id="codigoEmpleado" placeholder="Ej: 4001">

                    <label for="codigoServicio">Código Servicio</label>
                    <input type="text" id="codigoServicio" placeholder="Ej: 5001">

                    <label for="fechaIngreso">Fecha de Ingreso</label>
                    <input type="date" id="fechaIngreso">

                    <label for="estado">Estado</label>
                    <select id="estado">
                        <option value="Pendiente">Pendiente</option>
                        <option value="En proceso">En proceso</option>
                        <option value="Finalizado">Finalizado</option>
                    </select>
                </form>
            </div>

            <div class="tabla-registros">
                <h2>Órdenes Registradas</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Auto</th>
                            <th>Cliente</th>
                            <th>Empleado</th>
                            <th>Servicio</th>
                            <th>Fecha</th>
                            <th>Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1001</td>
                            <td>2001</td>
                            <td>3001</td>
                            <td>4001</td>
                            <td>5001</td>
                            <td>2025-07-26</td>
                            <td>Pendiente</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>

        <section class="acciones">
            <h2>Buscar y Eliminar Órdenes</h2>
            <div class="acciones-inputs">
                <div>
                    <label for="buscarOrden">Buscar Código Orden</label>
                    <input type="text" id="buscarOrden" placeholder="Ej: 1001">
                    <button>Buscar</button>
                </div>
                <div>
                    <label for="eliminarOrden">Eliminar Código Orden</label>
                    <input type="text" id="eliminarOrden" placeholder="Ej: 1001">
                    <button>Eliminar</button>
                </div>
            </div>
        </section>
    </main>
</body>
</html>

