<%-- 
    Document   : Auto
    Created on : 22/07/2025, 22:44:43
    Author     : Clara Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>La Caja de Cambios</title>
    <link rel="stylesheet" href="Styles/contactanos.css" />
    <link rel="stylesheet" href="auto.css">
</head>
<body>
 
    <header class="header">
        <div class="logo-container">
            <div class="logo">La Caja de Cambios</div>
            <div class="logo_image">
                <img src="Images/logo.png" alt="Logo" />
            </div>
        </div>
        <nav class="navbar">
            <a href="index.jsp">Inicio</a>
            <a href="MenuInicio.jsp">Pagina principal</a>
            <a href="contactanos.jsp">Acerca de</a>
        </nav>
    </header>
 
    <main class="contact-page-content">
        <div class="container">
            <h1 class="page-title">Gestión de Vehículos</h1>
 
            <div class="contact-grid">
                <!-- Añadir Auto -->
                <div class="form-section">
                    <h2>Añadir Auto</h2>
                    <form action="factura.jsp" method="POST">
                        <div class="form-group">
                            <label for="nombre">Nombre del dueño: *</label>
                            <input type="text" id="nombre" name="nombre" required>
                        </div>
                        <div class="form-group">
                            <label for="placa">Placa del auto: *</label>
                            <input type="text" id="placa" name="placa" required>
                        </div>
                        <div class="form-group">
                            <label for="anio">Marca del Auto: *</label>
                            <input type="text" id="anio" name="anio" required>
                        </div>
                        <div class="form-group">
                            <label for="modelo">Modelo del auto: *</label>
                            <input type="text" id="modelo" name="modelo" required>
                        </div>
                        <div class="form-group">
                            <label for="color">Color del auto: *</label>
                            <input type="text" id="color" name="color" required>
                        </div>
                        <a href="factura.jsp">
                            <button type="submit" class="submit-button">Añadir Auto</button>
                        </a>
                    </form>
                </div>
 
                <!-- Ya tienes auto registrado -->
                <div class="form-section">
                    <h2>¿Ya tienes registrado uno?</h2>
                    <form action="factura.jsp" method="POST">
                        <div class="form-group">
                            <label for="placaExistente">Placa del auto registrado: *</label>
                            <input type="text" id="placaExistente" name="placaExistente" required>
                        </div>
                        <a href="factura.jsp">
                            <button type="submit" class="submit-button">Buscar Auto</button>
                        </a>
                    </form>
                </div>
            </div>
        </div>
    </main>
 
</body>
</html>
