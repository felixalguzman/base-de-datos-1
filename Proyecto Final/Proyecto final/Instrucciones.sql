



--Lista de Clientes
select C.Codigo, Primer_Nombre, Primer_Apellido, Fecha_Registro, calcular_edad(Fecha_Nacimiento) as Edad, Sexo from Persona P, Cliente C where P.codigo = C.codigo_Persona;

--Eliminar Clientes
delete from Persona where Codigo = 1;

--Buscar Codigo de Cliente en Persona
select codigo from Persona P, Cliente C where P.codigo = C.codigo_Persona AND C.codigo =  

--Buscar boleta
select codigo, 



--Funcion Calcular Edad
create OR REPLACE function calcular_edad (p_fecha DATE) RETURN NUMBER IS
 v_dias NUMBER (10,2) := 0.00 ;
 v_agnos NUMBER (10,2) := 0.00 ;
BEGIN
 v_dias := SYSDATE - p_fecha ;
 v_agnos := v_dias / 365 ;
 RETURN v_agnos ;
END ;
/



2 ¿Cuál es el navegador más usado para realizar las reservas de las boletas

4 ¿Cuántos choferes han tenido que modificar la ruta planificada para llegar al destino en una semana específica? 

5 ¿Qué viaje es el más rentable para la empresa del país? (Según los gastos de viaje, cantidad pasajeros en un bus, cant. boletas compradas de ese viaje). 

7 ¿En qué ubicación del país se producen más percances durante los viajes? 

15  ¿Calcular la rentabilidad de una estación según sus gastos y beneficios (beneficios por la venta de boletas y gastos por gasolina, servicios, empleados etc.)? 





select Codigo_Persona_Contacto from Clientes_Personas_Contacto CP, Cliente C, Personas_Contacto PC where CP.Codigo_Persona_Contacto= PC.Codigo AND CP.Codigo_Cliente = C.codigo;

select P.Primer_Nombre from Clientes C, Personas_Contacto P , Clientes_Personas_Contacto CPC where C.Codigo_Persona = P.Codigo AND CPC.Codigo_Cliente = C.Codigo;

select P.Codigo, P.Primer_Nombre, P.Primer_Apellido, P.Segundo_Apellido, P.Sexo, P.Telefono, P.Codigo, P.Primer_Nombre from Personas_Contacto P, Clientes C, Clientes_Personas_Contacto CP where C.Codigo_Persona = P.Codigo AND CP.Codigo_Cliente = C.codigo AND CP.Codigo_Persona_Contacto = P.Codigo;



--Filtrar Viajes por Boleterias y Boletas
select V.codigo from Viajes V, Boletas B, Boleterias Bol where V.Codigo = B.Codigo_Viaje AND B.Codigo_Boleteria = Bol.Codigo;



--Pais
insert into Paises(codigo, Nombre, Idioma) values ('p1','Rep.Dom.','Español');


--Regiones
insert into Regiones(Codigo, Nombre, Orientacion, Pais) values('r1','Norte','N-O','p1');


--Provincias
insert into Provincias(Codigo, Nombre, Region) values('prov1','Santiago','r1');
insert into Provincias(Codigo, Nombre, Region) values('prov2','La Vega','r1');



--Municipios
insert into Municipios(Codigo,Nombre, Provincia) values('m1','Santiago de los Caballeros','prov1');
insert into Municipios(Codigo,Nombre,Provincia) values('m2','Licey','prov1');
insert into Municipios(Codigo,Nombre,Provincia) values('m3','Navarrete','prov1');
insert into Municipios(Codigo,Nombre,Provincia) values('m4','Jarabacoa','prov2');


--Sectores
insert into Sectores(Codigo,Nombre, Municipio) values('sec1','Cerro Alto','m1');
insert into Sectores(Codigo,Nombre, Municipio) values('sec2','Gurabo','m1'); 
insert into Sectores(Codigo,Nombre, Municipio) values('sec3','Villa Olga','m1');
insert into Sectores(Codigo,Nombre, Municipio) values('sec4','Las Palmas','m2'); 
insert into Sectores(Codigo,Nombre, Municipio) values('sec5','La Loteria','m1');


--Direcciones
insert into Direcciones(Codigo, Calle, Numero, Sector) values('d1','B',3,'sec1');
insert into Direcciones(Codigo, Calle, Numero, Sector) values('d2','C',4,'sec2'); 
insert into Direcciones(Codigo, Calle, Numero, Sector) values('d3','D',5,'sec5');


--Personas
insert into Personas(Codigo,Primer_Nombre,Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_Nacimiento,Sexo,Direccion_Residencia) values('P-01','Felix','Alejandro','Guzman','Garcia','19-AUG-1996','M','d1');
insert into Personas(Codigo,Primer_Nombre,Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_Nacimiento,Sexo,Direccion_Residencia) values('P-02','Emanuel','Simon','Torres','Rodriguez','11-NOV-1996','M','d2');
insert into Personas(Codigo,Primer_Nombre,Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_Nacimiento,Sexo,Direccion_Residencia) values('P-03','Joel','Antonio','Rodriguez','Martinez','21-AUG-1996','M','d3');

--Medicamentos 
insert into Medicamentos(Codigo, Nombre, Descripcion, Aplicacion) values ('Med1','Alkazeltser','Pastilla para el dolor de cabeza','Una tableta al dia');

--Afecciones
insert into Afecciones(Codigo, Nombre, Descripcion) values ('Afcc1','','');

--Alergias
insert into Alergias(Codigo, Nombre, Descripcion) values ('Aler1','','');

--Enfermedades
insert into Enfermedades(Codigo, Nombre, Descripcion) values ('Enf1','','');

--Afecciones_Medicamentos
insert into Afecciones_Medicamentos(Codigo_Afeccion, Codigo_Medicamento) values ('','');

--Alergias_Medicamento
insert into Alergias_Medicamentos(Codigo_Alergia, Codigo_Medicamento) values ('','');

--Enfermedades_Medicamentos
insert into Enfermedades_Medicamentos(Codigo_Enfermedad, Codigo_Medicamento) values ('',''); 

--Estados_Salud
insert into Estados_Salud(Codigo, Fecha_Registrada, Observacion, Codigo_Cliente) values ('','','','');

--Estados_Salud_Afecciones
insert into Estados_Salud_Afecciones(Codigo_Estado_Salud, Codigo_Afeccion) values ('','');

--Estados_Salud_Alergias
insert into Estados_Salud_Alergias(Codigo_Estado_Salud, Codigo_Alergia) values ('','');

--Estados_Salud_Enfermedades
insert into Estados_Salud_Enfermedades(Codigo_Estado_Salud, Codigo_Enfermedad) values ('','');

--Condiciones_Fisicas
insert into Condiciones_Fisicas(Codigo, Estado, Comentario, Codigo_Estado_Salud) values ('','','','');

--Clientes
insert into Clientes(Codigo,Codigo_Persona,Fecha_Registro) values ('c1','P-01','6-DEC-2016');

--Puntuaciones 
insert into Puntuaciones(Codigo, Numero_Estrellas, Valor) values ('Punt1',3 ,50 ); 

--Servicios
insert into Servicios(Codigo, Nombre, Tipo, Especificacion) values ('','','','');

--Viajes_Servicios
insert into Viajes_Servicios(Codigo_Viaje, Codigo_Servicio) values ('',''); 

--Clientes_Servicios_Viajes
insert into Clientes_Servicios_Viajes(Codigo_Cliente, Codigo_Servicio, Codigo_Viaje, Codigo_Puntuacion, Fecha, Opinion) values ('','','','','',''); 

--Gastos 
insert into Gastos(Codigo, Tipo_Gasto) values ('','');

--Gastos_Viajes
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('GastV1','Viaj1',2500); 

--Empleados
insert into Empleados(Codigo, Codigo_Persona, Fecha_Ingreso, Posicion, Salario) values ('emp1','P-02','5-DEC-1996','Boletero',8500.00);
insert into Empleados(Codigo, Codigo_Persona, Fecha_Ingreso, Posicion, Salario) values ('emp2','P-01','5-DEC-2016','Boletero','8500.00');
insert into Empleados(Codigo, Codigo_Persona, Fecha_Ingreso, Posicion, Salario) values ('emp3','P-03','5-SEP-2000','Conserje','9500.26');


--Ubicaciones_Geograficas:  
insert into Ubicaciones_Geograficas(Codigo, Latitud, Longitud, Altitud) values ('U-','','', );  

--Vias
insert into Vias(Codigo, Nombre, Numeracion, Longitud, Tipo) values ('','', ,'','');

--Zonas
insert into Zonas(Codigo_Zona, Codigo_Via, Nombre, Numero) values ('','','', ); 

--Zonas_Ubicaciones_Geograficas
insert into Zonas_Ubicaciones_Geograficas(Codigo_Zona, Codigo_Ubicacion_Geografica) values ('','');  

--Tipo_Incidentes
insert into Tipos_Incidentes(Codigo_Incidente, Tipologia) values ('',''); 

--Niveles_Alerta
insert into Niveles_Alerta(Codigo, Color, Valoracion) values ('','',''); 

 --Zonas_Datos_Trafico
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('','','','','','','');

 
--Sectores_Vias
insert into Sectores_Vias(Codigo_Via, Codigo_Sector) values ('',''); 
--Rutas_Sectores
insert into Rutas_Sectores(Rutas_Codigo, Sectores_Codigo) values ('R-1','sec2'); 

--Horarios
insert into Horarios(Codigo,Hora_inicio,Hora_Fin) values ('Hor1',to_date('8:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss'));
insert into table_name (date_field) values (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));

--Horarios Empleados
insert into Horarios_Dias_Empleados(Codigo_Horario,Codigo_Empleado,Dia) values('Hor1','emp1','L');
insert into Horarios_Dias_Empleados(Codigo_Horario,Codigo_Empleado,Dia) values('Hor1','emp1','M');
insert into Horarios_Dias_Empleados(Codigo_Horario,Codigo_Empleado,Dia) values('Hor1','emp1','X');
insert into Horarios_Dias_Empleados(Codigo_Horario,Codigo_Empleado,Dia) values('Hor1','emp1','J');
insert into Horarios_Dias_Empleados(Codigo_Horario,Codigo_Empleado,Dia) values('Hor1','emp1','V');


select E.codigo,Primer_Nombre,Primer_Apellido,Fecha_Nacimiento,calcular_edad(Fecha_Nacimiento) as Edad, Posicion, Salario, Dia, to_char(Hora_inicio,'hh24:mi:ss'),to_char(Hora_Fin,'hh24:mi:ss') from Empleados E, Horarios_Dias_Empleados HE, Personas P, Horarios H where E.codigo = HE.codigo_Empleado AND P.codigo = E.Codigo_Persona AND H.Codigo = HE.Codigo_Horario ;

--Estaciones
insert into Estaciones(Codigo, Nombre, Codigo_Sector) values('Est1','ProChapa','sec3');
insert into Estaciones(Codigo, Nombre, Codigo_Sector) values('Est2','La Huelgueria','sec4');
insert into Estaciones(Codigo, Nombre, Codigo_Sector) values('Est3','La Veloz','sec2');

--Estaciones_Horarios_Dias
insert into Estaciones_Horarios_Dias(Codigo_Horario,Dia,Codigo_Estacion) values ('Hor1','L','Est1');
insert into Estaciones_Horarios_Dias(Codigo_Horario,Dia,Codigo_Estacion) values ('Hor1','M','Est1');
insert into Estaciones_Horarios_Dias(Codigo_Horario,Dia,Codigo_Estacion) values ('Hor1','X','Est1');
insert into Estaciones_Horarios_Dias(Codigo_Horario,Dia,Codigo_Estacion) values ('Hor1','J','Est1');
insert into Estaciones_Horarios_Dias(Codigo_Horario,Dia,Codigo_Estacion) values ('Hor1','V','Est1');

insert into Estaciones_Horarios_Dias(Codigo_Horario,Dia,Codigo_Estacion) values ('Hor1','L','Est2');
insert into Estaciones_Horarios_Dias(Codigo_Horario,Dia,Codigo_Estacion) values ('Hor1','M','Est2');
insert into Estaciones_Horarios_Dias(Codigo_Horario,Dia,Codigo_Estacion) values ('Hor1','X','Est2');
insert into Estaciones_Horarios_Dias(Codigo_Horario,Dia,Codigo_Estacion) values ('Hor1','J','Est2');
insert into Estaciones_Horarios_Dias(Codigo_Horario,Dia,Codigo_Estacion) values ('Hor1','V','Est2');

--Boleterias
insert into Boleterias(Codigo,Nombre,Codigo_Estacion) values('Bol1','Numero 1','Est1');

--Boletas
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole1','Bol1','Viaj1','Est2',300.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole2','Bol1','Viaj1','Est2',300.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole3','Bol1','Viaj1','Est2',300.00);

select V.codigo from Viajes V, Boletas B, Boleterias Bol
where V.Codigo = B.Codigo_Viaje AND
B.Codigo_Boleteria = Bol.Codigo;
--Ver Paradas
select nombre from Estaciones E, Rutas_Sectores RS, Rutas R where E.Codigo_Sector = RS.Sectores_Codigo AND R.Origen != E.codigo;


select nombre from Estaciones E, Rutas_Sectores RS, Rutas R,Viajes V where E.Codigo_Sector = RS.Sectores_Codigo AND R.Origen != E.codigo AND R.Codigo=V.codigo_Ruta;

Codigo -- Boleta
Origen --Estaciones
Destino -- Estacion
Fecha viaje --Viaje
Precio --Boleta
Hora Salida --Viaje
Hora LLegada --Viaje

select B.codigo,O.Nombre as Origen ,D.Nombre as Destino,to_char(V.Fecha_Planificada,'yyyy/mm/dd'), precio, V.Hora_Salida, V.Hora_Llegada from Boletas B, Estaciones D, Boleterias Bol, Estaciones O, Viajes V where B.Parada = D.codigo AND V.codigo = B.Codigo_Viaje AND (Bol.codigo = B.codigo_Boleteria AND Bol.Codigo_Estacion = O.Codigo);

--Boletas_Ventas
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor) values ('BV1',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV2',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV3',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');

select V.codigo, TO_CHAR(V.Fecha, 'yyyy/mm/dd hh24:mi:ss'),  (select count(Codigo_Comprador) from Boletas_Ventas) as Cantidad, C.codigo from Boletas_Ventas V, Clientes C,  Ventas_Detalle VD, Boletas_Ventas BV where (V.Codigo_Comprador = C.codigo AND C.codigo_Persona = P.codigo) OR (BV.Codigo_Vendedor = V.Codigo_Vendedor AND V.Codigo_Comprador is null);

select V.codigo, TO_CHAR(V.Fecha, 'yyyy/mm/dd hh24:mi:ss'),  V.Codigo_Comprador, VD.Codigo_Boleta from Boletas_Ventas V, Ventas_Detalle VD where (V.Codigo_Comprador is null AND V.codigo = VD.Codigo_Venta ) OR (V.Codigo_Comprador is not null AND V.codigo = VD.Codigo_Venta);



--Ventas_Detalle
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('Vent1','BV2','Bole1');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('Vent2','BV3','Bole2');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('Vent3','BV1','Bole3');

--Ventas_Detalle_Impuestos
insert into Ventas_Detalle_Impuestos(Codigo_Venta_Detalle, Fecha, Codigo_Venta, Codigo_Impuesto) values ('','','');

--Boleterias_Empleados
insert into Boleterias_Empleados(Fecha_Inicio_Labor,Codigo_Empleado,Codigo_Boleteria, Fecha_Fin_Labor) values(TO_DATE('2016/12/01 8:00:00', 'yyyy/mm/dd hh24:mi:ss'),'emp1','Bol1',TO_DATE('2016/12/31 20:00:00', 'yyyy/mm/dd hh24:mi:ss'));

--Vendedores
insert into Vendedores(Codigo_Vendedor, Codigo_Empleado) values('Vend1','emp1');

--Rutas
insert into Rutas(Codigo,Numero_Ruta,Origen,Destino,Tiempo_Estimado,Tipo) values('Ru1',1,'Est1','Est2',TO_DATE('1:10:00', 'hh:mi:ss'),'Urbana');

insert into Rutas(Codigo,Numero_Ruta,Origen,Destino,Tiempo_Estimado,Tipo) values('R-1',1,'Est1','Est2',TO_DATE('1:10:00', 'hh:mi:ss'),'Urbana');

--Viajes
insert into Viajes(Codigo,Rutas_Codigo,Fecha_Planificada,Fecha,Hora_Planificada_Salida,Hora_Salida,Hora_Planificada_Llegada,Hora_Llegada,Estado,Tiempo_Viaje,Distancia,Tiempo_Espera) values('Viaj1','Ru1',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),TO_DATE('15:00:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),'Normal',TO_DATE('1:10:00', 'hh:mi:ss'),78.6,TO_DATE('01:10:00', 'hh:mi:ss'));  

insert into Viajes(Codigo,Codigo_Ruta,Fecha_Planificada,Fecha_Salida,Hora_Planificada_Salida,Hora_Salida,Hora_Planificada_Llegada,Hora_Llegada,Estado,Duracion_Viaje,Distancia,Tiempo_Espera) values('V-5','R-1',TO_DATE('2016/12/07', 'yyyy/mm/dd'),TO_DATE('2016/12/07', 'yyyy/mm/dd'),TO_DATE('15:00:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),'Normal',TO_DATE('1:10:00', 'hh:mi:ss'),78.6,TO_DATE('01:10:00', 'hh:mi:ss'));



--Autobuses			
insert into Autobuses(Codigo,Marca,Fecha_Adquisicion,Capacidad)
values('','','',);

--Viajes_Autobuses
insert into Viajes_Autobuses(Codigo_Viaje,Codigo_Autobus,Codigo_Autobus_Reserva)
values('','','');

--Marcas
insert into Marcas(Codigo,Codigo_Modelo,Nombre,Agno)
values('','','','--');

--Modelos
insert into Modelos(Codigo,Nombre)
values('','');

--Facilidades
insert into Facilidades(Codigo,Tipo)
values('','');

--Autobuses_Facilidades
insert into Autobuses_Facilidades(Codigo_Autobus,Codigo_Facilidad)
values('','');

--Asientos
insert into Asientos(Codigo,Zona,Fila,Numero,Disponibilidad)
values('','','',,);

--Autobuses_Asientos
insert into Autobuses_Asientos(Codigo_Autobus,Codigo_Asiento)
values('','');

--Reservas_Detalle
insert into Reservas_Detalle(Codigo_Detalle,Codigo_Reserva_Online,Codigo_Asiento_Reserva)
values('','','');

--Reservaciones_Online
insert into Reservaciones_Online(Codigo,Fecha,Codigo_Cliente_Comprador,Codigo_Vendedor,Codigo_Boleta)
values('','','','','');

--Impuestos
insert into Impuestos(Codigo,Tipo_Impuesto,Porcentaje_Impuesto)
values('','',);

--Tipos_Impuestos
insert into Tipos_Impuestos(Codigo,Nombre,Descripcion)
values('','','');

--Reservas_D_Personas_R
insert into Reservas_D_Personas_R(Codigo_Reserva_Detalle,Codigo_Reserva,Codigo_Persona_Referencia)
values('','','');

--Reservas_Detalle_Impuestos
insert into Reservas_Detalle_Impuestos(Codigo_Reserva_Detalle,Codigo_Reserva_Online,Codigo_Impuesto)
values('','','');

--Personas_Referencia
insert into Personas_Referencia(Codigo,Primer_Nombre,Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_Nacimiento,Sexo)
values('','','','','','','','');

--Medios_Contacto
insert into Medios_Contacto(Codigo,Nombre)
values('','');

--Estaciones_Medios_Contacto
insert into Estaciones_Medios_Contacto(Codigo_Estacion,Codigo_Medio_Contacto,Valor)
values('','',);

--Boleterias-Empleados
insert into Boleterias-Empleados(Fecha_Inicio_Labor,Codigo_Empleado,Codigo_Boleteria,Fecha_Fin_Labor)
values('','','','');

--Autobuses_Ubicaciones
insert into Autobuses_Ubicaciones(Codigo_Autobus,Codigo_Ubicacion,Fecha,Hora)
values('','','','');


--Personas_Contacto
insert into Personas_Contacto(Codigo,Primer_Nombre,Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Sexo,Telefono)
values('PC-1','Adonis','Alexander','Veloz','Garcia','M','8095813000');

--Clientes_Personas_Contacto
insert into Clientes_Personas_Contacto(Codigo_Cliente,Codigo_Persona_Contacto)
values('c1','V-01');


--Preferencias
insert into Preferencias(Codigo_Preferencia,Codigo_Cliente,Comentario)
values('','','');

--Viajes_Empleados

insert into Viajes_Empleados(Codigo_Viaje,Codigo_Empleado,Rol)
values('','','');

--Personas_Referencia
insert into Personas_Referencia(Codigo,Primer_Nombre,Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_Nacimiento,Sexo)
values('','','','','','','','');

--Tarifas
insert into Tarifas(Codigo,Clase,Justificacion,Diferencia_Dias,Precio)
values('','','',,);

--Tarifas_Impuestos
insert into Tarifas_Impuestos(Codigo_Tarifa,Codigo_Impuesto)
values('','');


--Tipos_Seguridad
insert into Tipos_Seguridad(Codigo, Nombre, Funcion, Descripcion) values ('','','',''); 
--Navegadores
insert into Navegadores(Codigo, Nombre) values ('','');
--Navegadores_Tipos_Seguridad
insert into Navegadores_Tipos_Seguridad(Codigo_Navegador, Codigo_Tipo_Seguridad) values ('','');  
--Dispositivos
insert into Dispositivos(Codigo, Nombre, Tipo, Marca) values ('','','',''); 
--Dispositivos_Navegadores
insert into Dispositivos_Navegadores(Codigo_Dispositivo, Codigo_Navegador) values ('','');
--Boletas_Ventas_Online
insert into Boletas_Ventas_Online(Codigo_Venta_Online, Codigo_Venta, Codigo_Dispositivo) values ('','','');





