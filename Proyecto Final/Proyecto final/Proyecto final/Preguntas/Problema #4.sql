

4. ¿Cuántos choferes han tenido que modificar la ruta planificada para llegar al destino en una semana específica?


select V.Codigo, ZDT.Codigo_Zona_Afectada, ZDT.Fecha from Rutas R, Sectores S , Viajes V, Rutas_Sectores RS, Vias Vi,Sectores_Vias SV, Zonas Z, Zonas_Datos_Trafico ZDT where
V.Codigo_ruta = R.Codigo AND
RS.Codigo_ruta = R.Codigo AND
RS.Codigo_sector = S.Codigo AND
SV.Codigo_sector = S.Codigo AND
SV.Codigo_via = Vi.Codigo AND
Z.Codigo_via = Vi.Codigo AND
ZDT.Codigo_zona_Afectada = Z.Codigo_Zona AND 
ZDT.fecha = V.Fecha_Salida AND 
(ZDT.Hora>= V.Hora_Salida AND ZDT.Hora <= V.Hora_llegada) AND (V.Hora_llegada - V.Hora_Planificada_Llegada) != 0 AND (V.Hora_Salida - V.Hora_Planificada_Salida) = 0; 




--restar hora planificada y la hora de llegada
--comprobar hora de salida planificada y hora de salida sean iguales
--ver si alguna de las zonas que forma la ruta del viaje hay algun incidente en esa fecha


viajes
rutas
sectores
rutas sectores
vias
sectores vias
zonas
zonas dato trafico


(select (hora_planificada_llegada - hora_llegada) from viajes) != 0
(select (hora_planificada_salida - hora_salida) from viajes) = 0









select distinct V.Codigo from ()


select distinct V.Codigo,ZDT.Codigo_Zona_Afectada, ZDT.Fecha, to_char(ZDT.Hora,'hh24:mm:ss') as Hora_Suceso from Rutas R, Sectores S , Viajes V, Rutas_Sectores RS, Vias Vi,Sectores_Vias SV, Zonas Z, Zonas_Datos_Trafico ZDT where
V.Codigo_ruta = R.Codigo AND
RS.Codigo_ruta = R.Codigo AND
RS.Codigo_sector = S.Codigo AND
SV.Codigo_sector = S.Codigo AND
SV.Codigo_via = Vi.Codigo AND
Z.Codigo_via = Vi.Codigo AND
ZDT.fecha = V.Fecha_Salida AND 
(ZDT.Hora>= V.Hora_Salida AND ZDT.Hora <= V.Hora_llegada) AND (V.Hora_llegada - V.Hora_Planificada_Llegada) != 0 AND (V.Hora_Salida - V.Hora_Planificada_Salida) = 0 ; 


SELECT count(z.codigo)   FROM (select distinct V.Codigo, ZDT.Codigo_Zona_Afectada, ZDT.Fecha from Rutas R, Sectores S , Viajes V, Rutas_Sectores RS, Vias Vi,Sectores_Vias SV, Zonas Z, Zonas_Datos_Trafico ZDT where
V.Codigo_ruta = R.Codigo AND
RS.Codigo_ruta = R.Codigo AND
RS.Codigo_sector = S.Codigo AND
SV.Codigo_sector = S.Codigo AND
SV.Codigo_via = Vi.Codigo AND
Z.Codigo_via = Vi.Codigo AND
ZDT.fecha = V.Fecha_Salida AND 
(ZDT.Hora>= V.Hora_Salida AND ZDT.Hora <= V.Hora_llegada) AND (V.Hora_llegada - V.Hora_Planificada_Llegada) != 0 AND (V.Hora_Salida - V.Hora_Planificada_Salida) = 0 group by ZDT.Codigo_Zona_Afectada )z;







insert into Viajes(Codigo,Codigo_Ruta,Fecha_Planificada,Fecha_Salida,Hora_Planificada_Salida,Hora_Salida,Hora_Planificada_Llegada,Hora_Llegada,Estado,Duracion_Viaje,Distancia,Tiempo_Espera) values('V-8','R-3',TO_DATE('2016/12/12', 'yyyy/mm/dd'),TO_DATE('2016/12/12', 'yyyy/mm/dd'),TO_DATE('08:00:00', 'hh24:mi:ss'),TO_DATE('08:00:00', 'hh24:mi:ss'),TO_DATE('10:00:00', 'hh24:mi:ss'),TO_DATE('10:20:00', 'hh24:mi:ss'),'Retraso',TO_DATE('2:00:00', 'hh:mi:ss'),99.3,TO_DATE('01:00:00', 'hh:mi:ss'));

















