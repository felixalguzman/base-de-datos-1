

insert into Jugadores(Id, Nombres, Apellidos, Alias) values (2,'Felix Alejandro', 'Guzman', user);

insert into Jugadores(Id, Nombres, Apellidos, Alias) values (2,'Eric', 'Nunez',user);

insert into tablero(Id, Columna_1, Columna_2, Columna_3) values(1, null, null, null);
insert into tablero(Id, Columna_1, Columna_2, Columna_3) values(2, null, null, null);
insert into tablero(Id, Columna_1, Columna_2, Columna_3) values(3, null, null, null);

insert into Partidas (Id, Jugador_1,Jugador_2, Turno, Fecha, Ficha_Jugador1) values (1,1,1,1,SYSDATE,'Cruz');



update tablero set Columna_2 = 'O' where id = 2;


Create or REPLACE TRIGGER Trigger_Jugada AFTER UPDATE on system.Tablero For Each Row

DECLARE

user_id NUMBER(3);

BEGIN

select id into user_id from Jugadores  where Alias = (select user from dual);

insert into Jugadas (Partidas, No_Jugada, Jugador, Fila, Columna, Fecha) values (:old.partida, :new.No_Jugada, user_id,,,SYSDATE);

END;

/

select id from Jugadores  where Alias = (select user from dual);

create or REPLACE View Vw_Tablero as select Columna_1, Columna_2, Columna_3 from Tablero;

Create Table Jugadas( 
Partida Number(3) References Partidas(Id), 
No_Jugada Number (1), 
Jugador Number(3) References Jugadores(Id) ,
Fila Number(1) check(Fila > 0 AND Fila < 4) Not Null,
Columna Number(1) check(Columna > 0 AND Columna < 4) Not Null,
Fecha Date,
Constraint PK_Jugada Primary Key(Partida, No_Jugada),
Constraint UN_Posicion Unique(Fila, Columna, Partida)
);


Create Table Jugadores(
Id Number(3) Primary Key,
Nombres Varchar2(50),
Apellidos Varchar2(50),
Alias Varchar(50)
);


Create Table Partidas(
Id Number(3) Primary Key,
Jugador_1 references Jugadores(Id),
Jugador_2 references Jugadores(Id),
Ganador references Jugadores(Id),
Turno references  Jugadores(Id),
Fecha Date ,
Ficha_Jugador1 Varchar2(10)
);


Create Table Tablero(
Id Number(1) Primary Key,
Columna_1 CHAR(1),
Columna_2 CHAR(1),
Columna_3 CHAR(1)
);


