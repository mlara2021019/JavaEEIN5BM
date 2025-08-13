<%-- 
    Document   : Llantas
    Created on : 22/07/2025, 22:06:13
    Author     : Usuario
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
                    <li><a href="Repuestos.jsp">Repuestos</a></li>
                    <li><a href="Mecanicos.jsp">Mecanicos</a></li>
                </ul>
            </nav>
        </header>

        <section class="repuestos-header">
            <h2>Llantas de Calidad para tu Vehículo</h2>
            <p>Encuentra las mejores Llantas originales y alternativos para todas las marcas</p>
        </section>

        <section class="repuestos-grid">
            <!-- Llanta 1 -->
            <div class="repuesto-card">
                <img src="Images/Llanta1.jpg" alt="Filtro de Aceite" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">LLantas</div>
                    <h3 class="repuesto-nombre">Radial</h3>
                    <p class="repuesto-desc">Esta es una llanta radial de 22 pulgadas de diámetro, con un perfil o ancho de 23. Tiene un índice de carga 91, lo que significa que puede soportar un peso considerable sin problemas. Es ideal para vehículos que necesitan durabilidad y buen desempeño en la carretera.</p>
                    <div class="repuesto-precio">Q250.00 c/u</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 2 -->
            <div class="repuesto-card">
                <img src="Images/Llanta2.jpg" alt="Bujía NGK" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">LLantas</div>
                    <h3 class="repuesto-nombre">Radial</h3>
                    <p class="repuesto-desc">Esta llanta radial de 15 pulgadas está diseñada para brindar durabilidad y un rendimiento confiable en la carretera. Con un índice de carga 65, soporta hasta 615 kg, ideal para vehículos compactos o medianos. Su diseño asegura una conducción estable y cómoda para el uso diario.</p>
                    <div class="repuesto-precio">Q300.00 c/u</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 3 -->
            <div class="repuesto-card">
                <img src="Images/Llanta3.jpg" alt="Pastillas de freno" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llantas</div>
                    <h3 class="repuesto-nombre">Radial</h3>
                    <p class="repuesto-desc">Esta llanta radial de 16 pulgadas ofrece un equilibrio perfecto entre resistencia y rendimiento para vehículos de tamaño mediano. Con un índice de carga de 55, soporta hasta 670 kg, proporcionando seguridad y durabilidad en diversas condiciones de manejo.</p>
                    <div class="repuesto-precio">Q270.00 c/u</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 4 -->
            <div class="repuesto-card">
                <img src="Images/Llanta4.jpg" alt="Filtro de aire" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llantas</div>
                    <h3 class="repuesto-nombre">Radial</h3>
                    <p class="repuesto-desc">Llanta radial de 16 pulgadas, ideal para vehículos que requieren buena capacidad de carga y rendimiento estable. Su índice de carga 60 garantiza soporte para hasta 710 kg, combinando durabilidad y seguridad en la conducción.</p>
                    <div class="repuesto-precio">Q290.00 c/u </div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 5 -->
            <div class="repuesto-card">
                <img src="Images/Llanta5.jpg" alt="Kit Correa de Distribución" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llanta</div>
                    <h3 class="repuesto-nombre">Cinturada</h3>
                    <p class="repuesto-desc">Llanta cinturada de 17 pulgadas, diseñada para ofrecer mayor rigidez lateral y estabilidad en la conducción. Su índice de carga 45 soporta hasta 750 kg, ideal para vehículos que necesitan un buen equilibrio entre rendimiento y durabilidad.</p>
                    <div class="repuesto-precio">Q300.00 c/u </div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 6 -->
            <div class="repuesto-card">
                <img src="Images/Llanta6.jpg" alt="Amortiguador" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llantas</div>
                    <h3 class="repuesto-nombre">Radial</h3>
                    <p class="repuesto-desc">Llanta radial de 18 pulgadas, diseñada para ofrecer un buen rendimiento y comodidad en la conducción. Su índice de carga 50 soporta hasta 800 kg, ideal para vehículos que requieren durabilidad y estabilidad.</p>
                    <div class="repuesto-precio">Q310.00 c/u </div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 7 -->
            <div class="repuesto-card">
                <img src="Images/Llanta7.jpg" alt="Batería 12V" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llantas </div>
                    <h3 class="repuesto-nombre">Cinturadas</h3>
                    <p class="repuesto-desc">Llanta de diseño cinturado de 19 pulgadas, perfecta para quienes buscan un equilibrio entre rendimiento y durabilidad. Soporta hasta 850 kg con un índice de carga 40.</p>
                    <div class="repuesto-precio">Q290.00 c/u</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 8 -->
            <div class="repuesto-card">
                <img src="Images/Llanta8.jpg" alt="Radiador" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llantas</div>
                    <h3 class="repuesto-nombre">Diagonal</h3>
                    <p class="repuesto-desc">Llanta de construcción diagonal de 16 pulgadas, ideal para vehículos que requieren alta resistencia y durabilidad. Soporta hasta 950 kg con un índice de carga 70.</p>
                    <div class="repuesto-precio">Q290.50 c/u</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!--Llanta 9 -->
            <div class="repuesto-card">
                <img src="Images/Llanta9.jpg" alt="Bombilla Faro" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llantas</div>
                    <h3 class="repuesto-nombre">Radial</h3>
                    <p class="repuesto-desc">Llanta radial de 17 pulgadas, diseñada para ofrecer un excelente rendimiento y estabilidad. Ideal para vehículos de carga ligera o media. Soporta hasta 975 kg con un índice de carga 65.</p>
                    <div class="repuesto-precio">Q290.50 c/u</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 10 -->
            <div class="repuesto-card">
                <img src="Images/Llanta10.jpg" alt="Aceite sintético 10W40" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llantas</div>
                    <h3 class="repuesto-nombre">Diagonal</h3>
                    <p class="repuesto-desc">Llanta diagonal de 16 pulgadas, diseñada para proporcionar una excelente tracción y estabilidad. Perfecta para vehículos utilitarios y ligeros, soporta un índice de carga de 1100 y una capacidad máxima de 250 kg. Ideal para diversas condiciones de terreno, garantizando rendimiento y seguridad.</p>
                    <div class="repuesto-precio">Q250.00 c/u</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 11 -->
            <div class="repuesto-card">
                <img src="Images/Llanta11.jpg" alt="Aceite sintético 10W40" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llantas</div>
                    <h3 class="repuesto-nombre">Diagonal</h3>
                    <p class="repuesto-desc">Llanta de tipo diagonal de 20 pulgadas, perfecta para vehículos de mayor tamaño y de carga pesada. Con un índice de carga de 1250, soporta hasta 290 kg, brindando un rendimiento superior en condiciones de terreno variadas. Ideal para vehículos que requieren robustez y durabilidad.</p>
                    <div class="repuesto-precio">Q290.00 c/u</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 12 -->
            <div class="repuesto-card">
                <img src="Images/Llanta12.jpg" alt="Aceite sintético 10W40" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llantas</div>
                    <h3 class="repuesto-nombre">Radial</h3>
                    <p class="repuesto-desc">Esta llanta radial de 22 pulgadas está especialmente diseñada para proporcionar una mayor durabilidad y resistencia. Con un índice de carga de 1350, es ideal para vehículos de transporte pesado, asegurando un rendimiento óptimo y una larga vida útil. Su diseño radial le otorga una excelente tracción, estabilidad y mejor manejo en carreteras y superficies diversas.</p>
                    <div class="repuesto-precio">Q340.00 c/u</div>
                    <div class="repuesto-actions">
                        <a href="factura.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Llanta 13 -->
            <div class="repuesto-card">
                <img src="Images/Llanta13.jpg" alt="Aceite sintético 10W40" class="repuesto-img">
                <div class="repuesto-info">
                    <div class="repuesto-marca">Llantas</div>
                    <h3 class="repuesto-nombre">Diagonal</h3>
                    <p class="repuesto-desc">Esta llanta cinturada de 24 pulgadas está pensada para vehículos que requieren alta carga y resistencia. Con un índice de carga de 1500, ofrece una gran durabilidad y estabilidad en viajes largos y condiciones exigentes. Su diseño cinturado permite una mejor distribución de la carga, lo que mejora la tracción y el rendimiento en diferentes tipos de terrenos.</p>
                    <div class="repuesto-precio">Q290.00 c/u</div>
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