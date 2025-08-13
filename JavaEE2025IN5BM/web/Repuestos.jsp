<%-- 
    Document   : Repuestos
<<<<<<< HEAD
    Created on : 22 jul 2025, 19:12:48
=======
    Created on : 22 jul 2025, 18:41:01
>>>>>>> 8d55f6cf5553b6350ae8dddb9031438849c41c65
    Author     : VictorHugo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Repuestos - La Caja de Cambios</title>
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
                    <li><a href="Accesorios.jsp">Accesorios</a></li>
                    <li><a href="LLantas.jsp">Llantas</a></li>
                    <li><a href="Mecanicos.jsp">Mecanicos</a></li>
                </ul>
            </nav>
        </header>

        <section class="repuestos-header">
            <h2>Repuestos de Calidad para tu Vehículo</h2>
            <p>Encuentra los mejores repuestos originales y alternativos para todas las marcas</p>
        </section>

        <section class="repuestos-grid">
            <!-- Repuesto 1 -->
            <div class="repuesto-card">
                <img src="Images/Filtro de aceite.png" alt="Filtro de Aceite" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Toyota</div>
                    <h3 class="repuesto-nombre">Filtro de aceite</h3>
                    <p class="repuesto-desc">Elimina impurezas del aceite del motor, protegiendo las piezas internas y prolongando la vida útil del motor.</p>
                    <div class="repuesto-precio">Q55.75</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Repuesto 2 -->
            <div class="repuesto-card">
                <img src="Images/Bujía NGK.png" alt="Bujía NGK" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Toyota</div>
                    <h3 class="repuesto-nombre">Bujía NGK</h3>
                    <p class="repuesto-desc">Proporciona una chispa eficiente para una mejor combustión, mejorando el rendimiento y reduciendo el consumo de combustible.</p>
                    <div class="repuesto-precio">Q32.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Repuesto 3 -->
            <div class="repuesto-card">
                <img src="Images/Pastillas de freno.png" alt="Pastillas de freno" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Honda</div>
                    <h3 class="repuesto-nombre">Pastillas de freno</h3>
                    <p class="repuesto-desc">Ofrecen una frenada silenciosa y potente. Ideal para vehículos que requieren alta eficiencia y menor desgaste del sistema de frenos.</p>
                    <div class="repuesto-precio">Q110.99 c/u</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Repuesto 4 -->
            <div class="repuesto-card">
                <img src="Images/Filtro de aire.png" alt="Filtro de aire" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">SUV</div>
                    <h3 class="repuesto-nombre">Filtro de aire</h3>
                    <p class="repuesto-desc">Retiene partículas contaminantes, permitiendo una mejor mezcla de aire y combustible para un rendimiento óptimo del motor.</p>
                    <div class="repuesto-precio">Q44.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Repuesto 5 -->
            <div class="repuesto-card">
                <img src="Images/Kit Correa de Distribución.png" alt="Kit Correa de Distribución" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">GATES</div>
                    <h3 class="repuesto-nombre">Kit Correa de Distribución</h3>
                    <p class="repuesto-desc">Kit completo con correa, tensores y rodillos. Para motores 1.6L y 1.8L.</p>
                    <div class="repuesto-precio">Q85.25</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Repuesto 6 -->
            <div class="repuesto-card">
                <img src="Images/Amortiguador.png" alt="Amortiguador" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">SEDAN</div>
                    <h3 class="repuesto-nombre">Amortiguador</h3>
                    <p class="repuesto-desc">Absorbe impactos y mejora la estabilidad del vehículo en carreteras irregulares, brindando mayor confort y seguridad.</p>
                    <div class="repuesto-precio">Q120.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Repuesto 7 -->
            <div class="repuesto-card">
                <img src="Images/Batería 12V.png" alt="Batería 12V" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">MAGNUM</div>
                    <h3 class="repuesto-nombre">Batería 12V</h3>
                    <p class="repuesto-desc">Fuente de energía confiable para el arranque del motor y funcionamiento de los sistemas eléctricos del vehículo.</p>
                    <div class="repuesto-precio">Q150.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Repuesto 8 -->
            <div class="repuesto-card">
                <img src="Images/Radiador.png" alt="Radiador" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Mazda</div>
                    <h3 class="repuesto-nombre">Radiador</h3>
                    <p class="repuesto-desc">Sistema de enfriamiento que regula la temperatura del motor, previniendo el sobrecalentamiento.</p>
                    <div class="repuesto-precio">Q180.00</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Repuesto 9 -->
            <div class="repuesto-card">
                <img src="Images/Bombilla Faro.png" alt="Bombilla Faro" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">X-PRO</div>
                    <h3 class="repuesto-nombre">Bombilla Faro</h3>
                    <p class="repuesto-desc">Bombilla halógena de alta intensidad para faros delanteros. Proporciona una iluminación potente y clara, ideal para conducción nocturna segura o en condiciones de baja visibilidad.</p>
                    <div class="repuesto-precio">Q25.50</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Repuesto 10 -->
            <div class="repuesto-card">
                <img src="Images/Aceite sintético 10W40.png" alt="Aceite sintético 10W40" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Valvoline</div>
                    <h3 class="repuesto-nombre">Aceite sintético 10W40</h3>
                    <p class="repuesto-desc">Sistema de enfriamiento que regula la temperatura del motor, previniendo el sobrecalentamiento.</p>
                    <div class="repuesto-precio">Q210.50</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <section class="pagination">
            <button class="page-btn active">1</button>
            <button class="page-btn">2</button>
            <button class="page-btn">3</button>
            <button class="page-btn">Siguiente <i class="fas fa-chevron-right"></i></button>
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