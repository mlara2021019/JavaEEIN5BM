<%-- 
    Document   : registroCompra
    Created on : 27/07/2025, 14:12:14
    Author     : Clara Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="icon" type="image/png" href="../Images/logo.png" />
  <link rel="stylesheet" href="Styles/factura.css" />
  <link rel="stylesheet" href="Founts/founts.css" />
  <title>Factura</title>
</head>
<body class="cuerpoHTML">

  <header class="headerOpciones">
    <div class="bannerHorario">
      <span><i class='bx bx-time-five'></i> Lunes a Viernes: 8:00 – 17:30 – Sábado: 8:00 – 12:00</span>
      <div class="social">
        <a href="#"><i class='bx bxl-instagram'></i></a>
        <a href="#"><i class='bx bxl-facebook'></i></a>
        <a href="#"><i class='bx bxl-whatsapp'></i></a>
      </div>
    </div>

    <div class="bannerInfo">
      <div class="logo">
        <img src="Images/logo.png" alt="logo" class="logo-img">
        <h1>La caja de cambios</h1>
      </div>
      <div class="infoGroup">
        <div class="infoItem">
          <h4>LLÁMANOS</h4>
          <span>+502 5967‑7843</span>
        </div>
        <div class="infoItem">
          <h4>E-MAIL</h4>
          <span>lacajadecambios2025@gmail.com</span>
        </div>
        <div class="infoItem">
          <h4>VISÍTANOS</h4>
          <span>19 Calle 2‑47 Zona 3 Ciudad Guatemala</span>
        </div>
      </div>
    </div>

    <nav class="bannerOpciones">
      <ul class="menu">
        <li><a href="index.jsp">Inicio</a></li>
        <li><a href="MenuInicio.jsp">Página Principal</a></li>                
        <li><a href="contactanos.jsp">Acerca de nosotros</a></li>
      </ul>
    </nav>
  </header>

  <div class="separadorInfo">
    <div class="conteinerOptions">
        <h3>Opciones destacadas</h3>                
      <ul><a href="Repuestos.jsp">Repuestos</a></ul>
      <ul><a href="Accesorios.jsp">Accesorios</a></ul>
      <ul><a href="Llantas.jsp">Llantas</a></ul>
      <ul><a href="Servicio.jsp">Servicios</a></ul>
      <ul><a href="Reparaciones.jsp">Reparaciones</a></ul>                
        <h3>Buscar</h3>
        <input type="text" name="buscarFactura" id="codigoFactura">        
            <button id="botonBuscar">Buscar</button>        
        <h3>finalizar revision?</h3>
        <ul><a href="#botonRegresar">Finalizar</a></ul>
    </div>

    <!-- Tabla a la derecha -->
    <div class="containerBody">
      <div class="containerResumen">
        <h1 class="titulo">Registro de compras</h1>
        <table class="tablaInformacion">
          <thead>
            <tr>
              <th>No.Factura</th>
              <th>Cliente</th>
              <th>Empleado a cargo</th>
              <th>Automóvil</th>
              <th>Tipo de gasto</th>
              <th>Cantidad</th>
              <th>Precio</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1010</td>
              <td>Oscar</td>
              <td>Alejandro Pineda</td>
              <td>2</td>
              <td>Servicio</td>
              <td>2</td>
              <td>Q20.00</td>
            </tr>      
          </tbody>
        </table>                
        <a href="MenuInicio.jsp">
            <button id="botonRegresar">Regresar</button>
        </a>
      </div>
    </div>
  </div>

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