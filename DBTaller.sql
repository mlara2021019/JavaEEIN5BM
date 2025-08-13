-- drop database if exists DB_Taller;
create database DB_Taller;
use DB_Taller;

-- empleado
create table Empleado(
	codigoEmpleado int not null auto_increment,
    nombreEmpleado varchar(250) not null,
    telefonoEmpleado varchar(8) not null unique,
    correoEmpleado varchar(250) not null unique,
    direccion varchar(250),
    puesto enum ("Recepcionista","Mecanico"),
    primary key PK_codigoEmpleado(codigoEmpleado)
);

-- CLIENTE/USUARIO
create table Cliente(
	codigoCliente int not null auto_increment,
    nombreCliente varchar(250) not null,
    telefonoCliente varchar(8)not null unique,
    correoCliente varchar(250) not null unique,
    direccion varchar(250),
    contrasena varchar(250),
    primary key PK_codigoCliente(codigoCliente)
);
-- AUTO
create table Auto(
	codigoAuto int not null auto_increment,
    codigoCliente int not null,    
    placa varchar(7) not null,    
    marca varchar(250),
    modelo varchar(250),
    color varchar(250),
    primary key PK_codigoAuto (codigoAuto),
    constraint FK_Auto_Cliente foreign key (codigoCliente)
		references Cliente (codigoCliente)on delete cascade
);

create table Llanta(
	codigoLlanta int not null auto_increment,
    anchoMilimentos int not null, -- ancho de lado a lado
    perfil int not null,  -- ofrece estabilidad
    tipoConstruccion enum("Radial","Diagonal","Cinturada") not null,-- durabilidad y agarre
    diametroRin int not null, -- diametro en pulgadas 
    cargaMaximakg int not null,
    precioLlanta double(10,2) not null,
    primary key PK_codigoLlanta (codigoLlanta)
);

-- Entidad Repuestos
create table Repuesto(
	codigoRepuesto int not null auto_increment,
    nombreRepuesto varchar(250) not null,
    descripcionRepuesto varchar(250) not null,
    precioRepuesto double(10,2) not null,
    stockRepuesto int,
    estadoRepuesto enum("Disponibles","Agotados") not null,
    primary key PK_codigoRepuesto(codigoRepuesto)
);

-- ACCESORIOS
create table Accesorio(
	codigoAccesorio int not null auto_increment,
    nombreAccesorio varchar(250) not null,
    descripcionAccesorio varchar(250)not null,
    precioAccesorio double (10,2)not null,
    stockAccesorio int,
    estadoAccesorio enum("Disponibles","Agotados") not null,
    primary key PK_codigoAccesorio(codigoAccesorio)
);

-- Servicios / mantenimientos
create table Servicio(
	codigoServicio int not null auto_increment,
    nombreServicio varchar(250) not null,
    descripcionServicio varchar(250)not null,
    precioServicio double(10,2)not null,
    primary key PK_codigoServicio(codigoServicio)
);
-- order de servicio
create table OrdenServicio(
	codigoOrdenServicio int not null auto_increment,
    codigoAuto int not null,
    codigoCliente int not null,
    codigoEmpleado int not null,
    codigoServicio int not null,
    fechaIngreso date,
    estado enum("Pendiente","En proceso","Finalizado"),
    primary key PK_codigoOrdenServicio(codigoOrdenServicio),
    constraint FK_ordenServicio_Auto foreign key(codigoAuto)
		references Auto(codigoAuto)on delete cascade,
	constraint FK_ordenServicio_Cliente foreign key(codigoCliente)
		references Cliente(codigoCliente)on delete cascade,
	constraint FK_ordenServicio_Empleado foreign key(codigoEmpleado)
		references Empleado(codigoEmpleado)on delete cascade,
	constraint FK_ordenServicio_Servicio foreign key(codigoServicio)
		references Servicio(codigoServicio)on delete cascade
);
-- Reparacion /cambios de piesas
create table Reparacion(
	codigoReparacion int not null auto_increment,
	nombreReparacion varchar(250) not null,
    descripcionReparacion varchar(250)not null,
    precioReparacion double(10,2)not null,
    primary key PK_codigoReparacion(codigoReparacion)
);

-- Orden Reparacion 
create table OrdenReparacion(
	codigoOrdenReparacion int not null auto_increment,
	codigoAutoReparacion int not null,
    codigoClienteReparacion int not null,
    codigoEmpleadoReparacion int not null,
    codigoReparacion int not null,
    fechaIngresoReparacion date,
    estadoReparacion enum("Pendiente","En proceso","Finalizado"),
    primary key PK_codigoOrdenReparacion(codigoOrdenReparacion),
    constraint FK_ordenReparacion_Auto foreign key(codigoAutoReparacion)
		references Auto(codigoAuto)on delete cascade,
	constraint FK_ordenReparacion_Cliente foreign key(codigoClienteReparacion)
		references Cliente(codigoCliente)on delete cascade,
	constraint FK_ordenReparacion_Empleado foreign key(codigoEmpleadoReparacion)
		references Empleado(codigoEmpleado)on delete cascade,
	constraint FK_ordenReparacion_Reparacion foreign key(codigoReparacion)
		references Reparacion(codigoReparacion)on delete cascade
);		

-- factura
create table factura(
	codigoFactura int not null auto_increment,
    codigoClienteFactura int not null,
    codigoEmpleadoFactura int not null,
    codigoAutoFactura int not null,
    fechaEmision date,
    total double(10,2) default 0.0, -- con trigger xd
    metodoPago enum("Targeta","Efectivo"),
    primary key PK_codigoFactura(codigoFactura),
    constraint FK_codigoFactura_Cliente foreign key (codigoClienteFactura)
		references Cliente(codigoCliente)on delete cascade,
	constraint FK_codigoFactura_Empleado foreign key(codigoEmpleadoFactura)
		references Empleado(codigoEmpleado)on delete cascade,
	constraint FK_codigoFactura_Auto foreign key (codigoAutoFactura)
		references Auto(codigoAuto)on delete cascade
);
-- detalleFactura
create table DetalleFactura (
    codigoDetalle int not null auto_increment,
    codigoFactura int not null,
    tipoGasto enum('Servicio','Reparacion','Llanta','Repuesto','Accesorio') not null,
    codigoGasto int not null,
    cantidad int not null,
    primary key PK_codigoDetalle(codigoDetalle),
    constraint FK_DetalleFactura_Factura foreign key (codigoFactura) 
		references factura(codigoFactura)on delete cascade
);

-- TRIGGERS
-- TRIGGER PARA PRECIO DE FACTURA
-- TRIGGER PARA EL PRECIO
DELIMITER //
create trigger tr_actualizar_totalFactura
	after insert on detalleFactura
    for each row
		begin
			declare precio double(10,2);
            
            set precio = case new.tipoGasto
            when 'Servicio' then (select precioServicio from servicio where codigoServicio = new.codigoGasto)
            when 'Reparacion' then (select precioReparacion from reparacion where codigoReparacion = new.codigoGasto)
            when 'Llanta' then( select precioLlanta from llanta where codigoLlanta = new.codigoGasto)
            when 'Repuesto' then(select precioRepuesto from repuesto where codigoRepuesto = new.codigoGasto)
            when 'Accesorio' then(select precioAccesorio from accesorio where codigoAccesorio = new.codigoGasto)
            else 0
            end;
				update Factura
                set total = total + (precio*new.cantidad)
					where codigoFactura = new.codigoFactura;
        end ;
//
DELIMITER 

-- ---------------------------------SP EMPLEADOS ------------------------------------

-- Agregar --
DELIMITER //
CREATE PROCEDURE sp_AgregarEmpleado(
    IN nEmpleado VARCHAR(250),
    IN tEmpleado CHAR(8),
    IN coEmpleado VARCHAR(250),
    IN dEmpleado VARCHAR(250), 
    IN pEmpleado ENUM('Recepcionista','Mecanico')
)
BEGIN
    INSERT INTO Empleado (nombreEmpleado, telefonoEmpleado, correoEmpleado, direccion, puesto)
    VALUES (nEmpleado, tEmpleado, coEmpleado, dEmpleado, pEmpleado);
END //
DELIMITER ;

CALL sp_AgregarEmpleado('Camila', '33727865', 'camila@gmail.com', 'Zona 8', 'Recepcionista');
CALL sp_AgregarEmpleado('Luis', '44928374', 'luis@gmail.com', 'Zona 1', 'Mecanico');
CALL sp_AgregarEmpleado('Sebastian', '32018745', 'Sebastiana@gmail.com', 'Zona 7', 'Mecanico');
CALL sp_AgregarEmpleado('Carlos', '55429873', 'carlos@gmail.com', 'Zona 2', 'Mecanico');
CALL sp_AgregarEmpleado('Pablo', '33098745', 'pablo@gmail.com', 'Zona 5', 'Mecanico');
CALL sp_AgregarEmpleado('Jorge', '44982736', 'jorge@gmail.com', 'Zona 4', 'Mecanico');
CALL sp_AgregarEmpleado('Maríano', '30129873', 'mariano@gmail.com', 'Zona 9', 'Mecanico');
CALL sp_AgregarEmpleado('Pedro', '44990123', 'pedro@gmail.com', 'Zona 2', 'Mecanico');
CALL sp_AgregarEmpleado('Lucas', '33724567', 'lucas@gmail.com', 'Zona 6', 'Mecanico');
CALL sp_AgregarEmpleado('José', '55890123', 'jose@gmail.com', 'Zona 10', 'Mecanico');
CALL sp_AgregarEmpleado('Mario', '66338542', 'mario@gmail.com', 'Zona 11', 'Mecanico');

-- Listar --
DELIMITER //
CREATE PROCEDURE sp_ListarEmpleado()
BEGIN
    SELECT  codigoEmpleado, nombreEmpleado, telefonoEmpleado, correoEmpleado, direccion, puesto FROM Empleado;
END //
DELIMITER ;

CALL sp_ListarEmpleado();

-- Eliminar --
DELIMITER //
CREATE PROCEDURE sp_EliminarEmpleado(IN cEmpleado INT)
BEGIN
	DELETE FROM Empleado WHERE codigoEmpleado = cEmpleado;
END //
DELIMITER ;
-- CALL sp_EliminarEmpleado(3);

-- Buscar --
DELIMITER //
CREATE PROCEDURE sp_BuscarEmpleado(IN cEmpleado INT)
BEGIN
    SELECT codigoEmpleado, nombreEmpleado, telefonoEmpleado, correoEmpleado, direccion, puesto FROM Empleado WHERE codigoEmpleado = cEmpleado;
END //
DELIMITER ;
CALL sp_BuscarEmpleado(5);

-- Editar --
DELIMITER //
CREATE PROCEDURE sp_EditarEmpleado(
	IN cEmpleado INT,
    IN nEmpleado VARCHAR(250),
    IN tEmpleado CHAR(8),
    IN coEmpleado VARCHAR(250),
    IN dEmpleado VARCHAR(250), 
    IN pEmpleado ENUM('Recepcionista','Mecanico')
)
BEGIN
    UPDATE Empleado
    SET nombreEmpleado= nEmpleado,
        telefonoEmpleado = tEmpleado,
        correoEmpleado = coEmpleado,
        direccion = dEmpleado,
        puesto = pEmpleado
    WHERE codigoEmpleado = cEmpleado;
END //
DELIMITER ;
CALL sp_EditarEmpleado(4, 'Robereto', '44998877', 'roberto@gmail.com', 'Zona 10', 'Mecanico');

-- PROCEDIMIENTOS ALMACENADOS
-- CLIENTE
delimiter //
create procedure sp_ListarCliente()
begin
	select codigoCliente, nombreCliente, telefonoCliente, correoCliente, direccion, contrasena from Cliente;
end //
delimiter ;
call sp_ListarCliente();

delimiter //
create procedure sp_AgregarCliente(
	in nCliente varchar(250),
    in tCliente char(8),
    in cCliente varchar(250),
    in dCliente varchar(250),
    in conCliente varchar(250)
    )
begin
	insert into Cliente(nombreCliente, telefonoCliente, correoCliente, direccion, contrasena)
    values (nCliente, tCliente, cCliente, dCliente, conCliente);
end //
delimiter ;
call sp_AgregarCliente('Ana López','12345678','ana.lopez@gmail.com','Zona 1', 'maxQuinto');
call sp_AgregarCliente('Carlos Méndez','23456789','carlos.m@gmail.com','Zona 2', 'aquiSiFolgar');
call sp_AgregarCliente('Lucía Torres','34567890','lucia.t@gmail.com','Zona 3', 'ArochaCalculadora');
call sp_AgregarCliente('Mario Ruiz','45678901','mario.r@gmail.com','Zona 4', 'Mbappe123');
call sp_AgregarCliente('Sandra Díaz','56789012','sandra.d@gmail.com','Zona 5', 'TortugaNinja');
call sp_AgregarCliente('José Ramírez','67890123','jose.r@gmail.com','Zona 6', 'clckk');
call sp_AgregarCliente('Paola Soto','78901234','paola.s@gmail.com','Zona 7', 'tralalero tralala');
call sp_AgregarCliente('Luis Castillo','89012345','luis.c@gmail.com','Zona 8', 'sipirili');
call sp_AgregarCliente('Diana Pérez','90123456','diana.p@gmail.com','Zona 9', 'noporolo');
call sp_AgregarCliente('Héctor Gómez','10234567','hector.g@gmail.com','Zona 10', 'terreneitor');
call sp_AgregarCliente('Andrea Cruz','11234567','andrea.c@gmail.com','Zona 11', 'chavito');

delimiter //
create procedure sp_EliminarCliente(in cCliente int)
begin
	delete from Cliente where codigoCliente = cCliente;
end //
delimiter ;
-- call sp_EliminarCliente(6);

delimiter //
create procedure sp_ModificarCliente(
	in cCliente int, 
    in nCliente varchar(250),
    in tCliente char(8),
    in coCliente varchar(250),
    in dCliente varchar(250),
    in conCliente varchar(250)
)
begin
	update Cliente
    set nombreCliente = nCliente,
		telefonoCliente = tCliente,
        correoCliente = coCliente,
        direccion = dCliente,
        contrasena = conCliente
	where codigoCliente = cCliente;
end //
delimiter ;
-- call sp_ModificarCliente(1, 'Andre', 12123123, 'asdasd@gmail.com', 'zona 1', 'maxQuinto');

delimiter //
create procedure sp_BuscarCliente(in cCliente int)
begin
	select codigoCliente, nombreCliente, telefonoCliente, correoCliente, direccion, contrasena from Cliente
    where codigoCliente = cCliente;
end //
delimiter ;
-- call sp_BuscarCliente(1);
-- VALIDACION DE CLIENTE PARA USUARIO
DELIMITER $$
create procedure sp_validarCliente(in userr varchar(100), in pass blob)
	begin
		select codigoCliente, nombreCliente, telefonoCliente, correoCliente, direccion, contrasena from Cliente
			where nombreCliente = userr and contrasena = pass;
    end$$
DELIMITER ;
call sp_validarCliente("Ana López","maxQuinto");

DELIMITER $$
create procedure sp_NoDuplicarCliente(
    in username varchar(20)
)
begin
    select codigoCliente, nombreCliente, telefonoCliente, correoCliente, direccion, contrasena from Cliente
    where nombreCliente = username;
end$$
DELIMITER ;
call sp_NoDuplicarCliente("Ana López");
-- AUTO
delimiter //
create procedure sp_ListarAuto()
begin
	select codigoAuto, codigoCliente, placa, marca, modelo, color from Auto;
end //
delimiter ;
call sp_ListarAuto();

delimiter //
create procedure sp_AgregarAuto(
	in cCliente int,
    in pAuto varchar(7), 
    in mAuto varchar(250), 
    in moAuto varchar(250), 
    in cAuto varchar(250)
)
begin
	insert into Auto(codigoCliente, placa, marca, modelo, color)
    values(cCliente, pAuto, mAuto, moAuto, cAuto);
end //
delimiter ;
call sp_AgregarAuto(1,'P123AAA','Toyota','Corolla','Blanco');
call sp_AgregarAuto(2,'P234BBB','Honda','Civic','Negro');
call sp_AgregarAuto(3,'P345CCC','Mazda','3','Rojo');
call sp_AgregarAuto(4,'P456DDD','Hyundai','Elantra','Azul');
call sp_AgregarAuto(5,'P567EEE','Kia','Rio','Gris');
call sp_AgregarAuto(6,'P678FFF','Nissan','Versa','Plateado');
call sp_AgregarAuto(7,'P789GGG','Chevrolet','Aveo','Verde');
call sp_AgregarAuto(8,'P890HHH','Ford','Fiesta','Negro');
call sp_AgregarAuto(9,'P901III','Volkswagen','Jetta','Blanco');
call sp_AgregarAuto(10,'P012JJJ','Subaru','Impreza','Azul');
call sp_AgregarAuto(11,'P123KKK','Suzuki','Swift','Rosado');

delimiter //
create procedure sp_EliminarAuto(in cAuto int)
begin
	delete from Auto where codigoAuto = cAuto;
end //
delimiter ;
-- call sp_EliminarAuto(2);

delimiter //
create procedure sp_ModificarAuto(
	in cAuto int,
    in cCliente int,
    in pAuto varchar(7), 
    in mAuto varchar(250),
    in moAuto varchar(250),
    in coAuto varchar(250)
)
begin
	update Auto
    set codigoCliente = cCliente, 
        placa = pAuto,
        marca = mAuto,
        modelo = moAuto, 
        color = coAuto
	where codigoAuto = cAuto;
end //
delimiter ;
-- call sp_ModificarAuto (1, 1, 'P123IOP', 'Supra', 'mk', 'negrito');

delimiter //
create procedure sp_BuscarAuto(in cAuto int)
begin	
	select codigoCliente, placa, marca, modelo, color from Auto
    where codigoAuto = cAuto;
end //
delimiter ;
call sp_BuscarAuto(1);

-- procedimientos almacenados de llanta --

DELIMITER $$
create procedure sp_nuevaLlanta(
    in anchoMilimentos int,
    in perfil int,
    in tipoConstruccion enum("Radial","Diagonal","Cinturada"),
    in diametroRin int, 
    in cargaMaximakg int,
    in precioLlanta double(10,2)
)
	begin
		insert into Llanta(codigoLlanta, anchoMilimentos, perfil, tipoConstruccion, diametroRin, cargaMaximakg,precioLlanta)
			value(codigoLlanta, anchoMilimentos, perfil, tipoConstruccion, diametroRin, cargaMaximakg,precioLlanta);
    end$$
DELIMITER ;
call sp_nuevaLlanta("250","22","Radial","23","91",250.00);
call sp_nuevaLlanta(195, 65, 'Radial', 15, 615,300.00);
call sp_nuevaLlanta(205, 55, 'Radial', 16, 670,270.00);
call sp_nuevaLlanta(215, 60, 'Radial', 16, 710,290.00);
call sp_nuevaLlanta(225, 45, 'Cinturada', 17, 750,300.00);
call sp_nuevaLlanta(235, 50, 'Radial', 18, 800,310.00);
call sp_nuevaLlanta(245, 40, 'Cinturada', 19, 850,290.00);
call sp_nuevaLlanta(265, 70, 'Diagonal', 16, 950,290.00);
call sp_nuevaLlanta(275, 65, 'Radial', 17, 975,340.00);
call sp_nuevaLlanta(285, 75, 'Diagonal', 16, 1100,250.00);
call sp_nuevaLlanta(295, 80, 'Diagonal', 20, 1250,290.00);
call sp_nuevaLlanta(305, 55, 'Radial', 22, 1350,340.00);
call sp_nuevaLlanta(315, 70, 'Cinturada', 24, 1500,390.00);
DELIMITER $$
create procedure sp_verllantas()
	begin
		select codigoLlanta, anchoMilimentos, perfil, tipoConstruccion, diametroRin, cargaMaximakg, precioLlanta from Llanta;
    end$$
DELIMITER ;
call sp_verllantas();

DELIMITER $$
create procedure sp_buscarLlanta(in bllanta int)
	begin
		select codigoLlanta, anchoMilimentos, perfil, tipoConstruccion, diametroRin, cargaMaximakg, precioLlanta from Llanta
			where codigoLlanta = bllanta;
    end $$
DELIMITER ;
call sp_buscarLlanta(1);

DELIMITER $$
create procedure sp_EliminarLanta( in borrarllanta int)
	begin
		delete from Llanta
			where codigoLlanta = borrarllanta;
    end $$
DELIMITER ;
-- call sp_EliminarLanta(11);

DELIMITER $$
create procedure sp_editarLLanta(
	in _codigoLlanta int,
	in _anchoMilimentos int,
    in _perfil int,
    in _tipoConstruccion enum("Radial","Diagonal","Cinturada"),
    in _diametroRin int, 
    in _cargaMaximakg int,
    in _precioLlanta double(10,2)
    )
    begin
		update Llanta
			set
				anchoMilimentos  = _anchoMilimentos,
				perfil = _perfil,
				tipoConstruccion = _tipoConstruccion,
				diametroRin = _diametroRin,
				cargaMaximakg  = _cargaMaximakg,
                precioLlanta = _precioLlanta
                where codigoLlanta = _codigoLlanta;
	end $$
DELIMITER ;
call sp_editarLlanta(1,"250","22","Radial","23","91",300.00);

-- Procedimiento almacenado de Repuesto
-- ------ Agregar Repuesto -------------
Delimiter $$
Create procedure sp_AgregarRepuesto (
    in nomRep varchar(250),
    in descRep varchar(250),
    in precio double(10,2),
    in stock int,
    in estado enum('Disponibles', 'Agotados')
)
begin
    insert into Repuesto (nombreRepuesto, descripcionRepuesto, precioRepuesto, stockRepuesto, estadoRepuesto)
    values (nomRep, descRep, precio, stock, estado);
end$$
Delimiter ;

call sp_AgregarRepuesto('Filtro de aceite', 'Filtro compatible con Toyota', 55.75, 20, 'Disponibles');
call sp_AgregarRepuesto('Bujía NGK', 'Bujía para motores 4 cilindros', 32.00, 50, 'Disponibles');
call sp_AgregarRepuesto('Pastillas de freno', 'Pastillas cerámicas delanteras', 110.99, 0, 'Agotados');
call sp_AgregarRepuesto('Aceite sintético 10W40', 'Galón de aceite sintético', 210.50, 35, 'Disponibles');
call sp_AgregarRepuesto('Filtro de aire', 'Filtro estándar para SUV', 44.00, 0, 'Agotados');
call sp_AgregarRepuesto('Correa de distribución', 'Correa para motor 2.0L', 85.25, 15, 'Disponibles');
call sp_AgregarRepuesto('Amortiguador', 'Amortiguador trasero para sedan', 120.00, 12, 'Disponibles');
call sp_AgregarRepuesto('Radiador', 'Radiador para motor 1.8L', 180.00, 5, 'Disponibles');
call sp_AgregarRepuesto('Batería 12V', 'Batería estándar para autos compactos', 150.00, 8, 'Disponibles');
call sp_AgregarRepuesto('Bombilla faro', 'Bombilla halógena para faros delanteros', 25.50, 40, 'Disponibles');
call sp_AgregarRepuesto('Aceite de transmisión', 'Aceite para transmisión automática', 95.00, 10, 'Disponibles');


-- ------ Listar Repuesto -------------
Delimiter $$
Create procedure sp_ListarRepuestos ()
begin
    select codigoRepuesto, nombreRepuesto, descripcionRepuesto, precioRepuesto, stockRepuesto, estadoRepuesto
		from Repuesto;
end$$
Delimiter ;
call sp_ListarRepuestos(); 

-- ------ Buscar Repuesto -------------
Delimiter $$
Create Procedure sp_BuscarRepuesto (in codiRep int)
begin
    select codigoRepuesto, nombreRepuesto, descripcionRepuesto, precioRepuesto, stockRepuesto, estadoRepuesto
		from Repuesto
    where codigoRepuesto = codiRep;
end$$
Delimiter ;
call sp_BuscarRepuesto(2); 

-- ------ Eliminar Repuesto -------------
Delimiter $$
Create procedure sp_EliminarRepuesto (in codiRep int)
begin
    delete from Repuesto
    where codigoRepuesto = codiRep;
end$$
delimiter ;
-- call sp_EliminarRepuesto (4); 

-- ------ Modificar Repuesto -------------
Delimiter $$
Create procedure sp_EditarRepuesto (
    in codiRep int,
    in nom varchar(250),
    in descrip varchar(250),
    in precio double(10,2),
    in stock int,
    in estado enum('Disponibles', 'Agotados')
)
begin
    update Repuesto
    set 
        nombreRepuesto = nom,
        descripcionRepuesto = descrip,
        precioRepuesto = precio,
        stockRepuesto = stock,
        estadoRepuesto = estado
    where codigoRepuesto = codiRep;
end$$
Delimiter ;

-- PROCEDIMIENTOS DE ACCESORIOS
DELIMITER //
CREATE PROCEDURE sp_insertarAccesorio(
    IN p_nombre VARCHAR(250),
    IN p_descripcion VARCHAR(250),
    IN p_precio DOUBLE(10,2),
    IN p_stock INT,
    IN p_estado ENUM('Disponibles','Agotados')
)
BEGIN
    INSERT INTO Accesorio (nombreAccesorio, descripcionAccesorio, precioAccesorio, stockAccesorio, estadoAccesorio)
    VALUES (p_nombre, p_descripcion, p_precio, p_stock, p_estado);
END //
DELIMITER ;

CALL sp_insertarAccesorio ('Filtro de aceite', 'Filtro para motor 4 cilindros', 45.00, 10, 'Disponibles');
CALL sp_insertarAccesorio ('Aceite 10W-30', 'Aceite sintético 1L', 90.00, 15, 'Disponibles');
CALL sp_insertarAccesorio ('Batería 12V', 'Batería de auto estándar', 600.00, 3, 'Disponibles');
CALL sp_insertarAccesorio ('Pastillas de freno', 'Juego delantero para sedán', 150.00, 5, 'Disponibles');
CALL sp_insertarAccesorio ('Limpiaparabrisas', 'Juego de escobillas 20 pulgadas', 75.00, 8, 'Disponibles');
CALL sp_insertarAccesorio ('Fusible universal', 'Fusible de repuesto 10A', 5.00, 0, 'Agotados');
CALL sp_insertarAccesorio ('Anticongelante', 'Botella de refrigerante 1L', 65.00, 6, 'Disponibles');
CALL sp_insertarAccesorio ('Cargador USB', 'Cargador doble para auto', 40.00, 12, 'Disponibles');
CALL sp_insertarAccesorio ('Tapones de válvula', 'Juego de 4 tapones cromados', 20.00, 0, 'Agotados');
CALL sp_insertarAccesorio ('Alfombra de hule', 'Alfombra universal para auto', 130.00, 7, 'Disponibles');
CALL sp_insertarAccesorio ('Soporte para celular', 'Soporte magnético para auto', 60.00, 4, 'Disponibles');

DELIMITER //
CREATE PROCEDURE sp_listarAccesorios()
BEGIN
    SELECT 
        codigoAccesorio,
        nombreAccesorio,
        descripcionAccesorio,
        precioAccesorio,
        stockAccesorio,
        estadoAccesorio
    FROM Accesorio;
END //
DELIMITER ;

CALL sp_listarAccesorios();

DELIMITER //
CREATE PROCEDURE sp_buscarAccesorio(
    IN codigoAc int
)
BEGIN
    SELECT codigoAccesorio, nombreAccesorio, descripcionAccesorio, precioAccesorio, stockAccesorio, estadoAccesorio FROM Accesorio
    WHERE codigoAccesorio = codigoAc;
END //
DELIMITER ;
 
CALL sp_buscarAccesorio(1);

DELIMITER //
CREATE PROCEDURE sp_editarAccesorio(
    IN p_codigo INT,
    IN p_nombre VARCHAR(250),
    IN p_descripcion VARCHAR(250),
    IN p_precio DOUBLE(10,2),
    IN p_stock INT,
    IN p_estado ENUM('Disponibles','Agotados')
)
BEGIN
    UPDATE Accesorio
    SET nombreAccesorio = p_nombre, descripcionAccesorio = p_descripcion, precioAccesorio = p_precio, stockAccesorio = p_stock, estadoAccesorio = p_estado
    WHERE codigoAccesorio = p_codigo;
END //
DELIMITER ;

CALL sp_editarAccesorio(1, 'Filtro de aceite premium', 'Filtro reforzado', 55.00, 8, 'Disponibles');


DELIMITER //
CREATE PROCEDURE sp_eliminarAccesorio(IN p_codigo INT)
BEGIN
    DELETE FROM Accesorio WHERE codigoAccesorio = p_codigo;
END //
DELIMITER ;

-- CALL sp_eliminarAccesorio(5);

-- Procedimientos almacenados 
-- Procedimiento almacenado de Servicio
-- ----------- Agregar Servicio ------------------
delimiter //
create procedure sp_agregarservicio(
    in nservicio varchar(250),
    in dservicio varchar(250),
    in pservicio double
)
begin
    insert into servicio (nombreservicio, descripcionservicio, precioservicio)
    values (nservicio, dservicio, pservicio);
end //
delimiter ;
call sp_agregarservicio('alineación', 'alineación de ruedas', 150.00);
call sp_agregarservicio('balanceo', 'balanceo de llantas', 120.00);
call sp_agregarservicio('cambio de aceite', 'aceite sintético 10w-30', 200.00);
call sp_agregarservicio('lavado', 'lavado completo interior y exterior', 100.00);
call sp_agregarservicio('diagnóstico', 'escaneo completo del vehículo', 250.00);
call sp_agregarservicio('frenos', 'revisión y cambio de frenos', 300.00);
call sp_agregarservicio('suspensión', 'ajuste y revisión de suspensión', 400.00);
call sp_agregarservicio('pintura', 'pintura general de vehículo', 1200.00);
call sp_agregarservicio('revisión general', 'revisión de 30 puntos', 180.00);
call sp_agregarservicio('electricidad', 'revisión del sistema eléctrico', 350.00);

-- ----------- Listar Servicio ---------------------
delimiter //
create procedure sp_listarservicio()
begin
    select codigoservicio, nombreservicio, descripcionservicio, precioservicio from servicio;
end //
delimiter ;
call sp_listarservicio();

-- ------------ Eliminar Servicio ------------------
delimiter //
create procedure sp_eliminarservicio(in cservicio int)
begin
    delete from servicio where codigoservicio = cservicio;
end //
delimiter ;
-- call sp_eliminarservicio(3);

-- ---------------- Buscar Servicio ------------
delimiter //
create procedure sp_buscarservicio(in cservicio int)
begin
    select codigoservicio, nombreservicio, descripcionservicio, precioservicio 
    from servicio 
    where codigoservicio = cservicio;
end //
delimiter ;
call sp_buscarservicio(5);

-- -------------- Editar Servicio ---------------
delimiter //
create procedure sp_editarservicio(
    in cservicio int,
    in nservicio varchar(250),
    in dservicio varchar(250),
    in pservicio double
)
begin
    update servicio
    set nombreservicio = nservicio,
        descripcionservicio = dservicio,
        precioservicio = pservicio
    where codigoservicio = cservicio;
end //
delimiter ;
call sp_editarservicio(4, 'lavado premium', 'lavado con cera y desinfección interior', 180.00);

-- ------------------ Orden Servicio -------------------------
-- ------------------ Agregar orden Servicio ------------------
delimiter //
Create procedure sp_AgregarOrdenServicio(
	in cAuto int,
	in cCliente int,
	in cEmpleado int,
	in cServicio int,
	in fIngreso date,
	in eOrden enum('Pendiente','En proceso','Finalizado')
)
begin
	insert into OrdenServicio (codigoAuto, codigoCliente, codigoEmpleado, codigoServicio, fechaIngreso, estado)
	values (cAuto, cCliente, cEmpleado, cServicio, fIngreso, eOrden);
end //
delimiter ;

call sp_AgregarOrdenServicio(1, 1, 2, 1, '2025-07-01', 'Pendiente');
call sp_AgregarOrdenServicio(2, 2, 4, 3, '2025-07-02', 'En proceso');
call sp_AgregarOrdenServicio(3, 3, 6, 2, '2025-07-03', 'Finalizado');
call sp_AgregarOrdenServicio(4, 4, 8, 4, '2025-07-04', 'Pendiente');
call sp_AgregarOrdenServicio(5, 5, 10, 5, '2025-07-05', 'En proceso');
call sp_AgregarOrdenServicio(6, 6, 11, 6, '2025-07-05', 'Finalizado');
call sp_AgregarOrdenServicio(7, 7, 2, 7, '2025-07-06', 'Pendiente');
call sp_AgregarOrdenServicio(8, 8, 4, 8, '2025-07-06', 'En proceso');
call sp_AgregarOrdenServicio(9, 9, 6, 9, '2025-07-07', 'Pendiente');
call sp_AgregarOrdenServicio(10, 10, 8, 10, '2025-07-07', 'Finalizado');
call sp_AgregarOrdenServicio(11, 11, 10, 1, '2025-07-08', 'Pendiente');
call sp_AgregarOrdenServicio(3, 3, 11, 3, '2025-07-08', 'En proceso');
call sp_AgregarOrdenServicio(1, 1, 2, 5, '2025-07-09', 'Pendiente');
call sp_AgregarOrdenServicio(5, 5, 4, 2, '2025-07-09', 'Finalizado');
call sp_AgregarOrdenServicio(2, 2, 6, 6, '2025-07-10', 'En proceso');

-- ------------------- Listar orden Servicio ---------------------
delimiter //
Create procedure sp_ListarOrdenServicio()
begin
	select
		os.codigoOrdenServicio,
		cl.nombreCliente,
		au.placa,
		em.nombreEmpleado,
		se.nombreServicio,
		os.fechaIngreso,
		os.estado
	from OrdenServicio os
	join Cliente cl on os.codigoCliente = cl.codigoCliente
	join Auto au on os.codigoAuto = au.codigoAuto
	join Empleado em on os.codigoEmpleado = em.codigoEmpleado
	join Servicio se on os.codigoServicio = se.codigoServicio;
end //
delimiter ;

call sp_ListarOrdenServicio();

-- ----------------- Eliminar orden Servicio -------------------
delimiter //
Create procedure sp_EliminarOrdenServicio(in cOrden int)
begin
	delete from OrdenServicio where codigoOrdenServicio = cOrden;
end //
delimiter ;

-- call sp_EliminarOrdenServicio(3);

-- --------------------- Buscar orden Servicio -----------------
delimiter //
Create procedure sp_BuscarOrdenServicio(in cOrden int)
begin
	select
		os.codigoOrdenServicio,
		cl.nombreCliente,
		au.placa,
		em.nombreEmpleado,
		se.nombreServicio,
		os.fechaIngreso,
		os.estado
	from OrdenServicio os
	join Cliente cl on os.codigoCliente = cl.codigoCliente
	join Auto au on os.codigoAuto = au.codigoAuto
	join Empleado em on os.codigoEmpleado = em.codigoEmpleado
	join Servicio se on os.codigoServicio = se.codigoServicio
	where os.codigoOrdenServicio = cOrden;
end //
delimiter ;

call sp_BuscarOrdenServicio(2);

-- ------------------ Editar orden Servicio ------------------
delimiter //
Create procedure sp_EditarOrdenServicio(
	in cOrden int,
	in cAuto int,
	in cCliente int,
	in cEmpleado int,
	in cServicio int,
	in fIngreso date,
	in eOrden enum('Pendiente','En proceso','Finalizado')
)
begin
	update OrdenServicio
	set codigoAuto = cAuto,
		codigoCliente = cCliente,
		codigoEmpleado = cEmpleado,
		codigoServicio = cServicio,
		fechaIngreso = fIngreso,
		estado = eOrden
	where codigoOrdenServicio = cOrden;
end //
delimiter ;

call sp_EditarOrdenServicio(2, 1, 1, 4, 2, '2025-07-06', 'En proceso');

-- ---------------- REPARACION -------------
-- AGREGAR REPARACION
DELIMITER //
CREATE PROCEDURE sp_AgregarReparacion(
	IN nombreReparacion VARCHAR(250),
	IN descripcionReparacion VARCHAR(250),
	IN precioReparacion DOUBLE(10,2)
)
BEGIN
	INSERT INTO Reparacion (nombreReparacion, descripcionReparacion, precioReparacion)
    VALUES (nombreReparacion, descripcionReparacion, precioReparacion);
END//
DELIMITER ;

CALL sp_AgregarReparacion('Cambio de aceite', 'Aceite sintético y filtro nuevo', 250.00);
CALL sp_AgregarReparacion('Cambio de frenos', 'Pastillas delanteras nuevas', 450.00);
CALL sp_AgregarReparacion('Alineación y balanceo', 'Ruedas alineadas y balanceadas', 300.00);
CALL sp_AgregarReparacion('Revisión del motor', 'Chequeo de sensores y niveles', 500.00);
CALL sp_AgregarReparacion('Cambio de batería', 'Instalación de batería 12V nueva', 620.00);
CALL sp_AgregarReparacion('Cambio de bujías', 'Sustitución de bujías desgastadas', 200.00);
CALL sp_AgregarReparacion('Reparación de suspensión', 'Reemplazo de amortiguadores', 800.00);
CALL sp_AgregarReparacion('Revisión de frenos ABS', 'Diagnóstico y ajuste de ABS', 550.00);
CALL sp_AgregarReparacion('Limpieza de inyectores', 'Servicio con ultrasonido', 350.00);
CALL sp_AgregarReparacion('Diagnóstico electrónico', 'Escaneo completo del sistema', 400.00);
CALL sp_AgregarReparacion('Reparación de transmisión', 'Cambio de aceite y ajuste', 950.00);


-- LISTAR REPARACIONES
DELIMITER //
CREATE PROCEDURE sp_ListarReparaciones()
BEGIN
    SELECT codigoReparacion, nombreReparacion, descripcionReparacion, precioReparacion
    FROM Reparacion;
END//
DELIMITER ;

-- ELIMINAR REPARACION
DELIMITER //
CREATE PROCEDURE sp_EliminarReparacion(IN codigoReparacion INT)
BEGIN
    SET foreign_key_checks = 0;
    DELETE FROM Reparacion WHERE codigoReparacion = codigoReparacion;
    SET foreign_key_checks = 1;
END//
DELIMITER ;

-- BUSCAR REPARACION
DELIMITER //
CREATE PROCEDURE sp_BuscarReparacion(IN codigoReparacion INT)
BEGIN
    SELECT codigoReparacion, nombreReparacion, descripcionReparacion, precioReparacion
    FROM Reparacion
    WHERE codigoReparacion = codigoReparacion;
END//
DELIMITER ;

-- EDITAR REPARACION
DELIMITER //
CREATE PROCEDURE sp_EditarReparacion(
	IN codigoReparacion INT,
	IN nombreReparacion VARCHAR(250),
	IN descripcionReparacion VARCHAR(250),
	IN precioReparacion DOUBLE(10,2)
)
BEGIN
	UPDATE Reparacion 
	SET nombreReparacion = nombreReparacion,
		descripcionReparacion = descripcionReparacion,
		precioReparacion = precioReparacion
	WHERE codigoReparacion = codigoReparacion;
END//
DELIMITER ;

-- ---------------- ORDEN REPARACION -------------
-- AGREGAR ORDEN DE REPARACION
DELIMITER //
CREATE PROCEDURE sp_AgregarOrdenReparacion(
	IN codigoAutoReparacion INT,
	IN codigoClienteReparacion INT,
	IN codigoEmpleadoReparacion INT,
	IN codigoReparacion INT,
	IN fechaIngresoReparacion DATE,
	IN estadoReparacion ENUM('Pendiente', 'En proceso', 'Finalizado')
)
BEGIN
	INSERT INTO OrdenReparacion (
		codigoAutoReparacion, codigoClienteReparacion, codigoEmpleadoReparacion,
		codigoReparacion, fechaIngresoReparacion, estadoReparacion
	)
	VALUES (
		codigoAutoReparacion, codigoClienteReparacion, codigoEmpleadoReparacion,
		codigoReparacion, fechaIngresoReparacion, estadoReparacion
	);
END//
DELIMITER ;

CALL sp_AgregarOrdenReparacion(1, 1, 1, 1, '2025-07-01', 'Pendiente');
CALL sp_AgregarOrdenReparacion(2, 2, 2, 2, '2025-07-02', 'En proceso');
CALL sp_AgregarOrdenReparacion(3, 3, 1, 3, '2025-07-03', 'Finalizado');
CALL sp_AgregarOrdenReparacion(4, 4, 2, 4, '2025-07-04', 'Pendiente');
CALL sp_AgregarOrdenReparacion(5, 5, 3, 5, '2025-07-05', 'En proceso');
CALL sp_AgregarOrdenReparacion(6, 1, 2, 6, '2025-07-06', 'Pendiente');
CALL sp_AgregarOrdenReparacion(7, 2, 1, 7, '2025-07-07', 'En proceso');
CALL sp_AgregarOrdenReparacion(8, 3, 3, 8, '2025-07-08', 'Finalizado');
CALL sp_AgregarOrdenReparacion(9, 4, 2, 9, '2025-07-09', 'Pendiente');
CALL sp_AgregarOrdenReparacion(10, 5, 1, 10, '2025-07-10', 'Finalizado');
CALL sp_AgregarOrdenReparacion(1, 3, 2, 11, '2025-07-11', 'Pendiente');


-- LISTAR ORDENES DE REPARACION
DELIMITER //
CREATE PROCEDURE sp_ListarOrdenesReparacion()
BEGIN
	SELECT codigoOrdenReparacion, codigoAutoReparacion, codigoClienteReparacion,
		   codigoEmpleadoReparacion, codigoReparacion, fechaIngresoReparacion,
		   estadoReparacion
	FROM OrdenReparacion;
END//
DELIMITER ;

-- ELIMINAR ORDEN DE REPARACION
DELIMITER //
CREATE PROCEDURE sp_EliminarOrdenReparacion(IN codigoOrdenReparacion INT)
BEGIN
	SET foreign_key_checks = 0;
	DELETE FROM OrdenReparacion WHERE codigoOrdenReparacion = codigoOrdenReparacion;
	SET foreign_key_checks = 1;
END//
DELIMITER ;

-- BUSCAR ORDEN DE REPARACION
DELIMITER //
CREATE PROCEDURE sp_BuscarOrdenReparacion(IN codigoOrdenReparacion INT)
BEGIN
	SELECT codigoOrdenReparacion, codigoAutoReparacion, codigoClienteReparacion,
		   codigoEmpleadoReparacion, codigoReparacion, fechaIngresoReparacion,
		   estadoReparacion
	FROM OrdenReparacion
	WHERE codigoOrdenReparacion = codigoOrdenReparacion;
END//
DELIMITER ;

-- EDITAR ORDEN DE REPARACION
DELIMITER //
CREATE PROCEDURE sp_EditarOrdenReparacion(
	IN codigoOrdenReparacion INT,
	IN codigoAutoReparacion INT,
	IN codigoClienteReparacion INT,
	IN codigoEmpleadoReparacion INT,
	IN codigoReparacion INT,
	IN fechaIngresoReparacion DATE,
	IN estadoReparacion ENUM('Pendiente', 'En proceso', 'Finalizado')
)
BEGIN
	UPDATE OrdenReparacion
	SET codigoAutoReparacion = codigoAutoReparacion,
		codigoClienteReparacion = codigoClienteReparacion,
		codigoEmpleadoReparacion = codigoEmpleadoReparacion,
		codigoReparacion = codigoReparacion,
		fechaIngresoReparacion = fechaIngresoReparacion,
		estadoReparacion = estadoReparacion
	WHERE codigoOrdenReparacion = codigoOrdenReparacion;
END//
DELIMITER ;
-- Procedimientos almacenados de factura 
-- agregar factura
DELIMITER //
create procedure sp_agregarFactura(
	in codigoClienteFactura int,
    in codigoEmpleadoFactura int ,
    in codigoAutoFactura int ,
    in fechaEmision date ,
    in metodoPago enum("Targeta","Efectivo")
)
	begin
		insert into Factura(codigoClienteFactura, codigoEmpleadoFactura, codigoAutoFactura, fechaEmision, metodoPago)
			value(codigoClienteFactura, codigoEmpleadoFactura, codigoAutoFactura, fechaEmision, metodoPago);
    end //
DELIMITER ;
call sp_agregarFactura(1,1,1,"2025-01-10","Efectivo");
call sp_agregarFactura(2,5,2,"2025-01-15","Efectivo");
call sp_agregarFactura(3,7,3,"2025-01-20","Efectivo");
call sp_agregarFactura(4,9,4,"2025-01-25","Efectivo");
call sp_agregarFactura(5,9,5,"2025-02-02","Efectivo");
call sp_agregarFactura(6,9,6,"2025-02-08","Efectivo");
call sp_agregarFactura(7,7,7,"2025-02-14","Efectivo");
call sp_agregarFactura(8,7,8,"2025-03-01","Efectivo");
call sp_agregarFactura(9,5,9,"2025-03-03","Efectivo");
call sp_agregarFactura(10,1,10,"2025-03-09","Efectivo");
call sp_agregarFactura(11,1,11,"2025-03-10","Efectivo");

-- VER FACTURAS -
DELIMITER //
create procedure sp_ListarFactura()
	begin
		select codigoFactura, codigoClienteFactura, codigoEmpleadoFactura, codigoAutoFactura, fechaEmision, total, metodoPago from Factura;
    end//
DELIMITER ;
call sp_ListarFactura();

-- BUSCAR FACURA --
DELIMITER //
create procedure sp_BuscarFactura(in buscarFactura int)
begin
		select codigoFactura, codigoClienteFactura, codigoEmpleadoFactura, codigoAutoFactura, fechaEmision, total, metodoPago from Factura
			where codigoFactura = buscarFactura;
    end//
DELIMITER ;
call sp_BuscarFactura(1);

-- ELIMINAR FACTURA
DELIMITER //
create procedure sp_EliminarFactura(in exFactura int)
	begin
		delete from Factura
			where codigoFactura = exFactura;
    end //
DELIMITER ;
-- call sp_EliminarFactura(1);

-- ACTUALIZAR FACTURA
DELIMITER //
create procedure sp_EditarFactura(
	in idFactura int,
    in cliente int,
    in empleado int ,
    in auto int ,
    in fechaIngreso date ,
    in totalPago double(10,2),
    in formaPago enum("Targeta","Efectivo")
)
	begin
		update Factura
			set
			codigoClienteFactura = cliente,
            codigoEmpleadoFactura = empleado, 
            codigoAutoFactura = auto,
            fechaEmision = fechaIngreso,
            total = totalPago,
            metodoPago = formaPago
				where codigoFactura = idFactura;
    end //
DELIMITER ;
call sp_EditarFactura(2,2,5,2,"2025-01-15",0.0,"Targeta");

-- PROCEDIMIENO DETALLE FACTURA
-- AGREGAR DETALLESFACTURA
DELIMITER //
create procedure sp_AgregarDetalleFactura(
	in codigoFactura int, 
    in tipoGasto enum('Servicio','Reparacion','Llanta','Repuesto','Accesorio'), 
    in codigoGasto int, 
    in cantidad int
)
	begin	
		insert into detalleFactura(codigoFactura, tipoGasto, codigoGasto, cantidad)
			value(codigoFactura, tipoGasto, codigoGasto, cantidad);
    end //
DELIMITER ;
call sp_AgregarDetalleFactura(1,'Reparacion',1,1);
call sp_AgregarDetalleFactura(2,'Llanta',2,4);
call sp_AgregarDetalleFactura(3,'Reparacion',3,1);
call sp_AgregarDetalleFactura(4,'Servicio',4,1);
call sp_AgregarDetalleFactura(5,'Servicio',5,1);
call sp_AgregarDetalleFactura(6,'Reparacion',6,1);
call sp_AgregarDetalleFactura(7,'Repuesto',7,3);
call sp_AgregarDetalleFactura(8,'Accesorio',8,5);
call sp_AgregarDetalleFactura(9,'Repuesto',9,1);
call sp_AgregarDetalleFactura(10,'Reparacion',10,1);
call sp_AgregarDetalleFactura(11,'Llanta',11,8);

-- MOSTRAR DETALLEFACTURA
DELIMITER //
create procedure sp_MostrarDetallesFactura()
	begin
		select codigoDetalle, codigoFactura, tipoGasto, codigoGasto, cantidad
			from detalleFactura;
    end //
DELIMITER ;
call sp_MostrarDetallesFactura();

-- BUSCAR DETALLE FACTURA
DELIMITER //
create procedure sp_BuscarDetalleFactura(in buscarDetalle int)
	begin
		select codigoDetalle, codigoFactura, tipoGasto, codigoGasto, cantidad
			from detalleFactura where buscarDetalle = codigoDetalle;
    end //
DELIMITER ;
call sp_BuscarDetalleFactura(1);


-- ELIMINAR DETALLEFACTURA
DELIMITER //
create procedure sp_EliminarDetalleFactura(in exDetalle int )
	begin
		delete from detallefactura
			where codigoFactura = exDetalle;
    end //
DELIMITER ;
-- call sp_EliminarDetalleFactura(11);

select * from Cliente where correoCliente = "ana.lopez@gmail.com" and contrasena = "maxQuinto";
