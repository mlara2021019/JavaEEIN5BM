<%-- 
    Document   : Reparaciones
    Created on : 22/07/2025, 15:30:17
    Author     : 1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Reparaciones - La Caja de Cambios</title>
        <link rel="stylesheet" href="Styles/estilo.css">
        <link rel="stylesheet" href="Fonts/founts.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="icon" href="../Images/logo.png" type="image/png">
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
                    <li><a href="Repuestos.jsp">Repuestos</a></li>
                    <li><a href="Accesorios.jsp">Accesorios</a></li>
                    <li><a href="LLantas.jsp">Llantas</a></li>
                    <li><a href="Mecanicos.jsp">Mecanicos</a></li>
                </ul>
            </nav>
        </header>

        <section class="reparaciones-header">
            <h2>Reparaciones Automotrices</h2>
            <p>Encuentra los servicios más completos y especializados para tu vehículo</p>
        </section>

        <section class="reparaciones-grid">
            <!-- Reparación 1 -->
            <div class="reparacion-card">
                <img src="Images/Reparacion Cambio de aceite.jpg" alt="Cambio de aceite" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Cambio de aceite</h3>
                    <p class="reparacion-desc">Aceite sintético y filtro nuevo</p>
                    <div class="reparacion-precio">Q250.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Reparación 2 -->
            <div class="reparacion-card">
                <img src="Images/CambioFrenos.jpg" alt="Cambio de frenos" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Cambio de frenos</h3>
                    <p class="reparacion-desc">Pastillas delanteras nuevas</p>
                    <div class="reparacion-precio">Q450.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Reparación 3 -->
            <div class="reparacion-card">
                <img src="Images/Alineacion y balanceo.jpg" alt="Alineación y balanceo" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Alineación y balanceo</h3>
                    <p class="reparacion-desc">Ruedas alineadas y balanceadas</p>
                    <div class="reparacion-precio">Q300.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Reparación 4 -->
            <div class="reparacion-card">
                <img src="Images/Reparacion de motor.jpg" alt="Revisión del motor" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Revisión del motor</h3>
                    <p class="reparacion-desc">Chequeo de sensores y niveles</p>
                    <div class="reparacion-precio">Q500.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Reparación 5 -->
            <div class="reparacion-card">
                <img src="Images/CambioBateria.jpeg" alt="Cambio de batería" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Cambio de batería</h3>
                    <p class="reparacion-desc">Instalación de batería 12V nueva</p>
                    <div class="reparacion-precio">Q620.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Reparación 6 -->
            <div class="reparacion-card">
                <img src="Images/Cambio de Bujias.jpg" alt="Cambio de bujías" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Cambio de bujías</h3>
                    <p class="reparacion-desc">Sustitución de bujías desgastadas</p>
                    <div class="reparacion-precio">Q200.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Reparación 7 -->
            <div class="reparacion-card">
                <img src="Images/Cambio de suspensión.jpg" alt="Reparación de suspensión" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Reparación de suspensión</h3>
                    <p class="reparacion-desc">Reemplazo de amortiguadores</p>
                    <div class="reparacion-precio">Q800.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Reparación 8 -->
            <div class="reparacion-card">
                <img src="Images/Reparación de frenos ABS.jpg" alt="Revisión de frenos ABS" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Revisión de frenos ABS</h3>
                    <p class="reparacion-desc">Diagnóstico y ajuste de ABS</p>
                    <div class="reparacion-precio">Q550.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Reparación 9 -->
            <div class="reparacion-card">
                <img src="Images/LimpiezaInyectores.jpg" alt="Limpieza de inyectores" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Limpieza de inyectores</h3>
                    <p class="reparacion-desc">Servicio con ultrasonido</p>
                    <div class="reparacion-precio">Q350.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Reparación 10 -->
            <div class="reparacion-card">
                <img src="Images/Diagnostico electronico.jpg" alt="Diagnóstico electrónico" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Diagnóstico electrónico</h3>
                    <p class="reparacion-desc">Escaneo completo del sistema</p>
                    <div class="reparacion-precio">Q400.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Reparación 11 -->
            <div class="reparacion-card">
                <img src="Images/Reparación de transmisión.jpg" alt="Reparación de transmisión" class="reparacion-img">
                <div class="reparacion-info">
                    <h3 class="reparacion-nombre">Reparación de transmisión</h3>
                    <p class="reparacion-desc">Cambio de aceite y ajuste</p>
                    <div class="reparacion-precio">Q950.00</div>
                    <div class="reparacion-actions">
                        <a href="Auto.jsp">
                            <button class="view-details">Detalles</button>
                            <button class="add-to-cart"><i class="fas fa-cart-plus"></i></button>
                        </a>
                    </div>
                </div>
            </div>
