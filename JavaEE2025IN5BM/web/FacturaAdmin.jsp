<%-- 
    Document   : FacturaAdmin
    Created on : 23 jul 2025, 10:54:03
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="Styles/CRUD.css" />
        <title>CRUD Factura</title>
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
                    <li><a href="DetalleFacturaAdmin.jsp">Detalle factura </a></li>                
                </ul>
            </nav>
        </header>

        <main class="crud-main">
            <section class="top-container">
                <!-- Formulario -->
                <div class="formulario">
                    <h2>Agregar / Modificar Factura</h2>
                    <form>
                        <label for="codigoFactura">No. Factura</label>
                        <input type="text" id="codigoFactura" placeholder="Ej: 1020" />

                        <label for="codigoClienteFactura">Cliente</label>
                        <input type="text" id="codigoClienteFactura" placeholder="Nombre del cliente" />

                        <label for="codigoEmpleadoFactura">Empleado</label>
                        <input type="text" id="codigoEmpleadoFactura" placeholder="Empleado a cargo" />

                        <label for="codigoAutoFactura">Automóvil</label>
                        <input type="text" id="codigoAutoFactura" placeholder="Vehículo" />

                        <label for="fechaEmision">Fecha de emision</label>
                        <input type="text" id="fechaEmision" placeholder="yyyy/mm/dd" />

                        <label for="metodoPago">Metodo de pago</label>
                        <select id="metodoPago">
                            <option value="Efectivo">Effectivo</option>
                            <option value="Targeta">Targeta</option>
                        </select>



                        <button type="submit">Guardar</button>
                    </form>
                </div>

                <!-- Tabla -->
                <div class="tabla-registros">
                    <h2>Facturas Registradas</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>No.Factura</th>
                                <th>Cliente</th>
                                <th>Empleado</th>
                                <th>Auto</th>
                                <th>Gasto</th>
                                <th>Cant.</th>
                                <th>Precio</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1010</td>
                                <td>Oscar</td>
                                <td>Alejandro</td>
                                <td>2</td>
                                <td>Servicio</td>
                                <td>2</td>
                                <td>Q20.00</td>
                            </tr>
                            <!-- Más registros aquí -->
                        </tbody>
                    </table>
                </div>
            </section>

            <!-- Sección inferior -->
            <section class="acciones">
                <h2>Buscar y Eliminar Factura</h2>
                <div class="acciones-inputs">
                    <div>
                        <label for="buscar-factura">Buscar No. Factura</label>
                        <input type="text" id="buscar-factura" placeholder="Ej: 1010" />
                        <button>Buscar</button>
                    </div>
                    <div>
                        <label for="eliminar-factura">Eliminar No. Factura</label>
                        <input type="text" id="eliminar-factura" placeholder="Ej: 1010" />
                        <button>Eliminar</button>
                    </div>
                </div>
            </section>
        </main>

    </body>
</html>
