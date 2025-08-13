<%-- 
    Document   : factura
    Created on : 22/07/2025, 22:42:29
    Author     : Clara Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/png" href="Images/logo.png" />
    <link rel="stylesheet" href="Styles/factura.css" />
    <link rel="stylesheet" href="Founts/founts.css" />
    <title>Factura</title>
</head>
<body class="cuerpoHTML">

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

        <!-- Menú -->
        <nav class="bannerOpciones">
            <ul class="menu">
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Página Principal</a></li>
                <li><a href="#">Acerca de nosotros</a></li>
            </ul>
        </nav>

    </header>

    <section>
        <div class="containerBody">
            <div class="containerResumen">
                <h1 class="titulo">Estado de la compra</h1>

                <table class="tablaInformacion">
                    <thead>
                        <tr>
                            <th>No.Factura</th>
                            <th>Cliente</th>
                            <th>Empleado a cargo</th>
                            <th>Automóvil</th>
                            <th>Tipo de gasto</th>
                            <th>Cantidad</th>
                            <th>Precio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1010</td>
                            <td>Oscar</td>
                            <td>Alejandro Pineda</td>
                            <td>2</td>
                            <td>Servicio</td>
                            <td>2</td>
                            <td>Q20.00</td>
                        </tr>
                    </tbody>
                </table>

                <p class="total">Total: Q0.00</p>

                <label for="metodoPago">Método de pago</label>
                <select id="metodoPago">
                    <option value="Efectivo">Efectivo</option>
                    <option value="Tarjeta">Tarjeta</option>
                </select>

                <button class="botonRegresar">Finalizar Revisión</button>
            </div>
        </div>
    </section>

    <footer>
        <div class="footer-content">
            <div class="footer-section">
                <img src="Images/logo.png" alt="La Caja de Cambios" class="footer-logo">
                <p>Expertos en cuidado automotriz desde 2025.</p>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-whatsapp"></i></a>
                </div>
            </div>
            <div class="footer-section">
                <h3>Horario</h3>
                <p>Lunes a Viernes: 8am - 6pm</p>
                <p>Sábados: 9am - 2pm</p>
                <p>Domingos: Cerrado</p>
            </div>
            <div class="footer-section">
                <h3>Contacto</h3>
                <p><i class="fas fa-map-marker-alt"></i> Zona 3, Barrio Gallito</p>
                <p><i class="fas fa-phone"></i> +502 7896 5412</p>
                <p><i class="fas fa-envelope"></i> cajadecambios@gmail.com</p>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2025 Caja de Cambios. Todos los derechos reservados.</p>
        </div>
    </footer>

</body>
</html>

