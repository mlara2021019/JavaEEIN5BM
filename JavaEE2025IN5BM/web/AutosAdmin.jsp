<%-- 
    Document   : AutosAdmin
    Created on : 28/07/2025, 18:04:12
    Author     : Clara Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Styles/CRUD.css" />
    <link rel="icon" href="Images/logo.png" type="image/png">
    <title>Administración de Autos</title>
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
                <h2>Agregar / Modificar Auto</h2>
                <form>
                    <label for="codigoAuto">Código Auto</label>
                    <input type="text" id="codigoAuto" placeholder="Ej: 1001" />

                    <label for="codigoClienteAuto">Código Cliente</label>
                    <input type="text" id="codigoClienteAuto" placeholder="Código del cliente" />

                    <label for="placaAuto">Placa</label>
                    <input type="text" id="placaAuto" placeholder="P123ABC" />

                    <label for="marcaAuto">Marca</label>
                    <input type="text" id="marcaAuto" placeholder="Toyota" />

                    <label for="modeloAuto">Modelo</label>
                    <input type="text" id="modeloAuto" placeholder="Corolla 2022" />

                    <label for="colorAuto">Color</label>
                    <input type="text" id="colorAuto" placeholder="Rojo" />

                    <button type="submit">Guardar</button>
                </form>
            </div>
            <div class="tabla-registros">
                <h2>Autos Registrados</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Código Auto</th>
                            <th>Código Cliente</th>
                            <th>Placa</th>
                            <th>Marca</th>
                            <th>Modelo</th>
                            <th>Color</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>1</td>
                            <td>P123AAA</td>
                            <td>Toyota</td>
                            <td>Corolla</td>
                            <td>Blanco</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        <section class="acciones">
            <h2>Buscar y Eliminar Auto</h2>
            <div class="acciones-inputs">
                <div>
                    <label for="buscar-auto">Buscar Código Auto</label>
                    <input type="text" id="buscar-auto" placeholder="Ej: 1001" />
                    <button>Buscar</button>
                </div>
                <div>
                    <label for="eliminar-auto">Eliminar Código Auto</label>
                    <input type="text" id="eliminar-auto" placeholder="Ej: 1001" />
                    <button>Eliminar</button>
                </div>
            </div>
        </section>
    </main>

</body>
</html>
