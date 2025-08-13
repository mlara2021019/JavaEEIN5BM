<%-- 
    Document   : ServicoAdmin
    Created on : 24/07/2025, 15:38:46
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Styles/CRUD.css" />
    <title>CRUD Servicio</title>
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
                    <span>19 Calle 2‑47 Zona 3 Ciudad Guatemala</span>
                </div>
            </div>
        </div>
        <nav class="bannerOpciones">
            <ul class="menu">
                <li><a href="MenuInicioAdmin.jsp">Inicio</a></li>
                <li><a href="DetalleServicioAdmin.jsp">Detalle Servicio</a></li>                
            </ul>
        </nav>
    </header>

    <main class="crud-main">
        <section class="top-container">
            <!-- Formulario -->
            <div class="formulario">
                <h2>Agregar / Modificar Servicio</h2>
                <form>
                    <label for="codigo-servicio">Código Servicio</label>
                    <input type="number" id="codigo-servicio" placeholder="Ej: 1" />

                    <label for="nombre-servicio">Nombre del Servicio</label>
                    <input type="text" id="nombre-servicio" placeholder="Ej: Cambio de aceite" />

                    <label for="descripcion-servicio">Descripción</label>
                    <input type="text" id="descripcion-servicio" placeholder="Detalle del servicio" />

                    <label for="precio-servicio">Precio</label>
                    <input type="number" step="0.01" id="precio-servicio" placeholder="Ej: 150.00" />

                    <button type="submit">Guardar</button>
                </form>
            </div>

            <!-- Tabla -->
            <div class="tabla-registros">
                <h2>Servicios Registrados</h2>
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
                            <td>Incluye revisión de filtro</td>
                            <td>Q150.00</td>
                        </tr>
                        <!-- Más registros aquí -->
                    </tbody>
                </table>
            </div>
        </section>

        <!-- Sección inferior -->
        <section class="acciones">
            <h2>Buscar y Eliminar Servicio</h2>
            <div class="acciones-inputs">
                <div>
                    <label for="buscar-servicio">Buscar Código</label>
                    <input type="text" id="buscar-servicio" placeholder="Ej: 1" />
                    <button>Buscar</button>
                </div>
                <div>
                    <label for="eliminar-servicio">Eliminar Código</label>
                    <input type="text" id="eliminar-servicio" placeholder="Ej: 1" />
                    <button>Eliminar</button>
                </div>
            </div>
        </section>
    </main>

</body>
</html>
