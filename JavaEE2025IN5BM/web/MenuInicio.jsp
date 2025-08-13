<%-- 
    Document   : MenuInicio
    Created on : 22/07/2025, 16:37:58
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Caja de cambios</title>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet" />
        <link rel="icon" href="Images/logo.png" type="image/png">
        <link rel="stylesheet" href="Styles/estilo.css" />
        <link rel="stylesheet" href="Founts/founts.css">
    </head>
    <body>
        <div class="topbar">
            <span><i class='bx bx-time-five'></i> Lunes a Viernes: 8:00 – 17:30 – Sábado: 8:00 – 12:00</span>
            <div class="social">
                <a href="#"><i class='bx bxl-instagram'></i></a>
                <a href="#"><i class='bx bxl-facebook'></i></a>
                <a href="#"><i class='bx bxl-whatsapp'></i></a>
            </div>
        </div>

        <section class="hero-section">
            <video autoplay muted loop id="bg-video">
                <source src="Images/videocarro.mp4" type="video/mp4">
                No se logro cargar el video.
            </video>
            <div class="hero-content">
                <h1>Caja de cambios</h1>
                <h2>Profesionales a su servicio</h2>
                <p>Todo lo que un automóvil necesita y más a su disposición</p>
            </div>    
        </section>

        <header class="header">
            <div class="logo-container">
                <div class="logo">La Caja de cambios</div>
                <div class="logo_image">
                    <img src="Images/logo.png" alt="Logo" />
                </div>
            </div>
            <div class="contact-block">

                <div class="contact-item">
                    <i class='bx bx-phone-call'></i>
                    <div>
                        <h4>Llámanos</h4>
                        <span>+502 5967‑7843</span>
                    </div>
                </div>

                <div class="contact-item">
                    <i class='bx bx-envelope'></i>
                    <div>
                        <h4>E‑mail</h4>
                        <span>lacajadecambios2025@gmail.com</span>
                    </div>
                </div>

                <div class="contact-item">
                    <i class='bx bx-map'></i>
                    <div>
                        <h4>Visítanos</h4>
                        <span>19 Calle 2‑47 Zona 3<br>Ciudad Guatemala</span>
                    </div>
                </div>
                <div class="contact-item user-icon-wrapper" onclick="mostrarUsuario()">
                    <i class='bx bx-user-circle'></i>
                    <div>
                        <h4>Mi cuenta</h4>
                        <span class="perfil">Perfil</span>
                    </div>
                    <div class="user-menu" id="userMenu">
                        <img src="Images/ususario.png" class="user-avatar" alt="Avatar">
                        <p class="user-name">EjemploUsuario</p>
                        <p class="user-email">ejemploUsuario@gmail.com</p>
                        <button id="buttonUsuario">Cambiar cuenta</button>
                        <button id="buttonUsuario">Cerrar Sesión</button>
                    </div>
                </div>
                <div class="navMenu">
                    <nav class="navbar">
                        <a href="index.jsp">Inicio</a>
                        <a href="acercade.jsp">Quienes Somos</a>
                        <a href="Servicio.jsp">Servicios</a>
                        <a href="Mecanicos.jsp">Mecanicos</a>
                        <a href="LLantas.jsp">Llantas</a>
                        <a href="Repuestos.jsp">Respuestos</a>
                        <a href="Accesorios.jsp">Accesorios</a>
                        <a href="Reparaciones.jsp">Reparaciones</a>
                        <a href="registroCompra.jsp">Compras</a>
                    </nav>
                </div>
            </div>
        </header>

        <section class="services-section">
            <h2>Servicios Destacados</h2>
            <div class="services-grid">
                <div class="service-card" data-category="mantenimiento">
                    <img src="Images/CambioAceite.jpeg" alt="Cambio de aceite" class="service-img">
                    <h3>Cambio de Aceite</h3>
                    <p class="service-description">Servicio completo de cambio de aceite y filtro para mantener tu motor en óptimas condiciones</p>
                    <p class="service-price">Q150.99</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>
                <div class="service-card" data-category="reparaciones">
                    <img src="Images/AlineaciónBalanceo.jpg" alt="Alineación y balanceo" class="service-img">
                    <h3>Alineación y Balanceo</h3>
                    <p class="service-description">Servicio profesional de alineación de dirección y balanceo de ruedas para un manejo suave</p>
                    <p class="service-price">Q175.99</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>
                <div class="service-card" data-category="diagnostico">
                    <img src="Images/DComputarizado.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Diagnóstico Computarizado</h3>
                    <p class="service-description">Análisis completo del sistema electrónico de tu vehículo para detectar fallas</p>
                    <p class="service-price">Q100.99</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>
                <div class="service-card" data-category="mantenimiento">
                    <img src="Images/AireAcondicionado.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Aire Acondicionado Automotriz</h3>
                    <p class="service-description">Carga de gas, revisión de compresor y limpieza del sistema para un clima ideal dentro del vehículo.</p>
                    <p class="service-price">Q145.99</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>
                <div class="service-card" data-category="diagnostico">
                    <img src="Images/CambioFrenos.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Revisión y Cambio de Frenos</h3>
                    <p class="service-description">SInspección de pastillas, discos y sistema hidráulico para garantizar una frenada segura y eficaz. </p>
                    <p class="service-price">Q199.99</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>
                <div class="service-card" data-category="mantenimiento">
                    <img src="Images/CambioBateria.jpeg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Cambio de Bateria</h3>
                    <p class="service-description">Reemplazo seguro y rápido de la batería con revisión de carga y sistema eléctrico.</p>
                    <p class="service-price">Q99.99</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>
                <div class="service-card" data-category="mantenimiento">
                    <img src="Images/LimpiezaInyectores.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Limpieza de Inyectores</h3>
                    <p class="service-description">Proceso especializado que elimina impurezas para mejorar el consumo de combustible y el rendimiento del motor.</p>
                    <p class="service-price">Q79.99</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>
                <div class="service-card" data-category="diagnostico">
                    <img src="Images/ServicioSuspension.jpeg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Servicio de Suspensión</h3>
                    <p class="service-description">Evaluación y mantenimiento de amortiguadores, resortes y bujes para una conducción cómoda y segura.</p>
                    <p class="service-price">Q189.99</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>



            </div>
            <a href="Servicio.jsp" class="btn-all-services">Ver Todos los Servicios</a>
        </section>

        <section class="services-section">
            <h3>Reparaciones</h3>
            <div class="services-grid">
                <div class="service-card" data-category="reparaciones">
                    <img src="Images/Reparacion de motor.jpg" alt="Reparación de motor" class="service-img">
                    <h4>Reparación de Motor</h4>
                    <p class="service-description">Diagnóstico y reparación de fallas en el motor para devolverle la potencia y eficiencia.</p>
                    <p class="service-price">Q850.00</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>

                <div class="service-card" data-category="reparaciones">
                    <img src="Images/Cambio de suspensión.jpg" alt="Cambio de suspensión" class="service-img">
                    <h4>Cambio de Suspensión</h4>
                    <p class="service-description">Reemplazo de amortiguadores, resortes y componentes dañados del sistema de suspensión.</p>
                    <p class="service-price">Q450.00</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>

                <div class="service-card" data-category="reparaciones">
                    <img src="Images/Reparación de transmisión.jpg" alt="Reparación de transmisión" class="service-img">
                    <h4>Reparación de Transmisión</h4>
                    <p class="service-description">Solución a problemas de caja automática o manual para cambios suaves y precisos.</p>
                    <p class="service-price">Q1200.00</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>

                <div class="service-card" data-category="reparaciones">
                    <img src="Images/Cambio de embrague.jpg" alt="Cambio de bujías" class="service-img">
                    <h4>Cambio de Embrague</h4>
                    <p class="service-description">Sustitución de disco, prensa y balero para un correcto funcionamiento del sistema de embrague.</p>
                    <p class="service-price">Q650.00</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>

                <div class="service-card" data-category="reparaciones">
                    <img src="../Images/Reparación de frenos ABS.jpg" alt="Reparación de frenos ABS" class="service-img">
                    <h4>Reparación de Frenos ABS</h4>
                    <p class="service-description">Solución de fallos en sensores o módulos del sistema ABS para máxima seguridad.</p>
                    <p class="service-price">Q390.00</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>

                <div class="service-card" data-category="reparaciones">
                    <img src="../Images/Reparación de sistema eléctrico.jpg" alt="Diagnóstico electrónico" class="service-img">
                    <h4>Reparación del Sistema Eléctrico</h4>
                    <p class="service-description">Detección y corrección de fallas eléctricas, desde luces hasta computadora central.</p>
                    <p class="service-price">Q300.00</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>

                <div class="service-card" data-category="reparaciones">
                    <img src="Images/Cambio de rótulas.jpg" alt="Reparación de suspensión" class="service-img">
                    <h4>Cambio de Rótulas</h4>
                    <p class="service-description">Reemplazo de rótulas desgastadas para mantener la estabilidad y seguridad de la dirección.</p>
                    <p class="service-price">Q220.00</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>

                <div class="service-card" data-category="reparaciones">
                    <img src="Images/Reparación de fugas.jpg" alt="Limpieza de inyectores" class="service-img">
                    <h4>Reparación de Fugas</h4>
                    <p class="service-description">Detección y sellado de fugas de aceite, refrigerante o combustible.</p>
                    <p class="service-price">Q180.00</p>
                    <button class="service-btn view-details">Ver Detalles</button>
                </div>

            </div>
            <a href="Reparaciones.jsp" class="btn-all-services">Ver Todas las Reparaciones</a>
        </section>
        <script>
            function mostrarUsuario() {
                const menu = document.getElementById("userMenu");
                menu.style.display = menu.style.display === "block" ? "none" : "block";
            }

            window.addEventListener("click", function (e) {
                const menu = document.getElementById("userMenu");
                const icon = document.querySelector(".user-icon-wrapper");
                if (!icon.contains(e.target)) {
                    menu.style.display = "none";
                }
            });
        </script>
    </body>

</html>
