<%-- 
    Document   : contactanos.jsp
    Created on : 22/07/2025, 22:46:09
    Author     : Clara Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Gear - Contáctanos</title>
    <link rel="stylesheet" href="Styles/contactanos.css" />
    <link rel="stylesheet" href="Founts/founts.css">
    </head>
<body>

    <header class="header">
  <div class="logo-container">
    <div class="logo">La Caja de cambios</div>
    <div class="logo_image">
      <img src="Images/logo.png" alt="Logo" />
    </div>
  </div>
  <nav class="navbar">
    <a href="index.jsp">Inicio</a>
    <a href="#">Acerca de</a>
  </nav>
</header>

    <main class="contact-page-content">
        <div class="container">
            <h1 class="page-title">CONTÁCTANOS</h1>

            <div class="contact-grid">
                <div class="form-section">
                    <h2>RESERVA TU CITA O COTIZA TU SERVICIO</h2>
                    <form action="#" method="POST">
                        <div class="form-group">
                            <label for="nombre">Nombre: *</label>
                            <input type="text" id="nombre" name="nombre" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email: *</label>
                            <input type="email" id="email" name="email" placeholder="you@yourmail.com" required>
                        </div>
                        <div class="form-group">
                            <label for="telefono">Teléfono: *</label>
                            <input type="tel" id="telefono" name="telefono" required>
                        </div>
                        <div class="form-group">
                            <label for="tipoServicio">Tipo de Servicio: *</label>
                            <select id="tipoServicio" name="tipoServicio" required>
                                <option value="basicoMayor" selected>Básico Mayor</option>
                                <option value="cambioAceite">Cambio de Aceite</option>
                                <option value="revisionFrenos">Revisión de Frenos</option>
                                <option value="diagnostico">Diagnóstico</option>
                                <option value="otro">Otro</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="mensajes">Mensajes:</label>
                            <textarea id="mensajes" name="mensajes" rows="6"></textarea>
                        </div>
                        <button type="submit" class="submit-button">Enviar</button>
                    </form>
                </div>

                <div class="map-section">
                    <div class="google-map-embed">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3860.437335992385!2d-90.52406392401606!3d14.631098585858842!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8589a2215d112585%3A0xf54c55ecb9365590!2s19%20Calle%2C%20Cdad.%20de%20Guatemala!5e0!3m2!1ses!2sgt!4v1753130090422!5m2!1ses!2sgt"
                            width="600"
                            height="450"
                            style="border:0;"
                            allowfullscreen=""
                            loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade">
                        </iframe>
                        <div class="map-info-bubble">
                            <h3>Auto Gear</h3>
                            <p>19 Calle 11-19 Zona 10 Ciudad de Guatemala</p>
                            <p>4.2 ★★★★★ (123 reseñas)</p>
                            <a href="https://maps.google.com/?q=Auto+Gear+Guatemala" target="_blank">Ver mapa más grande</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    </body>

    <footer class="site-footer">
        <div class="container footer-grid">
            <div class="footer-section about-us">
                <img src="Images/logo.png" alt="La Caja de Cambios" class="footer-logo">
                <p>
                    Somos un centro de servicio automotriz, con años de experiencia en calidad, buscando resolver las expectativas de nuestros clientes por medio de procesos eficientes que garantizan nuestro servicio.
                </p>
            </div>
            <div class="footer-section links">
                <h3>LINKS</h3>
                <ul>
                    <li><a href="#">INICIO</a></li>
                    <li><a href="#">QUIENES SOMOS</a></li>
                    <li><a href="#">SERVICIOS</a></li>
                    <li><a href="#">CONTACTO</a></li>
                </ul>
            </div>
            <div class="footer-section horarios">
                <h3>HORARIOS</h3>
                <ul>
                    <li>LUNES <span>8:00 - 17:00</span></li>
                    <li>MARTES <span>8:00 - 17:00</span></li>
                    <li>MIÉRCOLES <span>8:00 - 17:00</span></li>
                    <li>JUEVES <span>8:00 - 17:00</span></li>
                    <li>VIERNES <span>8:00 - 17:00</span></li>
                    <li>SÁBADO <span>8:00 - 12:00</span></li>
                </ul>
            </div>
            <div class="footer-section contact-info">
                <h3>CONTACTO</h3>
                <div class="contact-item">
                    <i class="fas fa-map-marker-alt"></i>
                    <h4>VISÍTANOS</h4>
                    <p>19 Calle 11-19 Zona 10</p>
                    <p>Ciudad Guatemala</p>
                </div>
                <div class="contact-item">
                    <i class="fas fa-envelope"></i>
                    <h4>ESCRÍBENOS</h4>
                    <p>info@autogeargt.com</p>
                </div>
                <div class="contact-item">
                    <i class="fas fa-phone"></i>
                    <h4>LLÁMANOS</h4>
                    <p>+502 457890XX</p>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>Política de Privacidad</p>
        </div>
    </footer>

    <a href="#" class="fixed-button">
        <i class="fas fa-comment-dots"></i> Escríbenos
    </a>

</body>
</html>
</body>
</html>