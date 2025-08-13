<%-- 
    Document   : registro
    Created on : 22/07/2025, 16:35:53
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Caja de Cambios</title>
    <link rel="stylesheet" href="Styles/style.css">
    <link rel="stylesheet" href="Founts/founts.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="icon" href="Images/logo.png" type="image/png">
</head>
<body>
    <video autoplay muted loop id="bg-video">
        <source src="Images/videocarro.mp4" type="video/mp4">
        Tu navegador no soporta videos HTML5.
    </video>

<header class="header">
  <div class="logo-container">
    <div class="logo">La Caja de cambios</div>
    <div class="logo_image">
      <img src="Images/logo.png" alt="Logo" />
    </div>
  </div>
  <nav class="navbar">
    <a href="index.jsp">Inicio</a>
    <a href="#">Acerca de</a>
  </nav>
</header>

<div class="background"></div>
    <div class="container">
        <div class="item">
            <h2 class="titulo">Caja de Cambios</h2>
            <div class="text-item">
                <h2>¡Bienvenido! <br><span>
                    A nuestra pagina Web
                </span></h2>
                <p>Brindamos el mejor servicio automotriz de 2025</p>
                <div class="social-icon">
                    <a href="#"><i class='bx bxl-facebook'></i></a>
                    <a href="#"><i class='bx bxl-twitter'></i></a>
                    <a href="#"><i class='bx bxl-youtube'></i></a>
                    <a href="#"><i class='bx bxl-instagram'></i></a>
                    <a href="#"><i class='bx bxl-linkedin'></i></a>
                </div>
            </div>
        </div>
          <div class="login-section">
            <div class="form-box login">
                <form action="">
                    <h2>Registrarse</h2>
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-user'></i></span>
                        <input type="text" required>
                        <label>Nombre de Usuario</label>
                    </div>
                   
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-phone'></i></span>
                        <input type="tel" required>
                        <label>Telefono Cliente</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-map'></i></span>
                        <input type="text" required>
                        <label>Dirección</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-map'></i></span>
                        <input type="email" required>
                        <label>Correo</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-lock-alt'></i></span>
                        <input type="password" required>
                        <label>Contraseña</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-lock-alt'></i></span>
                        <input type="password" required>
                        <label>Confirmar Contraseña</label>
                    </div>
                    <div class="remember-password">
                        <label for=""><input type="checkbox">Ver contraseña</label>
                    </div>
                    <button class="btn">Registrarse</button>
                    <div class="create-account">
                        <p>¿Ya tienes Cuenta? <a href="index.jsp" class="register-link">Iniciar Sesion</a></p>
                    </div>
                </form>
            </div>
        </div>
</div>
</body>
</html>
