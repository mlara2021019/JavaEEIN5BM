<%-- 
    Document   : ReparacionesAdmin
    Created on : 28/07/2025, 14:53:15
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
    <title>Administración de Reparaciones</title>
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
                <li><a href="OrdenReparacionAdmin.jsp">Orden Reparación</a></li>
            </ul>
        </nav>
    </header>

    <main class="crud-main">
        <section class="top-container">
            <!-- Formulario -->
            <div class="formulario">
                <h2>Agregar / Modificar Reparación</h2>
                <form>
                    <label for="codigoReparacion">Código Reparación</label>
                    <input type="text" id="codigoReparacion" placeholder="Codigo de reparacion" />

                    <label for="nombreReparacion">Nombre</label>
                    <input type="text" id="nombreReparacion" placeholder="Ingrese el nombre de la reparacion" />

                    <label for="descripcionReparacion">Descripción</label>
                    <input type="text" id="descripcionReparacion" placeholder="Ingrese la descripcion" />

                    <label for="precioReparacion">Precio</label>
                    <input type="text" id="precioReparacion" placeholder="Ingrese el precio" />

                    <button type="submit">Guardar</button>
                    <a href="OrdenReparacionAdmin.jsp"><button type="button">Ver Órdenes</button></a>
                </form>
            </div>

            <!-- Tabla -->
            <div class="tabla-registros">
                <h2>Reparaciones Registradas</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Descripción</th>
                            <th>Precio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Cambio de aceite</td>
                            <td>Aceite sintético 5w-30 + filtro</td>
                            <td>Q250.00</td>
                        </tr>
                        <!-- Más registros -->
                    </tbody>
                </table>
            </div>
        </section>

        <!-- Sección inferior -->
        <section class="acciones">
            <h2>Buscar y Eliminar Reparación</h2>
            <div class="acciones-inputs">
                <div>
                    <label for="buscar-reparacion">Buscar Código</label>
                    <input type="text" id="buscar-reparacion" placeholder="Ej: 1" />
                    <button>Buscar</button>
                </div>
                <div>
                    <label for="eliminar-reparacion">Eliminar Código</label>
                    <input type="text" id="eliminar-reparacion" placeholder="Ej: 1" />
                    <button>Eliminar</button>
                </div>
            </div>
        </section>
    </main>
</body>
</html>
