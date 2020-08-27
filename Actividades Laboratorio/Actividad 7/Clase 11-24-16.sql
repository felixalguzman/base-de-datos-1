



1. Mostrar matriculas, nombre y apellidos y nombre de la carrera de los estudiantes que tengan al menos una 'U'(Mayuscula o minuscula) en nombres o apellidos .
2. Cuantos estudiantes tiene la facultad de ingenieria comparando con el nombre de la ingenieria (no id).
3. Cuantos estudiantes hay por cada facultad, mostrando nombre de la facultad.
4.Cual es el mes que han nacido mas estudiantes de los usarios registrados.

1.
select E.matricula, E.nombres, E.P_Apellido, E.S_Apellido, C.Nombre_Carrera from DB_Operaciones.estudiantes E, DB_Operaciones.Carreras C where E.Carrera = C.Codigo_Carrera AND( E.nombres like '%u%' OR E.nombres like '%U%' OR E.P_Apellido like '%U%' OR E.P_Apellido like '%u%' OR E.S_Apellido like '%u%' OR E.S_Apellido like '%U%'); 



select count(*) from DB_Operaciones.estudiantes E , DB_Operaciones.carreras C, DB_Operaciones.carreras C1 where C.Codigo_Carrera = E.carrera AND C1.Nombre_Carrera like '%Ingenieria%';

3.
select count(*), facultad from DB_Operaciones.estudiantes E , DB_Operaciones.carreras C where C.Codigo_Carrera = E.carrera group by facultad;



select max(to_char(Fecha_nacimiento,'MONTH')) MES ,max(count(to_char(Fecha_nacimiento,'MONTH'))) Cantidad from DB_Operaciones.estudiantes group by to_char(Fecha_nacimiento,'MONTH') ;


select max(CANT), to_char(Fecha_nacimiento,'MONTH')  from DB_Operaciones.estudiantes group by to_char(Fecha_nacimiento,'MONTH') having count(Fecha_nacimiento) ;









