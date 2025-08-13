<%-- 
    Document   : AccesoriosAdmin
    Created on : 28/07/2025, 16:12:00
    Author     : joaqu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link rel="stylesheet" href="Styles/CRUD.css" />
  <link rel="icon" href="Images/logo.png" type="image/png">
  <title>Administración de Accesorios</title>
</head>
<body>

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
        <li><a href="MenuInicioAdmin.jsp">Inicio</a></li>             
      </ul>
    </nav>
  </header>

  <main class="crud-main">
    <section class="top-container">
      <!-- Formulario -->
      <div class="formulario">
        <h2>Agregar / Modificar Accesorio</h2>
        <form>
          <label for="codigoAccesorio">Código</label>
          <input type="text" id="codigoAccesorio" placeholder="Ej: 1" />

          <label for="nombreAccesorio">Nombre</label>
          <input type="text" id="nombreAccesorio" placeholder="Ej: Gato hidráulico" />

          <label for="descripcionAccesorio">Descripción</label>
          <input type="text" id="descripcionAccesorio" placeholder="Ej: Para levantar el auto" />

          <label for="precioAccesorio">Precio</label>
          <input type="number" id="precioAccesorio" placeholder="Ej: 450.00" step="0.01"/>

          <label for="stockAccesorio">Stock</label>
          <input type="number" id="stockAccesorio" placeholder="Ej: 10" />

          <label for="estadoAccesorio">Estado</label>
          <select id="estadoAccesorio">
            <option value="Disponibles">Disponibles</option>
            <option value="Agotados">Agotados</option>
          </select>

          <button type="submit">Guardar</button>
        </form>
         <!-- Botón para ir al footer -->
                <button class="scroll-footer-btn" onclick="document.getElementById('footer').scrollIntoView({ behavior: 'smooth' })">
                    Ir al final
                </button>
      </div>

      <!-- Tabla -->
      <div class="tabla-registros">
        <h2>Accesorios Registrados</h2>
        <table>
          <thead>
            <tr>
              <th>Código</th>
              <th>Nombre</th>
              <th>Descripción</th>
              <th>Precio</th>
              <th>Stock</th>
              <th>Estado</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>Gato hidráulico</td>
              <td>Levanta el auto</td>
              <td>Q450.00</td>
              <td>10</td>
              <td>Disponibles</td>
            </tr>
            <!-- Más registros aquí -->
          </tbody>
        </table>
      </div>
    </section>

    <!-- Sección inferior -->
    <section class="acciones">
      <h2>Buscar y Eliminar Accesorio</h2>
      <div class="acciones-inputs">
        <div>
          <label for="buscar-accesorio">Buscar Código</label>
          <input type="text" id="buscar-accesorio" placeholder="Ej: 1" />
          <button>Buscar</button>
        </div>
        <div>
          <label for="eliminar-accesorio">Eliminar Código</label>
          <input type="text" id="eliminar-accesorio" placeholder="Ej: 1" />
          <button>Eliminar</button>
        </div>
      </div>
    </section>
  </main>
   <!-- Footer para anclaje del scroll -->
    <footer id="footer" style="padding: 20px; text-align:center;">
        <p>&copy; 2025 La caja de cambios - Todos los derechos reservados.</p>
    </footer>

</body>
</html>
