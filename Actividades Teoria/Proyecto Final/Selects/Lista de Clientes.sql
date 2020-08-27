



--Lista de Clientes
select C.Codigo, Primer_Nombre, Primer_Apellido, Fecha_Registro, calcular_edad(Fecha_Nacimiento) as Edad, Sexo from Persona P, Cliente C where P.codigo = C.codigo_Persona;

--Eliminar Clientes
delete from Persona where Codigo = 1;

--Buscar Codigo de Cliente en Persona
select codigo from Persona P, Cliente C where P.codigo = C.codigo_Persona AND C.codigo =  




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









