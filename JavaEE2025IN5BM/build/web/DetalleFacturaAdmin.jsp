<%-- 
    Document   : DetalleFacturaAdmin
    Created on : 24/07/2025, 18:38:25
    Author     : Clara Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Styles/CRUD.css">
    <link rel="icon" href="Images/logo.png" type="Image/png">
    <title>Administracion Detalle Factura</title>
</head>
    <header class="headerOpciones">
        <div class="bannerHorario">
            <span><i class="bx bx-time-five"></i>Lunes a Viernes: 8:00 -
            17:30 - Sabado: 8:00 - 12:00</span>
            <div class="social">
                <a href="#"><i class="bx bxl-instagram"></i></a>
                <a href="#"><i class="bx bxl-facebook"></i></a>
                <a href="#"><i class="bx bxl-whatsapp"></i></a>
            </div>
        </div>
        <div class="bannerInfo">
            <div class="logo">
                <img src="Images/logo.png" alt="logo" class="logo-img">
                <h1>La caja de cambiso</h1>                
            </div>
            <div class="infoGroup">
                <div class="infoItem">
                    <h4>LLAMANOS</h4>
                    <span>+502 5967-7843</span>
                </div>
                <div class="infoItem">
                    <h4>E-MAIL</h4>
                    <span>lacajadecambios2025</span>
                </div>
                <div class="infoItem">
                    <h4>VISITANOS</h4>
                    <span>19 calle 2-47 Zona 3 Cieudad Guatemala</span>
                </div>
            </div>
        </div>
        <nav class="bannerOpciones">
            <ul class="menu">
                <li><a href="MenuInicioAdmin.jsp">Inicio</a></li>
                <li><a href="FacturaAdmin.jsp">Facturas</a></li>
            </ul>
        </nav>
    </header>
    <main class="crud-main">
        <section class="top-container">
            <div class="formulario">
                <h2>Agregar / Modificar Detalles de facturas</h2>
                <form>
                    <label for="codigoDelle">No. Detalle factura</label>
                    <input type="text" id="codigoDetalle" placeholder="Ej: 1010"> 

                    <label for="codigoFacturaDetalle">No.Factura</label>
                    <input type="text" id="codigoFacturaDetalle" placeholder="Ej: 1010">

                    <label for="tipoGasto">Tipo de gasto</label>
                    <select id="tipoGasto">
                        <option value="Servicio">Servicio</option>
                        <option value="Reparacion">Reparacion</option>
                        <option value="Llanta">Llanta</option>
                        <option value="Repuesto">Repuesto</option>
                        <option value="Accesorio">Accesorio</option>
                    </select>

                    <Label for="codigoGasto">Codigo Gasto</Label>
                    <input type="text" id="codigoGasto" placeholder="Ej: Servicio: 1">

                    <label for="cantidad">cantidad</label>
                    <input type="text" id="cantidad" placeholder="0">                                    
                </form>
            </div>
            <div class="tabla-registros">
                <h2>Detalles facturas registradas</h2>
                <table>
                    <thead>
                        <tr>
                            <th>No.Detalle</th>
                            <th>No.Factura</th>
                            <th>Tipo de gasot</th>
                            <th>No.Gasto</th>
                            <th>cantidad</th>
                        </tr>  
                    </thead>   
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>1</td>
                            <td>Servicio</td>
                            <td>1</td>
                            <td>1</td>
                        </tr>
                    </tbody>               
                </table>
            </div>

        </section>
        <section class="acciones">
            <h2>Buscar y eliminar Detalles de facturas</h2>
            <div class="acciones-inputs">
                <div>
                    <label for="buscarfactura">Buscar No. Detalle factura</label>
                    <input type="text" id=" buscarFactura" placeholder="Ej:1010">
                    <button>Buscar</button>
                </div>
                <div>
                    <label for="eliminarFactura">Eliminar No. Detalle Factura</label>
                    <input type="text" id="eliminarFactura" placeholder="Ej: 1010">
                    <button>Eliminar</button>
                </div>
            </div>
        </section>
    </main>
<body>
    
</body>
</html> 