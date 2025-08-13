<%-- 
    Document   : Accesorios
    Created on : 22/07/2025, 20:05:41
    Author     : joaqu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Accesorios - La Caja de Cambios</title>
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
                    <li><a href="Servicio.jsp">Servicio</a></li>
                    <li><a href="Reparaciones.jsp">Reparación</a></li>
                    <li><a href="Accesorios.jsp" class="active">Accesorios</a></li>
                    <li><a href="LLantas.jsp">Llantas</a></li>
                    <li><a href="Mecanicos.jsp">Mecánicos</a></li>
                </ul>
            </nav>
        </header>

        <section class="accesorios-header">
            <h2>Accesorios y Herramientas para tu Vehículo</h2>
            <p>Encuentra accesorios esenciales para el mantenimiento y reparación de tu auto</p>
        </section>

        <section class="repuestos-grid">
            <!-- Accesorio 1 -->
            <div class="repuesto-card">
                <img src="Images/Gato hidraulico.png" alt="Gato hidráulico" class="repuesto-img">
                <div class="repuesto-info">
                    <h3 class="repuesto-nombre">Gato hidráulico</h3>
                    <p class="repuesto-desc">Esencial para levantar el vehículo y trabajar de forma segura debajo de él.</p>
                    <div class="repuesto-precio">Q450.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Accesorio 2 -->
            <div class="repuesto-card">
                <img src="Images/Torres o caballetes.png" alt="Torres o caballetes" class="repuesto-img">
                <div class="repuesto-info">
                    <h3 class="repuesto-nombre">Torres o caballetes</h3>
                    <p class="repuesto-desc">Soportan el peso del vehículo una vez levantado por el gato, brindando seguridad adicional.</p>
                    <div class="repuesto-precio">Q320.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Accesorio 3 -->
            <div class="repuesto-card">
                <img src="Images/Llaves combinadas.png" alt="Juego de llaves" class="repuesto-img">
                <div class="repuesto-info">
                    <h3 class="repuesto-nombre">Juego de llaves</h3>
                    <p class="repuesto-desc">Incluye llaves fijas, de estrella, combinadas y de tubo, para todo tipo de tuercas y tornillos.</p>
                    <div class="repuesto-precio">Q280.50</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Accesorio 4 -->
            <div class="repuesto-card">
                <img src="Images/Juego desarmadores.png" alt="Juego de desarmadores" class="repuesto-img">
                <div class="repuesto-info">
                    <h3 class="repuesto-nombre">Juego de desarmadores</h3>
                    <p class="repuesto-desc">Incluye desarmadores planos y de cruz para todo tipo de tornillos en componentes eléctricos e interiores.</p>
                    <div class="repuesto-precio">Q110.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Accesorio 5 -->
            <div class="repuesto-card">
                <img src="Images/Pinzas.png" alt="Pinzas" class="repuesto-img">
                <div class="repuesto-info">
                    <h3 class="repuesto-nombre">Pinzas</h3>
                    <p class="repuesto-desc">Incluye pinzas de presión, de punta, de corte y universales para diversas tareas.</p>
                    <div class="repuesto-precio">Q85.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Accesorio 6 -->
            <div class="repuesto-card">
                <img src="Images/Llave dinamometrica.png" alt="Llave dinamométrica" class="repuesto-img">
                <div class="repuesto-info">
                    <h3 class="repuesto-nombre">Llave dinamométrica</h3>
                    <p class="repuesto-desc">Imprescindible para aplicar el torque correcto en tornillos y tuercas.</p>
                    <div class="repuesto-precio">Q350.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Accesorio 7 -->
            <div class="repuesto-card">
                <img src="Images/Bandeja magnetica.jpg" alt="Bandeja magnética" class="repuesto-img">
                <div class="repuesto-info">
                    <h3 class="repuesto-nombre">Bandeja magnética</h3>
                    <p class="repuesto-desc">Ideal para mantener tornillos y piezas organizadas durante un desmontaje.</p>
                    <div class="repuesto-precio">Q60.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Accesorio 8 -->
            <div class="repuesto-card">
                <img src="Images/Embudo aceite.jpg" alt="Embudo de aceite" class="repuesto-img">
                <div class="repuesto-info">
                    <h3 class="repuesto-nombre">Embudo de aceite</h3>
                    <p class="repuesto-desc">Facilita el llenado de fluidos sin derrames.</p>
                    <div class="repuesto-precio">Q25.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Accesorio 9 -->
            <div class="repuesto-card">
                <img src="Images/Lampara inspeccione.jpg" alt="Lámpara de inspección" class="repuesto-img">
                <div class="repuesto-info">
                    <h3 class="repuesto-nombre">Lámpara de inspección</h3>
                    <p class="repuesto-desc">Proporciona luz adicional en áreas de difícil acceso.</p>
                    <div class="repuesto-precio">Q75.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Accesorio 10 -->
            <div class="repuesto-card">
                <img src="Images/Juego dados y matraca.jpg" alt="Juego de dados y matraca" class="repuesto-img">
                <div class="repuesto-info">
                    <h3 class="repuesto-nombre">Juego de dados y matraca</h3>
                    <p class="repuesto-desc">Permite un trabajo más rápido y eficiente en espacios reducidos.</p>
                    <div class="repuesto-precio">Q190.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>
        </section>




        <footer class="main-footer">
            <div class="footer-top-bar"></div>

            <div class="footer-content">
                <!-- LOGO + DESCRIPCIÓN -->
                <div class="footer-section about">
                    <img src="Images/logo.png" alt="La Caja de Cambios" class="footer-logo" />
                    <p>
                        Somos un centro de servicio multi-marcas, con altos estándares de calidad,
                        buscando exceder las expectativas de nuestros clientes por medio de procesos eficientes
                        que garantizan nuestro trabajo.
                    </p>
                </div>

                <!-- LINKS -->
                <div class="footer-section links">
                    <h3>LINKS</h3>
                    <ul>
                        <li><a href="MenuInicio.jsp">INICIO</a></li>
                        <li><a href="Servicio.jsp">SERVICIOS</a></li>
                        <li><a href="Accesorios.jsp">ACCESORIOS</a></li>
                        <li><a href="Contacto.jsp">CONTACTO</a></li>
                    </ul>
                </div>

                <!-- HORARIOS -->
                <div class="footer-section horarios">
                    <h3>HORARIOS</h3>
                    <ul>
                        <li><strong>LUNES</strong> <span>8:00 - 17:30</span></li>
                        <li><strong>MARTES</strong> <span>8:00 - 17:30</span></li>
                        <li><strong>MIÉRCOLES</strong> <span>8:00 - 17:30</span></li>
                        <li><strong>JUEVES</strong> <span>8:00 - 17:30</span></li>
                        <li><strong>VIERNES</strong> <span>8:00 - 17:30</span></li>
                        <li><strong>SÁBADO</strong> <span>8:00 - 12:00</span></li>
                    </ul>
                </div>

                <!-- CONTACTO -->
                <div class="footer-section contact-info">
                    <h3>CONTACTO</h3>

                    <div class="contact-item">
                        <i class="fas fa-map-marker-alt"></i>
                        <div>
                            <h4>VISÍTANOS</h4>
                            <p>Zona 3, Barrio Gallito</p>
                            <p>Ciudad Guatemala</p>
                        </div>
                    </div>

                    <div class="contact-item">
                        <i class="fas fa-envelope"></i>
                        <div>
                            <h4>ESCRÍBENOS</h4>
                            <p>cajadecambios@gmail.com</p>
                        </div>
                    </div>

                    <div class="contact-item">
                        <i class="fas fa-phone"></i>
                        <div>
                            <h4>LLÁMANOS</h4>
                            <p>+502 7896 5412</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <p>© 2025 Caja de Cambios | Política de Privacidad</p>
            </div>
        </footer>

    </div>
</footer>
</body>
</html>