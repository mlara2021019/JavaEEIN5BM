<%-- 
    Document   : LlantasAdmin
    Created on : 25/07/2025, 17:03:58
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Styles/CRUD.css" />
    <link rel="icon" href="Images/logo.png" type="Image/png">
    <title>CRUD Llanta</title>
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
                <h2>Agregar / Modificar Llanta</h2>
                <form>
                    <label for="codigoLlanta">Código Llanta</label>
                    <input type="number" id="codigoLlanta" placeholder="Ej: 1020" />

                    <label for="anchoMilimentos">Ancho (mm)</label>
                    <input type="number" id="anchoMilimentos" placeholder="Ancho en milímetros" />

                    <label for="perfil">Perfil</label>
                    <input type="number" id="perfil" placeholder="Perfil de la llanta" />

                    <label for="tipoConstruccion">Tipo Construcción</label>
                    <select id="tipoConstruccion">
                        <option value="Radial">Radial</option>
                        <option value="Diagonal">Diagonal</option>
                        <option value="Cinturada">Cinturada</option>
                    </select>


                    <label for="diametroRin">Diámetro del Rin</label>
                    <input type="number" id="diametroRin" placeholder="Diámetro en pulgadas" />

                    <label for="cargaMaximakg">Carga Máxima (kg)</label>
                    <input type="number" id="cargaMaximakg" placeholder="Ej: 800" />

                    <label for="precioLlanta">Precio de la Llanta</label>
                    <input type="number" id="precioLlanta" placeholder="Q0.00" step="0.01" />

                    <button type="submit">Guardar</button>
                </form>
            </div>

            <!-- Tabla -->
            <div class="tabla-registros">
                <h2>Llantas Registradas</h2>
                <table>
                    <thead>
                        <tr>
                            <th>codigoLlanta</th>
                            <th>anchoMilimentos</th>
                            <th>perfil</th>
                            <th>tipoConstruccion</th>
                            <th>diametroRin</th>
                            <th>cargaMaximakg</th>
                            <th>precioLlanta</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1010</td>
                            <td>195</td>
                            <td>65</td>
                            <td>Radial</td>
                            <td>15</td>
                            <td>750</td>
                            <td>Q450.00</td>
                        </tr>
                        <!-- Más registros aquí -->
                    </tbody>
                </table>
            </div>
        </section>

        <!-- Sección inferior -->
        <section class="acciones">
            <h2>Buscar y Eliminar Llanta</h2>
            <div class="acciones-inputs">
                <div>
                    <label for="buscarLlanta">Buscar No. Llanta</label>
                    <input type="text" id="buscarLlanta" placeholder="Ej: 1010" />
                    <button>Buscar</button>
                </div>
                <div>
                    <label for="eliminarLlanta">Eliminar No. Llanta</label>
                    <input type="text" id="eliminarLlanta" placeholder="Ej: 1010" />
                    <button>Eliminar</button>
                </div>
            </div>
        </section>
    </main>
 
</body>
</html>
