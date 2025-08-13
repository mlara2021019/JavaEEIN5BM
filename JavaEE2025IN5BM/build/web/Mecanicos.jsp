<%-- 
    Document   : Mecanicos
    Created on : 22/07/2025, 21:02:57
    Author     : FAMILIA
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
                <li><a href="Repuestos.jsp">Repuestos</a></li>
            </ul>
        </nav>
    </header>

    <section class="Empleados-header">
        <h2>Nuestro Equipo de Trabajo</h2>
        <p>"Trabajo con dignidad, progreso para todos."</p>
    </section>

    <section class="Empleados">
        <div class="Empleado-info">
            <img src="Images/Mecanico1.jpg" alt="Mecanico Luis" class="Empleado-img">
            <div class="Puesto">Mecánico</div>
            <h3 class="Nombre">Luis</h3>
            <p class="Email">luis@gmail.com</p>
            <div class="Telefono">44928374</div>
            <div class="Direccion">Zona 1</div>
        </div>


        <div class="Empleado-info">
            <img src="Images/Mecanico2.jpg" alt="Mecanico Carlos" class="Empleado-img">
            <div class="Puesto">Mecánico</div>
            <h3 class="Nombre">Carlos</h3>
            <p class="Email">carlos@gmail.com</p>
            <div class="Telefono">55429873</div>
            <div class="Direccion">Zona 2</div>
        </div>


        <div class="Empleado-info">
            <img src="Images/Mecanico3.jpg" alt="Mecanico Jorje" class="Empleado-img">
            <div class="Puesto">Mecánico</div>
            <h3 class="Nombre">Jorge</h3>
            <p class="Email">jorge@gmail.com</p>
            <div class="Telefono">44982736</div>
            <div class="Direccion">Zona 4</div>
        </div>


        <div class="Empleado-info">
            <img src="Images/Mecanico4.jpg" alt="Mecanico Pedro" class="Empleado-img">
            <div class="Puesto">Mecánico</div>
            <h3 class="Nombre">Pedro</h3>
            <p class="Email">pedro@gmail.com</p>
            <div class="Telefono">44990123</div>
            <div class="Direccion">Zona 2</div>
        </div>


        <div class="Empleado-info">
            <img src="Images/Mecanico5.jpg" alt="Mecanico Jose" class="Empleado-img">
            <div class="Puesto">Mecánico</div>
            <h3 class="Nombre">José</h3>
            <p class="Email">jose@gmail.com</p>
            <div class="Telefono">55890123</div>
            <div class="Direccion">Zona 10</div>
        </div>


        <div class="Empleado-info">
            <img src="Images/Mecanico6.jpg" alt="Mecanico Mario" class="Empleado-img">
            <div class="Puesto">Mecánico</div>
            <h3 class="Nombre">Mario</h3>
            <p class="Email">mario@gmail.com</p>
            <div class="Telefono">66338542</div>
            <div class="Direccion">Zona 11</div>
        </div>
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