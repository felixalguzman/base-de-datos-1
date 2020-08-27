


--Rutas
insert into Rutas(Codigo,Numero_Ruta,Origen,Destino,Tiempo_Estimado,Tipo) values('R-1',1,'Est1','Est2',TO_DATE('1:10:00', 'hh:mi:ss'),'Urbana');


--Rutas_Sectores
insert into Rutas_Sectores(Rutas_Codigo, Sectores_Codigo) values ('R-1','sec2'); 
insert into Rutas_Sectores(Rutas_Codigo, Sectores_Codigo) values ('R-1','sec4'); 
insert into Rutas_Sectores(Rutas_Codigo, Sectores_Codigo) values ('R-1','sec3'); 


--Estaciones
insert into Estaciones(Codigo, Nombre, Codigo_Sector) values('Est1','ProChapa','sec3');
insert into Estaciones(Codigo, Nombre, Codigo_Sector) values('Est2','La Huelgueria','sec4');
insert into Estaciones(Codigo, Nombre, Codigo_Sector) values('Est3','La Veloz','sec2');

insert into Viajes(Codigo,Codigo_Ruta,Fecha_Planificada,Fecha_Salida,Hora_Planificada_Salida,Hora_Salida,Hora_Planificada_Llegada,Hora_Llegada,Estado,Duracion_Viaje,Distancia,Tiempo_Espera) values('V-5','R-1',TO_DATE('2016/12/07', 'yyyy/mm/dd'),TO_DATE('2016/12/07', 'yyyy/mm/dd'),TO_DATE('15:00:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),TO_DATE('16:20:00', 'hh24:mi:ss'),'Normal',TO_DATE('1:10:00', 'hh:mi:ss'),78.6,TO_DATE('01:10:00', 'hh:mi:ss'));


--Boletas
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bole1','Bol1','V-5','Est2',300.00);

--Boleterias
insert into Boleterias(Codigo,Nombre,Codigo_Estacion) values('Bol1','Numero 1','Est1');




select nombre from Estaciones E, Rutas_Sectores RS, Rutas R where E.Codigo_Sector = RS.Sectores_Codigo AND R.Origen != E.codigo;





select Nombre from Estaciones E, Rutas_Sectores RS, Viajes V, Rutas R
where E.Codigo = R.Destino AND
V.Codigo_Ruta = RS.Rutas_Codigo AND
E.Codigo_Sector = RS.Sectores_Codigo AND
R.Origen != E.Codigo;




select nombre from Estaciones E, Rutas R, Viajes V, Boletas B where R.Codigo = V.Codigo_Ruta AND V.Codigo = B.Codigo_Viaje AND 



select Nombre from Viajes v,
Rutas_Sectores rs,
Rutas r,Estaciones est,
Boletas b 
where v.codigo_ruta= rs.rutas_codigo AND 
b.parada=est.codigo AND 
rs.sectores_codigo=est.codigo_sector AND 
r.codigo=v.codigo_ruta AND 
b.parada!=r.origen;	







