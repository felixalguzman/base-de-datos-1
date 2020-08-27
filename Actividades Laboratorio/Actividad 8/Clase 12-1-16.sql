




Matricula: 2014 - 0565

1. Mostrar las matriculas y nombres de los estudiantes de ISC. Ordenar por matricula de mayor a menor.
2. Mostrar matricula, nombres, apellidos, fecha nacimiento y edad aproximanda de estudiantes de sexo femenino con edades entre 21 a 23 años. Ordenar por apellidos y nombre.
3. Cantidad de estudiantes en cada asignatura en cada semestre.
4. Sabiendo que la tabla de Estudiantes tiene una columna indice acumulado(indice), mostrar los estudiantes(matricula y nombre completo) con indices acumulados entre 0.5 puntos por encima y por debajo de los indices acumulados promedios de todos los estudiantes.


1.

select matricula, nombres from db_Operaciones.estudiantes where carrera = 'ISC' order by matricula desc;


2.
select matricula, nombres, p_apellido, S_apellido, fecha_nacimiento, calcular_edad(fecha_nacimiento) as Edad from DB_Operaciones.estudiantes where genero = 'F' AND (calcular_edad(fecha_nacimiento) > 20 AND calcular_edad(fecha_nacimiento) < 24) order by p_apellido, s_apellido, nombres;

3.
select count(*) ,semestre,grupo  from db_Operaciones.notas_estudiantes group by semestre, grupo;

4.
select matricula, nombres, p_apellido, S_apellido, indice from db_Operaciones.estudiantes where (indice > (select avg(indice) from DB_Operaciones.estudiantes) -0.5) AND (indice < (select avg(indice) from DB_Operaciones.estudiantes) +0.5);

select avg(indice) from DB_Operaciones.estudiantes group by avg(indice);












