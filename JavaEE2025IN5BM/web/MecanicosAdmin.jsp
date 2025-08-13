<%-- 
    Document   : MecanicosAdmin
    Created on : 27/07/2025, 19:42:35
    Author     : FAMILIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Styles/CRUD.css" />
    <link rel="icon" href="Images/logo.png" type="image/png">
    <title>Administración de Empleados</title>
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
            <!-- Formulario -->
            <div class="formulario">
                <h2>Agregar / Modificar Empleado</h2>
                <form>
                    <label for="codigoEmpleado">Código del Empleado</label>
                    <input type="text" id="codigoEmpleado" placeholder="Ej: 2" />

                    <label for="nombreEmpleado">Nombre</label>
                    <input type="text" id="nombreEmpleado" placeholder="Ej: Luis" />

                    <label for="telefonoEmpleado">Teléfono</label>
                    <input type="text" id="telefonoEmpleado" placeholder="Ej: 44928374" />

                    <label for="correoEmpleado">Correo</label>
                    <input type="email" id="correoEmpleado" placeholder="Ej: luis@gmail.com" />

                    <label for="direccionEmpleado">Dirección</label>
                    <input type="text" id="direccionEmpleado" placeholder="Ej: Zona 1" />

                    <label for="puestoEmpleado">Puesto</label>
                    <select id="puestoEmpleado">
                        <option value="Recepcionista">Recepcionista</option>
                        <option value="Mecanico">Mecánico</option>
                    </select>

                    <button type="submit">Guardar</button>
                </form>
                <!-- Botón para ir al footer -->
                <button class="scroll-footer-btn" onclick="document.getElementById('footer').scrollIntoView({ behavior: 'smooth' })">
                    Ir al final
                </button>
            </div>

            <!-- Tabla -->
            <div class="tabla-registros">
                <h2>Empleados Registrados</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Teléfono</th>
                            <th>Correo</th>
                            <th>Dirección</th>
                            <th>Puesto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>2</td>
                            <td>Luis</td>
                            <td>44928374</td>
                            <td>luis@gmail.com</td>
                            <td>Zona 1</td>
                            <td>Mecanico</td>
                        </tr>
                        <!-- Más registros aquí -->
                    </tbody>
                </table>
            </div>
        </section>

        <!-- Sección inferior -->
        <section class="acciones">
            <h2>Buscar y Eliminar Empleado</h2>
            <div class="acciones-inputs">
                <div>
                    <label for="buscar-empleado">Buscar Empleado por Codigo</label>
                    <input type="text" id="buscar-empleado" placeholder="Ej: 3" />
                    <button>Buscar</button>
                </div>
                <div>
                    <label for="eliminar-empleado">Eliminar Empleado por Codigo</label>
                    <input type="text" id="eliminar-empleado" placeholder="Ej: 3" />
                    <button>Eliminar</button>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer para anclaje del scroll -->
    <footer id="footer" style="padding: 20px; text-align:center;">
        <p>&copy; 2025 La caja de cambios - Todos los derechos reservados.</p>
    </footer>

</body>
</html>
