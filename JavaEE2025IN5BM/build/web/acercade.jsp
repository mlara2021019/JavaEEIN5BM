<%-- 
    Document   : acercade
    Created on : 24/07/2025, 18:49:39
    Author     : Clara Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Acerca de Nosotros - La Caja de Cambios</title>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet" />
        <link rel="icon" href="Images/logo.png" type="image/png">
        <link rel="stylesheet" href="Styles/acerca.css" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
                        <span>19 Calle 2‑47 Zona 3<br>Ciudad Guatemala</span>
                    </div>
                </div>
                <div class="navMenu">
                    <nav class="navbar">
                        <a href="MenuInicio.jsp">Inicio</a>
                        <a href="Servicio.jsp">Servicios</a>
                        <a href="Mecanicos.jsp">Mecanicos</a>
                        <a href="LLantas.jsp">Llantas</a>
                        <a href="Repuestos.jsp">Respuestos</a>
                        <a href="Accesorios.jsp">Accesorios</a>
                        <a href="Reparaciones.jsp">Reparaciones</a>
                    </nav>
                </div>
            </div>
        </header>

        <section class="hero-section">
            <video autoplay muted loop id="bg-video">
                <source src="Images/videocarro.mp4" type="video/mp4">
                No se logró cargar el video.
            </video>
            <div class="hero-content">
                <h1>Acerca de Nosotros</h1>
                <h2>Nuestra Historia y Compromiso</h2>
                <p>Conozca la pasión que impulsa cada reparación en La Caja de Cambios.</p>
            </div>
        </section>

        <section class="about-section">
            <h1>Nuestra Historia y Compromiso</h1>
            <p>
                En <span class="about-highlight">La Caja de Cambios</span>, somos más que un taller mecánico; somos su socio
                de confianza en el mantenimiento y reparación de vehículos. Fundados con la pasión por la mecánica y el
                compromiso de ofrecer un servicio excepcional, nos hemos dedicado a mantener sus ruedas girando de forma
                segura y eficiente.
            </p>
            <p>
                Nuestra misión es brindar soluciones automotrices de alta calidad, utilizando tecnología de vanguardia y un
                equipo de mecánicos <span class="about-highlight">altamente calificados y certificados</span>. Creemos en la
                transparencia, la honestidad y en construir relaciones duraderas con nuestros clientes, basadas en la
                confianza y la satisfacción.
            </p>
            <p>
                Desde un cambio de aceite rutinario hasta reparaciones complejas del motor, cada vehículo que entra en
                nuestro taller recibe la misma atención meticulosa y el más alto nivel de profesionalismo. En <span
                    class="about-highlight">La Caja de Cambios</span>, entendemos el valor de su tiempo y de su inversión,
                por lo que nos esforzamos por ofrecer diagnósticos precisos y reparaciones eficientes, garantizando que
                usted regrese a la carretera con total tranquilidad.
            </p>
            <p>
                Nos enorgullecemos de ser una empresa familiar con raíces profundas en la comunidad de Ciudad de Guatemala.
                Cada día, nos esforzamos por superar las expectativas de nuestros clientes, ofreciendo un servicio al
                cliente inigualable y resultados que hablan por sí mismos. Su seguridad y la longevidad de su vehículo son
                nuestra máxima prioridad.
            </p>
            <p>
                Gracias por elegir <span class="about-highlight">La Caja de Cambios</span>. Estamos aquí para servirle.
            </p>
        </section>

        <a href="#" class="scroll-top">
            <i class='bx bx-chevrons-up'></i>
        </a>

        <script>
            // Script para mostrar/ocultar el botón de "Volver arriba"
            window.addEventListener('scroll', function () {
                const scrollTopButton = document.querySelector('.scroll-top');
                if (window.scrollY > 200) { // Muestra el botón después de 200px de scroll
                    scrollTopButton.classList.add('active');
                } else {
                    scrollTopButton.classList.remove('active');
                }
            });
        </script>
    </body>

</html>
