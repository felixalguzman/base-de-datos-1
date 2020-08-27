




2. ¿Cuál es el navegador más usado para realizar las reservas de las boletas?

select n.Nombre, n.Cantidad_Ventas_Online from 
(select N.Nombre, count(*)  as Cantidad_Ventas_Online 
from Navegadores N, Dispositivos D, Dispositivos_Navegadores DN, Boletas_Ventas_Online BVO
where N.codigo = DN.Codigo_Navegador AND
DN.Codigo_Dispositivo = D.Codigo AND
BVO.Codigo_Dispositivo = D.Codigo group by N.nombre) n
where n.Cantidad_Ventas_Online = (select max(n.Cantidad_Ventas_Online) as MaximoUso from (select N.Nombre, count(*)  as Cantidad_Ventas_Online 
from Navegadores N, Dispositivos D, Dispositivos_Navegadores DN, Boletas_Ventas_Online BVO
where N.codigo = DN.Codigo_Navegador AND
DN.Codigo_Dispositivo = D.Codigo AND
BVO.Codigo_Dispositivo = D.Codigo group by N.nombre)n);


--Dirreciones 
insert into Direcciones(Codigo, Calle, Numero, Sector) values('d1','B',3,'sec1');
insert into Direcciones(Codigo, Calle, Numero, Sector) values('d2','C',4,'sec2'); 
insert into Direcciones(Codigo, Calle, Numero, Sector) values('d3','D',5,'sec5');


--Personas
insert into Personas(Codigo,Primer_Nombre,Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_Nacimiento,Sexo,Direccion_Residencia) values('P-01','Felix','Alejandro','Guzman','Garcia','19-AUG-1996','M','d1');
insert into Personas(Codigo,Primer_Nombre,Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_Nacimiento,Sexo,Direccion_Residencia) values('P-02','Emanuel','Simon','Torres','Rodriguez','11-NOV-1996','M','d2');
insert into Personas(Codigo,Primer_Nombre,Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_Nacimiento,Sexo,Direccion_Residencia) values('P-03','Joel','Antonio','Rodriguez','Martinez','21-AUG-1996','M','d3');


--Clientes
insert into Clientes(Codigo,Codigo_Persona,Fecha_Registro) values ('c1','P-01','6-DEC-2016');
insert into Clientes(Codigo,Codigo_Persona,Fecha_Registro) values ('c2','P-02','5-DEC-2015');
insert into Clientes(Codigo,Codigo_Persona,Fecha_Registro) values ('c3','P-03','21-DEC-2014');

--Empleados
insert into Empleados(Codigo, Codigo_Persona, Fecha_Ingreso, Posicion, Salario) values ('emp1','P-02','5-DEC-1996','Boletero','8500.00');
insert into Empleados(Codigo, Codigo_Persona, Fecha_Ingreso, Posicion, Salario) values ('emp2','P-01','5-DEC-2016','Boletero','8500.00');
insert into Empleados(Codigo, Codigo_Persona, Fecha_Ingreso, Posicion, Salario) values ('emp3','P-03','5-SEP-2000','Conserje','9500.26');

--Vendedores
insert into Vendedores(Codigo_Vendedor, Codigo_Empleado, Vendedor_Web) values('Vend1','emp1',1);

--Estaciones
insert into Estaciones(Codigo, Nombre, Codigo_Sector) values('Est1','ProChapa','sec3');
insert into Estaciones(Codigo, Nombre, Codigo_Sector) values('Est2','La Huelgueria','sec4');
insert into Estaciones(Codigo, Nombre, Codigo_Sector) values('Est3','La Veloz','sec2');



--Boleterias
insert into Boleterias(Codigo,Nombre,Codigo_Estacion) values('Bol1','Numero 1','Est1'); 
insert into Boleterias(Codigo,Nombre,Codigo_Estacion) values('Bol2','Numero 2','Est2');
insert into Boleterias(Codigo,Nombre,Codigo_Estacion) values('Bol3','Numero 3','Est3');

--Rutas
insert into Rutas(Codigo,Numero_Ruta,Origen,Destino,Tiempo_Estimado,Tipo) values('R-1',1,'Est1','Est2',TO_DATE('1:10:00', 'hh:mi:ss'),'Urbana');
insert into Rutas(Codigo,Numero_Ruta,Origen,Destino,Tiempo_Estimado,Tipo) values('R-2',2,'Est2','Est3',TO_DATE('4:20:00', 'hh:mi:ss'),'Panoramica');
insert into Rutas(Codigo,Numero_Ruta,Origen,Destino,Tiempo_Estimado,Tipo) values('R-3',3,'Est1','Est3',TO_DATE('6:40:00', 'hh:mi:ss'),'Turistica');

--Rutas_Sectores
insert into Rutas_Sectores(Codigo_Ruta, Codigo_Sector) values ('R-1','sec2'); 
insert into Rutas_Sectores(Codigo_Ruta, Codigo_Sector) values ('R-2','sec4'); 
insert into Rutas_Sectores(Codigo_Ruta, Codigo_Sector) values ('R-3','sec3'); 


--Viajes
insert into Viajes(Codigo,Codigo_Ruta,Fecha_Planificada,Fecha_Salida,Hora_Planificada_Salida,Hora_Salida,Hora_Planificada_Llegada,Hora_Llegada,Estado,Duracion_Viaje,Distancia,Tiempo_Espera) values('V-5','R-1',TO_DATE('2016/12/07', 'yyyy/mm/dd'),TO_DATE('2016/12/07', 'yyyy/mm/dd'),TO_DATE('15:00:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),'Atrasado',TO_DATE('1:10:00', 'hh:mi:ss'),78.6,TO_DATE('01:10:00', 'hh:mi:ss'));
insert into Viajes(Codigo,Codigo_Ruta,Fecha_Planificada,Fecha_Salida,Hora_Planificada_Salida,Hora_Salida,Hora_Planificada_Llegada,Hora_Llegada,Estado,Duracion_Viaje,Distancia,Tiempo_Espera) values('V-6','R-2',TO_DATE('2015/11/06', 'yyyy/mm/dd'),TO_DATE('2015/11/06', 'yyyy/mm/dd'),TO_DATE('11:30:00', 'hh24:mi:ss'),TO_DATE('14:30:00', 'hh24:mi:ss'),TO_DATE('14:30:00', 'hh24:mi:ss'),TO_DATE('14:30:00', 'hh24:mi:ss'),'Atrasado',TO_DATE('3:00:00', 'hh:mi:ss'),85.7,TO_DATE('03:00:00', 'hh:mi:ss'));
insert into Viajes(Codigo,Codigo_Ruta,Fecha_Planificada,Fecha_Salida,Hora_Planificada_Salida,Hora_Salida,Hora_Planificada_Llegada,Hora_Llegada,Estado,Duracion_Viaje,Distancia,Tiempo_Espera) values('V-7','R-3',TO_DATE('2016/08/21', 'yyyy/mm/dd'),TO_DATE('2016/08/21', 'yyyy/mm/dd'),TO_DATE('14:40:00', 'hh24:mi:ss'),TO_DATE('14:40:00', 'hh24:mi:ss'),TO_DATE('18:20:00', 'hh24:mi:ss'),TO_DATE('18:20:00', 'hh24:mi:ss'),'Normal',TO_DATE('3:40:00', 'hh:mi:ss'),99.3,TO_DATE('01:01:00', 'hh:mi:ss'));



--Boletas
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole1','Bol1','V-5','Est2',300.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole2','Bol1','V-5','Est2',300.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole3','Bol1','V-5','Est3',400.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole4','Bol1','V-5','Est2',300.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole5','Bol1','V-5','Est3',400.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole6','Bol1','V-5','Est2',300.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole7','Bol1','V-5','Est3',400.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole8','Bol1','V-5','Est2',300.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole9','Bol1','V-5','Est3',400.00);

insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol10','Bol1','V-6','Est2',250.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol11','Bol1','V-6','Est3',404.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol12','Bol1','V-6','Est2',308.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol13','Bol1','V-6','Est3',489.00);

insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol14','Bol1','V-7','Est2',323.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol15','Bol1','V-7','Est3',445.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol16','Bol1','V-7','Est2',366.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol17','Bol1','V-7','Est3',480.00);


--Modelos
insert into Modelos(Codigo,Nombre)
values('ML1','Big Home');

--Marcas
insert into Marcas(Codigo,Codigo_Modelo,Nombre,Agno)
values('M1','ML1','Toyota',TO_DATE('2003/12/31', 'yyyy/mm/dd'));




--Autobuses			
insert into Autobuses(Codigo,Marca,Fecha_Adquisicion,Capacidad) values('AU1','M1',TO_DATE('2010/12/31', 'yyyy/mm/dd'),60);
insert into Autobuses(Codigo,Marca,Fecha_Adquisicion,Capacidad) values('AU2','M1',TO_DATE('2010/12/31', 'yyyy/mm/dd'),60);
insert into Autobuses(Codigo,Marca,Fecha_Adquisicion,Capacidad) values('AU3','M1',TO_DATE('2010/12/31', 'yyyy/mm/dd'),60);


--Asientos
insert into Asientos(Codigo,Zona,Fila,Numero,Disponibilidad) values('AS1','Delantera','A',1,1);
insert into Asientos(Codigo,Zona,Fila,Numero,Disponibilidad) values('AS2','Delantera','A',2,1);
insert into Asientos(Codigo,Zona,Fila,Numero,Disponibilidad) values('AS3','Delantera','A',3,1);
insert into Asientos(Codigo,Zona,Fila,Numero,Disponibilidad) values('AS4','Delantera','B',4,1);
insert into Asientos(Codigo,Zona,Fila,Numero,Disponibilidad) values('AS5','Delantera','B',5,1);
insert into Asientos(Codigo,Zona,Fila,Numero,Disponibilidad) values('AS6','Delantera','B',6,1);

--Autobuses_Asientos
insert into Autobuses_Asientos(Codigo_Autobus,Codigo_Asiento) values('AU1','AS1');
insert into Autobuses_Asientos(Codigo_Autobus,Codigo_Asiento) values('AU1','AS2');
insert into Autobuses_Asientos(Codigo_Autobus,Codigo_Asiento) values('AU1','AS3');
insert into Autobuses_Asientos(Codigo_Autobus,Codigo_Asiento) values('AU1','AS4');
insert into Autobuses_Asientos(Codigo_Autobus,Codigo_Asiento) values('AU1','AS5');
insert into Autobuses_Asientos(Codigo_Autobus,Codigo_Asiento) values('AU1','AS6');


--Boletas_Ventas
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor) values ('BV1',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV2',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV3',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV4',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV5',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV6',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV7',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV8',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV9',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');


--Tipos_Seguridad
insert into Tipos_Seguridad(Codigo, Nombre, Funcion, Descripcion) values ('TSN1','HTTPS','Encriptar las conexiones','Las paginas que utilizan esto son mas seguras'); 

--Navegadores
insert into Navegadores(Codigo, Nombre) values ('NAV1','Google Chrome');
insert into Navegadores(Codigo, Nombre) values ('NAV2','Safari');
insert into Navegadores(Codigo, Nombre) values ('NAV3','Firefox');

--Navegadores_Tipos_Seguridad
insert into Navegadores_Tipos_Seguridad(Codigo_Navegador, Codigo_Tipo_Seguridad) values ('NAV1','TSN1');  
insert into Navegadores_Tipos_Seguridad(Codigo_Navegador, Codigo_Tipo_Seguridad) values ('NAV2','TSN1');  
insert into Navegadores_Tipos_Seguridad(Codigo_Navegador, Codigo_Tipo_Seguridad) values ('NAV3','TSN1');  

--Dispositivos
insert into Dispositivos(Codigo, Nombre, Tipo, Marca) values ('D1','Smartphone','Movil','Samsung'); 
insert into Dispositivos(Codigo, Nombre, Tipo, Marca) values ('D2','Smartphone','Movil','Iphone'); 
insert into Dispositivos(Codigo, Nombre, Tipo, Marca) values ('D3','Smartphone','Movil','Google Pixel'); 
insert into Dispositivos(Codigo, Nombre, Tipo, Marca) values ('D4','Smartphone','Movil','Sony'); 
insert into Dispositivos(Codigo, Nombre, Tipo, Marca) values ('D5','Smartphone','Movil','Alcatel'); 

--Dispositivos_Navegadores
insert into Dispositivos_Navegadores(Codigo_Dispositivo, Codigo_Navegador) values ('D1','NAV1');
insert into Dispositivos_Navegadores(Codigo_Dispositivo, Codigo_Navegador) values ('D2','NAV2');
insert into Dispositivos_Navegadores(Codigo_Dispositivo, Codigo_Navegador) values ('D3','NAV1');
insert into Dispositivos_Navegadores(Codigo_Dispositivo, Codigo_Navegador) values ('D4','NAV1');
insert into Dispositivos_Navegadores(Codigo_Dispositivo, Codigo_Navegador) values ('D5','NAV3');

--Boletas_Ventas_Online
insert into Boletas_Ventas_Online(Codigo_Venta_Online, Codigo_Venta, Codigo_Dispositivo) values ('BVO1','BV1','D1');
insert into Boletas_Ventas_Online(Codigo_Venta_Online, Codigo_Venta, Codigo_Dispositivo) values ('BVO2','BV2','D2');
insert into Boletas_Ventas_Online(Codigo_Venta_Online, Codigo_Venta, Codigo_Dispositivo) values ('BVO3','BV3','D3');
insert into Boletas_Ventas_Online(Codigo_Venta_Online, Codigo_Venta, Codigo_Dispositivo) values ('BVO4','BV4','D5');
insert into Boletas_Ventas_Online(Codigo_Venta_Online, Codigo_Venta, Codigo_Dispositivo) values ('BVO5','BV5','D3');
insert into Boletas_Ventas_Online(Codigo_Venta_Online, Codigo_Venta, Codigo_Dispositivo) values ('BVO6','BV6','D5');
insert into Boletas_Ventas_Online(Codigo_Venta_Online, Codigo_Venta, Codigo_Dispositivo) values ('BVO7','BV7','D3');
insert into Boletas_Ventas_Online(Codigo_Venta_Online, Codigo_Venta, Codigo_Dispositivo) values ('BVO8','BV8','D3');
insert into Boletas_Ventas_Online(Codigo_Venta_Online, Codigo_Venta, Codigo_Dispositivo) values ('BVO9','BV9','D5');






