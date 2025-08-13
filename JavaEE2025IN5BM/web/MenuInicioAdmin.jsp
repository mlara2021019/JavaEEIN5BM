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
            <span><i class='bx bx-time-five'></i> Lunes a Viernes: 8:00 ? 17:30 ? Sábado: 8:00 ? 12:00</span>
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
                <h2>Addministracion de servicios</h2>
                <p>Administracion para agregar, modificar , buscar y eliminar datos dentro de nuestros servicios</p>
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
                        <span>+502 5967?7843</span>
                    </div>
                </div>

                <div class="contact-item">
                    <i class='bx bx-envelope'></i>
                    <div>
                        <h4>E?mail</h4>
                        <span>lacajadecambios2025@gmail.com</span>
                    </div>
                </div>

                <div class="contact-item">
                    <i class='bx bx-map'></i>
                    <div>
                        <h4>Visítanos</h4>
                        <span>19?Calle 2?47 Zona 3<br>Ciudad Guatemala</span>
                    </div>
                </div>
                <div class="contact-item user-icon-wrapper" onclick="mostrarUsuario()">
                    <i class='bx bx-user-circle'></i>
                    <div>
                        <h4>Mi cuenta</h4>
                        <span class="perfil">Perfil</span>
                    </div>
                    <div class="user-menu" id="userMenu">
                        <img src="Images/ususarioAdmin.png" class="user-avatar" alt="Avatar">
                        <p class="user-name">EjemploUsuario</p>
                        <p class="user-email">ejemploUsuario@gmail.com</p>
                        <button id="buttonUsuario">Cambiar cuenta</button>
                        <button id="buttonUsuario">Cerrar Sesión</button>
                    </div>
                </div>
                <div class="navMenu">
                    <nav class="navbar">
                        <a href="index.jsp">Inicio</a>
                        <a href="MenuInicio.jsp">Pagina web</a>
                </div>
            </div>
        </header>

        <section class="services-section">
            <h2>Opciones Administrativas</h2>
            <div class="services-grid">
                <div class="service-card" data-category="mantenimiento">
                    <img src="Images/mecanicosbannerxd.jpg" alt="Cambio de aceite" class="service-img">
                    <h3>Empleados</h3>
                    <p class="service-description">Mecanicos y recepcionistas presentes en el taller</p>            
                    <a href="MecanicosAdmin.jsp">
                        <button class="service-btn view-details">Ingresar</button>
                    </a>
                </div>
                <div class="service-card" data-category="reparaciones">
                    <img src="Images/clientesbanner.jpg" alt="Alineación y balanceo" class="service-img">
                    <h3>Clientes</h3>
                    <p class="service-description">Usuarios ingresados que consumen nuestros servicios</p>
                    <a href="ClientesAdmin.jsp">
                        <button class="service-btn view-details">Ingresar</button>
                    </a>
                </div>
                <div class="service-card" data-category="diagnostico">
                    <img src="Images/autosbanner.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Autos</h3>
                    <p class="service-description">Autos ingresados por los clientes para realizar servicios y reparaciones</p>
                    <a href="AutosAdmin.jsp">
                        <button class="service-btn view-details">Ingresar</button>
                    </a>
                </div>
                <div class="service-card" data-category="mantenimiento">
                    <img src="Images/llantasbanner.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Llantas</h3>
                    <p class="service-description">Variacion de llantas disponibles</p>
                    <a href="LlantasAdmin.jsp">
                        <button class="service-btn view-details">Ingresar</button>
                    </a>
                </div>
                <div class="service-card" data-category="diagnostico">
                    <img src="Images/repuestosbanner.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Repuestos</h3>
                    <p class="service-description">Variacion de repuestos disponibles</p>
                    <a href="RepuestosAdmin.jsp">
                        <button class="service-btn view-details">Ingresar</button>
                    </a>
                </div>
                <div class="service-card" data-category="mantenimiento">
                    <img src="Images/accesoriosbanner.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Accesorios</h3>
                    <p class="service-description">Variacion de accesorios disponibles</p>
                    <a href="AccesoriosAdmin.jsp">
                        <button class="service-btn view-details">Ingresar</button>
                    </a>
                </div>
                <div class="service-card" data-category="mantenimiento">
                    <img src="Images/serviciosbanner.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Servicios</h3>
                    <p class="service-description">Procesos de servicios y orden servicios</p>
                    <a href="ServicioAdmin.jsp">
                        <button class="service-btn view-details">Ingresar</button>
                    </a>
                </div>
                <div class="service-card" data-category="diagnostico">
                    <img src="Images/reparacionsebanner.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Reparaciones</h3>
                    <p class="service-description">Procesos de reparaciones y orden reparaciones</p>
                    <a href="ReparacionesAdmin.jsp">
                        <button class="service-btn view-details">Ingresar</button>
                    </a>
                </div>
                <div class="service-card" data-category="diagnostico">
                    <img src="Images/facturabanner.jpg" alt="Diagnóstico computarizado" class="service-img">
                    <h3>Factura</h3>
                    <p class="service-description">Procesos de cobro de facturas y detalles anidados a la factura </p>
                    <a href="FacturaAdmin.jsp">
                        <button class="service-btn view-details">Ingresar</button>
                    </a>
                </div>



            </div>
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