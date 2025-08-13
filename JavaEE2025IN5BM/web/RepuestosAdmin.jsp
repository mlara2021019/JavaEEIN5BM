<%-- 
    Document   : RepuestosAdmin
    Created on : 28 jul 2025, 14:04:39
    Author     : VictorHugo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Styles/CRUD.css" />
    <link rel="icon" href="Images/logo.png" type="image/png">
    <title>Administración de Repuestos</title>
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
                <h2>Agregar / Modificar Repuesto</h2>
                <form>
                    <label for="codigoRepuesto">Código Repuesto</label>
                    <input type="text" id="codigoRepuesto" placeholder="Ej: 1001" />

                    <label for="nombreRepuesto">Nombre Repuesto</label>
                    <input type="text" id="nombreRepuesto" placeholder="Nombre del repuesto" />

                    <label for="descripcionRepuesto">Descripción</label>
                    <input type="text" id="descripcionRepuesto" placeholder="Descripción del repuesto" />

                    <label for="precioRepuesto">Precio</label>
                    <input type="text" id="precioRepuesto" placeholder="Ej: 150.00" />

                    <label for="stockRepuesto">Stock</label>
                    <input type="number" id="stockRepuesto" placeholder="Cantidad en inventario" />

                    <label for="estadoRepuesto">Estado</label>
                    <select id="estadoRepuesto">
                        <option value="Disponibles">Disponibles</option>
                        <option value="Agotados">Agotados</option>
                    </select>

                    <button type="submit">Guardar</button>
                </form>
            </div>

            
            <div class="tabla-registros">
                <h2>Repuestos Registrados</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Descripción</th>
                            <th>Precio</th>
                            <th>Stock</th>
                            <th>Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Bujía</td>
                            <td>Bujía NGK para motor 1.6</td>
                            <td>Q45.00</td>
                            <td>20</td>
                            <td>Disponibles</td>
                        </tr>
                        
                    </tbody>
                </table>
            </div>
        </section>

        
        <section class="acciones">
            <h2>Buscar y Eliminar Repuesto</h2>
            <div class="acciones-inputs">
                <div>
                    <label for="buscar-repuesto">Buscar Código</label>
                    <input type="text" id="buscar-repuesto" placeholder="Ej: 1001" />
                    <button>Buscar</button>
                </div>
                <div>
                    <label for="eliminar-repuesto">Eliminar Código</label>
                    <input type="text" id="eliminar-repuesto" placeholder="Ej: 1001" />
                    <button>Eliminar</button>
                </div>
            </div>
        </section>
    </main>

</body>
</html>

