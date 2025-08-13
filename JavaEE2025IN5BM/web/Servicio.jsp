<%-- 
    Document   : Servicios
    Created on : 22/07/2025, 16:22:15
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Servicios - La Caja de Cambios</title>
        <link rel="stylesheet" href="Styles/estilo.css">
        <link rel="stylesheet" href="Fonts/founts.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="icon" href="Images/logo.png" type="image/png">
    </head>
    <body>
        <header>
            <div class="logo">
                <img src="Images/logo.png" alt="La Caja de Cambios" class="logo-img">
                <div>
                    <h1>La Caja de Cambios</h1>
                    <p>Donde cada auto recibe cuidado experto</p>
                </div>
            </div>
            <nav>
                <ul>
                    <li><a href="MenuInicio.jsp">Inicio</a></li>
                    <li><a href="Reparaciones.jsp">Reparación</a></li>
                    <li><a href="Accesorios.jsp">Accesorios</a></li>
                    <li><a href="Repuestos.jsp">Repuestos</a></li>
                    <li><a href="LLantas.jsp">Llantas</a></li>
                    <li><a href="Mecanicos.jsp">Mecanicos</a></li>
                </ul>
            </nav>
        </header>

        <section class="servicios-header">
            <h2>Nuestros Servicios</h2>
            <p>Explora nuestra completa gama de servicios profesionales para tu vehículo</p>
        </div>
    </section>

    <section class="services-grid expanded" id="servicesPage1">
        <!-- Página 1 -->
        <div class="service-card" data-category="mantenimiento">
            <img src="Images/CambioAceite.jpeg" alt="Cambio de aceite" class="service-img">
            <h3>Cambio de Aceite y Filtro</h3>
            <p class="description">Servicio completo con aceite sintético premium y filtro original</p>
            <p class="price">Q350.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="mantenimiento">
            <img src="Images/AlineaciónBalanceo.jpg" alt="Alineación y balanceo" class="service-img">
            <h3>Alineación y Balanceo</h3>
            <p class="description">Ajuste preciso de dirección y balanceo de ruedas para un manejo suave</p>
            <p class="price">Q450.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="mantenimiento">
            <img src="Images/RotacionLlantas.jpeg" alt="Rotación de llantas" class="service-img">
            <h3>Rotación de Llantas</h3>
            <p class="description">Rotación profesional para desgaste parejo de tus neumáticos</p>
            <p class="price">Q200.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="reparaciones">
            <img src="Images/CambioFrenos.jpg" alt="Reparación de frenos" class="service-img">
            <h3>Reparación de Frenos</h3>
            <p class="description">Cambio de pastillas, discos y líquido de frenos</p>
            <p class="price">Q800.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="reparaciones">
            <img src="Images/ServicioSuspension.jpeg" alt="Reparación de suspensión" class="service-img">
            <h3>Reparación de Suspensión</h3>
            <p class="description">Revisión y cambio de amortiguadores y componentes</p>
            <p class="price">Q1,200.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="reparaciones">
            <img src="Images/SistemaTransmision.jpg" alt="Reparación de transmisión" class="service-img">
            <h3>Servicio de Transmisión</h3>
            <p class="description">Cambio de fluido y ajuste de transmisión automática o manual</p>
            <p class="price">Q1,500.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="diagnostico">
            <img src="Images/DComputarizado.jpg" alt="Diagnóstico computarizado" class="service-img">
            <h3>Diagnóstico Computarizado</h3>
            <p class="description">Escaneo completo del sistema electrónico del vehículo</p>
            <p class="price">Q300.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="especializados">
            <img src="Images/Sistemaeléctrico.jpeg" alt="Sistema eléctrico" class="service-img">
            <h3>Reparación Eléctrica</h3>
            <p class="description">Solución de problemas en el sistema eléctrico y electrónico</p>
            <p class="price">Q600.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="especializados">
            <img src="Images/AireAcondicionado.jpg" alt="Sistema eléctrico" class="service-img">
            <h3>Servicio de Aire Acondicionado</h3>
            <p class="description">Revisión, carga de gas, limpieza de ductos y reparación de fallas en el sistema de aire acondicionado.</p>
            <p class="price">Q500.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>

    </section>

    <section class="services-grid expanded" id="servicesPage2" style="display:none;">
        <!-- Página 2 -->
        <div class="service-card" data-category="especializados">
            <img src="Images/AireAcondicionado.jpg" alt="Aire acondicionado" class="service-img">
            <h3>Servicio de Aire Acondicionado</h3>
            <p class="description">Recarga de gas, limpieza y reparación del sistema</p>
            <p class="price">Q700.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="especializados">
            <img src="Images/Turbo.jpg" alt="Reparación de turbo" class="service-img">
            <h3>Reparación de Turbo</h3>
            <p class="description">Mantenimiento y reparación de turbocargadores</p>
            <p class="price">Q2,500.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="especializados">
            <img src="Images/Inyeccion.jpg" alt="Limpieza de inyectores" class="service-img">
            <h3>Limpieza de Inyectores</h3>
            <p class="description">Limpieza ultrasónica de inyectores de combustible</p>
            <p class="price">Q900.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="mantenimiento">
            <img src="Images/CorreaDistribucion.jpg" alt="Cambio de correa" class="service-img">
            <h3>Cambio de Correa de Distribución</h3>
            <p class="description">Reemplazo de correa y tensores con garantía</p>
            <p class="price">Q1,800.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="mantenimiento">
            <img src="Images/Liquidos.jpg" alt="Cambio de líquidos" class="service-img">
            <h3>Cambio de Líquidos</h3>
            <p class="description">Líquido de frenos, dirección, transmisión y refrigerante</p>
            <p class="price">Q1,000.00</p>
            <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
        <div class="service-card" data-category="reparaciones">
            <img src="Images/Motor.jpg" alt="Reparación de motor" class="service-img">
            <h3>Reparación de Motor</h3>
            <p class="description">Desde ajustes menores hasta reconstrucción completa</p>
            <p class="price">Consultar</p>
          <a href="Auto.jsp">
                <button class="add-to-cart view-details">Ver Detalles</button>
            </a>
        </div>
    </section>

    <section class="pagination">
        <button class="page-btn active" data-page="1">1</button>
        <button class="page-btn" data-page="2">2</button>
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

    <script src="#"></script>
</body>
</html>
