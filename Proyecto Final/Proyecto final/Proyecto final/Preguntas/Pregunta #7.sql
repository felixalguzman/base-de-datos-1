




7. ¿En qué ubicación del país se producen más percances durante los viajes?


select z.Nombre , z.Cantidad_Incidentes from
(select M.Nombre, count(*) as Cantidad_Incidentes
 from Municipios M, Sectores S, Vias V, Sectores_Vias SV, Zonas Z,
 Zonas_Datos_Trafico ZDT
where M.Codigo = S.Municipio AND
SV.Codigo_Sector = S.Codigo AND
SV.Codigo_Via = V.Codigo AND
V.Codigo = Z.Codigo_Via AND
Z.Codigo_Zona = ZDT.Codigo_Zona_Afectada group by M.Nombre) z 
where z.Cantidad_Incidentes= (select max(z.Cantidad_Incidentes) as MaximoIncidente from (select M.Nombre, count(*) as Cantidad_Incidentes
 from Municipios M, Sectores S, Vias V, Sectores_Vias SV, Zonas Z,
 Zonas_Datos_Trafico ZDT
where M.Codigo = S.Municipio AND
SV.Codigo_Sector = S.Codigo AND
SV.Codigo_Via = V.Codigo AND
V.Codigo = Z.Codigo_Via AND
Z.Codigo_Zona = ZDT.Codigo_Zona_Afectada group by M.Nombre) z);
 

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





select max(z.Cantidad_Incidentes) from (select M.Nombre, count(*) as Cantidad_Incidentes
 from Municipios M, Sectores S, Vias V, Sectores_Vias SV, Zonas Z,
 Zonas_Datos_Trafico ZDT
where M.Codigo = S.Municipio AND
SV.Codigo_Sector = S.Codigo AND
SV.Codigo_Via = V.Codigo AND
V.Codigo = Z.Codigo_Via AND
Z.Codigo_Zona = ZDT.Codigo_Zona_Afectada group by M.Nombre) z,Municipios M 
group by M.Nombre;


select count(Codigo_Zona_Afectada) as Cantidad_Incidentes
 from Municipios M, Sectores S, Vias V, Sectores_Vias SV, Zonas Z,
 Zonas_Datos_Trafico ZDT
where M.Codigo = S.Municipio AND
SV.Codigo_Sector = S.Codigo AND
SV.Codigo_Via = V.Codigo AND
V.Codigo = Z.Codigo_Via AND
Z.Codigo_Zona = ZDT.Codigo_Zona_Afectada; 




--Paises
insert into Paises(codigo, Nombre, Idioma) values ('p1','Rep.Dom.','Español');

--Regiones
insert into Regiones(Codigo, Nombre, Orientacion, Pais) values('r1','Noroeste','N-O','p1');
insert into Regiones(Codigo, Nombre, Orientacion, Pais) values('r2','Norte','N','p1');
insert into Regiones(Codigo, Nombre, Orientacion, Pais) values('r3','Sur','S','p1');

--Provincias 
insert into Provincias(Codigo, Nombre, Region) values('prov1','Santiago','r1');
insert into Provincias(Codigo, Nombre, Region) values('prov2','La Vega','r1');
insert into Provincias(Codigo, Nombre, Region) values('prov3','Monte Plata','r2');
insert into Provincias(Codigo, Nombre, Region) values('prov4','Azua','r3');
insert into Provincias(Codigo, Nombre, Region) values('prov5','Barahona','r3');


--Municipios
insert into Municipios(Codigo,Nombre, Provincia) values('m1','Santiago de los Caballeros','prov1');
insert into Municipios(Codigo,Nombre,Provincia) values('m2','Licey','prov1');
insert into Municipios(Codigo,Nombre,Provincia) values('m3','Navarrete','prov1');
insert into Municipios(Codigo,Nombre,Provincia) values('m4','Jarabacoa','prov2');
insert into Municipios(Codigo,Nombre,Provincia) values('m5','Azua de Compostela','prov4');
insert into Municipios(Codigo,Nombre,Provincia) values('m6','Sabana Yegua','prov4');
insert into Municipios(Codigo,Nombre,Provincia) values('m7','Padre Las Casas','prov4');
insert into Municipios(Codigo,Nombre,Provincia) values('m8','Concepcion de La Vega','prov2');
insert into Municipios(Codigo,Nombre,Provincia) values('m9','Constanza','prov2');


--Sectores
insert into Sectores(Codigo,Nombre, Municipio) values('sec1','Cerro Alto','m1');
insert into Sectores(Codigo,Nombre, Municipio) values('sec2','Gurabo','m1'); 
insert into Sectores(Codigo,Nombre, Municipio) values('sec3','Villa Olga','m3');
insert into Sectores(Codigo,Nombre, Municipio) values('sec4','Las Palmas','m2'); 
insert into Sectores(Codigo,Nombre, Municipio) values('sec5','Hato Mayor','m1');
insert into Sectores(Codigo,Nombre, Municipio) values('sec6','La Loteria','m4');
insert into Sectores(Codigo,Nombre, Municipio) values('sec7','La Papa','m4');
insert into Sectores(Codigo,Nombre, Municipio) values('sec8','Alpes Suizos','m4');
insert into Sectores(Codigo,Nombre, Municipio) values('sec9','Piedra Blanca','m9');
insert into Sectores(Codigo,Nombre, Municipio) values('sec10','Cerro Santo','m9');

--Vias
insert into Vias(Codigo, Nombre, Numeracion, Longuitud, Tipo) values ('Vs-1','Mirabal', 4,'128','Principal');
insert into Vias(Codigo, Nombre, Numeracion, Longuitud, Tipo) values ('Vs-2','Duarte', 9,'250','Central');
insert into Vias(Codigo, Nombre, Numeracion, Longuitud, Tipo) values ('Vs-3','Sanchez', 4,'200','Principal');
insert into Vias(Codigo, Nombre, Numeracion, Longuitud, Tipo) values ('Vs-4','Rodriguez', 7,'290','Principal');
insert into Vias(Codigo, Nombre, Numeracion, Longuitud, Tipo) values ('Vs-5','Lopez', 10,'490','Publica');
insert into Vias(Codigo, Nombre, Numeracion, Longuitud, Tipo) values ('Vs-6','Mella', 14,'258','Privada');
insert into Vias(Codigo, Nombre, Numeracion, Longuitud, Tipo) values ('Vs-7','Colon', 25,'333','Urbana');



--Sectores_Vias
insert into Sectores_Vias(Codigo_Via, Codigo_Sector) values ('Vs-1','sec1'); 
insert into Sectores_Vias(Codigo_Via, Codigo_Sector) values ('Vs-1','sec2');
insert into Sectores_Vias(Codigo_Via, Codigo_Sector) values ('Vs-1','sec3');
insert into Sectores_Vias(Codigo_Via, Codigo_Sector) values ('Vs-2','sec4'); 
insert into Sectores_Vias(Codigo_Via, Codigo_Sector) values ('Vs-3','sec5'); 
insert into Sectores_Vias(Codigo_Via, Codigo_Sector) values ('Vs-4','sec6');
insert into Sectores_Vias(Codigo_Via, Codigo_Sector) values ('Vs-4','sec7');
insert into Sectores_Vias(Codigo_Via, Codigo_Sector) values ('Vs-4','sec8');   


--Zonas
insert into Zonas(Codigo_Zona, Codigo_Via, Nombre, Numero) values ('ZN1','Vs-1','Zona 1',1); 
insert into Zonas(Codigo_Zona, Codigo_Via, Nombre, Numero) values ('ZN2','Vs-2','Zona 2',2); 
insert into Zonas(Codigo_Zona, Codigo_Via, Nombre, Numero) values ('ZN3','Vs-3','Zona 3',3); 
insert into Zonas(Codigo_Zona, Codigo_Via, Nombre, Numero) values ('ZN4','Vs-4','Zona 4',4); 
insert into Zonas(Codigo_Zona, Codigo_Via, Nombre, Numero) values ('ZN5','Vs-4','Zona 5',5); 
insert into Zonas(Codigo_Zona, Codigo_Via, Nombre, Numero) values ('ZN6','Vs-4','Zona 6',6); 
insert into Zonas(Codigo_Zona, Codigo_Via, Nombre, Numero) values ('ZN7','Vs-4','Zona 7',7); 
insert into Zonas(Codigo_Zona, Codigo_Via, Nombre, Numero) values ('ZN8','Vs-1','Zona 8',8); 



 --Zonas_Datos_Trafico
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN1','DT1','Inc3','NA3',TO_DATE('2011/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),'No hubo ninguna perdida humana');
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN2','DT2','Inc3','NA3',TO_DATE('2009/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),'No hubo ninguna perdida humana');
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN3','DT3','Inc3','NA3',TO_DATE('2015/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),'El accidente sucedio por una persona bajo la influencia del alcohol');
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN2','DT4','Inc3','NA3',TO_DATE('2013/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),' ');
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN8','DT5','Inc1','NA3',TO_DATE('2006/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),'No hubo ninguna perdida humana');
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN4','DT6','Inc2','NA3',TO_DATE('2008/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),'No hubo ninguna perdida humana');
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN4','DT7','Inc3','NA3',TO_DATE('2008/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),'No hubo ninguna perdida humana');
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN2','DT8','Inc4','NA3',TO_DATE('2008/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),'No hubo ninguna perdida humana');
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN1','DT9','Inc5','NA3',TO_DATE('2008/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),'No hubo ninguna perdida humana');
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN3','DT10','Inc5','NA3',TO_DATE('2008/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),'No hubo ninguna perdida humana');
insert into Zonas_Datos_Trafico(Codigo_Zona_Afectada, Codigo_Dato_Trafico, Tipo_Incidente, Nivel_Alerta, Fecha, Hora, Descripcion) values ('ZN7','DT11','Inc1','NA3',TO_DATE('2008/05/03', 'yyyy/mm/dd'), TO_DATE('21:02:44','hh24:mi:ss'),'No hubo ninguna perdida humana');




--Niveles_Alerta
insert into Niveles_Alerta(Codigo, Color, Valoracion) values ('NA1','Rojo','5'); 
insert into Niveles_Alerta(Codigo, Color, Valoracion) values ('NA2','Amarillo','3'); 
insert into Niveles_Alerta(Codigo, Color, Valoracion) values ('NA3','Verde','1'); 


--Tipo_Incidentes
insert into Tipos_Incidentes(Codigo_Incidente, Tipologia) values ('Inc1','Lateral'); 
insert into Tipos_Incidentes(Codigo_Incidente, Tipologia) values ('Inc2','Frontal'); 
insert into Tipos_Incidentes(Codigo_Incidente, Tipologia) values ('Inc3','Por Roce'); 
insert into Tipos_Incidentes(Codigo_Incidente, Tipologia) values ('Inc4','Por intromision de animal'); 
insert into Tipos_Incidentes(Codigo_Incidente, Tipologia) values ('Inc5','Por despiste del conductor'); 

















































--Ubicaciones_Geograficas:  
insert into Ubicaciones_Geograficas(Codigo, Latitud, Longitud, Altitud) values ('U-1','N36','20', 90);  
insert into Ubicaciones_Geograficas(Codigo, Latitud, Longitud, Altitud) values ('U-2','N20','10', 100);
insert into Ubicaciones_Geograficas(Codigo, Latitud, Longitud, Altitud) values ('U-3','N16','40', 800);  


--Zonas_Ubicaciones_Geograficas
insert into Zonas_Ubicaciones_Geograficas(Codigo_Zona, Codigo_Ubicacion_Geografica) values ('ZN1','U-1');  
insert into Zonas_Ubicaciones_Geograficas(Codigo_Zona, Codigo_Ubicacion_Geografica) values ('ZN3','U-2');  
insert into Zonas_Ubicaciones_Geograficas(Codigo_Zona, Codigo_Ubicacion_Geografica) values ('ZN3','U-3'); 















