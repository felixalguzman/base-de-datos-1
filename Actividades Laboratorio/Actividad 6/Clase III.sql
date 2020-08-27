
create OR REPLACE function calcular_edad (p_fecha DATE) RETURN NUMBER IS
 v_dias NUMBER (10,2) := 0.00 ;
 v_agnos NUMBER (10,2) := 0.00 ;
BEGIN
 v_dias := SYSDATE - p_fecha ;
 v_agnos := v_dias / 365 ;
 RETURN v_agnos ;
END ;
/

CREATE FUNCTION obtener_nombre (p_codigo NUMBER) RETURN VARCHAR2
IS
v_Nombre Varchar2(200) ;
-- v_Nombre TYPE%Personas.Nombre (Otra forma)
BEGIN
 SELECT nombres || ' ' || apellidos
 INTO v_Nombres
 FROM Personas
 WHERE codigo = p_codigo;
RETURN v_Nombres ;
END;
/





select calcular_edad(Fecha_nacimiento) from db_Operaciones.estudiantes where matricula = '20140565';



Create or Replace View Estudiantes_v02 as select matricula, nombres ||' ' || P_Apellido || ' ' || S_Apellido as Nombre_Completo, 
Fecha_Nacimiento, calcular_edad(Fecha_Nacimiento) as Edad_Aprox, Nombre_Carrera,  
Case when Genero = 'F' Then 'Femenino' 
when Genero = 'M' Then 'Masculimo' Else 'X' End Genero_Desc, 
Case when calcular_edad(Fecha_Nacimiento) < 18 Then '0 - 17'
 when calcular_edad(Fecha_Nacimiento) >= 18 AND calcular_edad(Fecha_Nacimiento) < 25 THEN '18 - 24'
when calcular_edad(Fecha_Nacimiento) >= 25 AND calcular_edad(Fecha_Nacimiento) < 35 THEN '25 - 34'  
when calcular_edad(Fecha_Nacimiento) >= 35 AND calcular_edad(Fecha_Nacimiento) < 50 THEN '35 - 49' 
when calcular_edad(Fecha_Nacimiento) >= 50 AND calcular_edad(Fecha_Nacimiento) < 60 THEN '50 - 59' 
when calcular_edad(Fecha_Nacimiento) >= 60  THEN '60 >  ' when calcular_edad(Fecha_Nacimiento) is NULL then 'No Fecha'  
End Rango_Edad
from DB_Operaciones.estudiantes E, DB_Operaciones.Carreras C where E.carrera = C.codigo_carrera; 

CREATE or REPLACE VIEW Rangos_Edad as select count(Rango_Edad) as Cantidad, Rango_Edad from Estudiantes_v02 group by Rango_Edad order by Rango_Edad ASC;










































































































































