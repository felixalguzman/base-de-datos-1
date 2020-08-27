
-----------------------------------------------------------------------------------------------------------------------------------------------------
11/10/16

Create 

Jugadores	
PK ID
Nombres
Apellidos
Alias

Partidas
PK Id
Jugador1 FK
Jugador2 FK	
Ganador FK
Turno FK
Fecha 
Ficha_Jugador1
Ficha_Jugador2

Jugadas
PK Partida FK
PK No_Jugada
Jugador 
Fila
Columna
Fecha

Tablero
PK ID(Fila)
C1
C2
C3


/* nuberic = Eric * NUB * (9999*99999*9999)^9999*99999*9999 


*/




-----------------------------------------------------------------------------------------------------------------------------------------------------
11/3//16
create View Vw_Peliculas_90_120 as select titulo, direccion, Fecha_estreno, (SYSDATE - fecha_estreno)/365 as Tiempo_de_Estreno, Genero from peliculas where direccion between 90 AND 120;

Create OR Replace View Estudiantes_v02 as select matricula, nombres ||' ' || P_Apellido || ' ' || S_Apellido as Nombre_Completo, Fecha_Nacimiento, (SYSDATE-Fecha_Nacimiento)/365 as Edad_Aprox, Nombre_Carrera,  Case when Genero = 'F' Then 'Femenino' when Genero = 'M' Then 'Masculimo' Else 'X' End Genero_Desc from DB_Operaciones.estudiantes E, DB_Operaciones.Carreras C where E.carrera = C.codigo_Carrera; 

Tarea 

create View Vw_Estudiantes as select matricula, nombres || ' ' || P_Apellido || ' '|| S_Apellido as Nombre_Completo, Genero, Carrera, Fecha_Nacimiento from DB_Operaciones.estudiantes where carrera = (select carrera from db_Operaciones.estudiantes where matricula = (select substr(user,2,9) from dual));

select * from DB_Operaciones.estudiantes where carrera = (select carrera from db_Operaciones.estudiantes where matricula = (select substr(user,2,9) from dual));