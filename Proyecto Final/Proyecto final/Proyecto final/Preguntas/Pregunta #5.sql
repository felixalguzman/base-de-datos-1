
5. ¿Qué viaje es el más rentable para la empresa del país? (Según los gastos de viaje, cantidad pasajeros en un bus, cant. boletas compradas de ese viaje).

select B.Codigo_Viaje, (sum(Precio) - sum(GV.costo)) as Rentabilidad from Gastos_Viajes GV, Boletas B, Ventas_Detalle VD where B.Codigo = VD.Codigo_Boleta group by B.Codigo_Viaje;



select Codigo_Viaje, sum(GV.costo) from Gastos_Viajes GV group by Codigo_Viaje;

select B.Codigo_Viaje, count(Codigo_Boleta) from Ventas_Detalle VD, Boletas B where B.Codigo = VD.Codigo_Boleta group by B.Codigo_Viaje; 

select Codigo_Viaje, sum(Precio) from Boletas B, Ventas_Detalle VD where B.Codigo = VD.Codigo_Boleta group by B.Codigo_Viaje;



insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol10','Bol1','V-6','Est2',250.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol11','Bol1','V-6','Est3',404.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol12','Bol1','V-6','Est2',308.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol13','Bol1','V-6','Est3',489.00);

insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol14','Bol1','V-7','Est2',323.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol15','Bol1','V-7','Est3',445.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol16','Bol1','V-7','Est2',366.00);
insert into Boletas(Codigo,Codigo_Boleteria,Codigo_Viaje,Parada, Precio) values ('Bol17','Bol1','V-7','Est3',480.00);


--Ventas_Detalle
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD1','BV2','Bole1');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD2','BV2','Bole1');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD3','BV2','Bole2');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD4','BV2','Bole1');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD5','BV2','Bole3');


insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD6','BV3','Bole2');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD7','BV1','Bole4');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD8','BV1','Bole3');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD9','BV1','Bole5');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD10','BV1','Bole3');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD11','BV1','Bole7');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD12','BV3','Bole8');


insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD13','BV2','Bol10');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD14','BV3','Bol11');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD15','BV2','Bol12');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD16','BV2','Bol14');

insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD17','BV3','Bol15');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD18','BV2','Bol15');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD19','BV3','Bol12');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD20','BV2','Bol17');
insert into Ventas_Detalle(Codigo, Codigo_Venta, Codigo_Boleta) values ('VD21','BV2','Bol17');


--Boletas_Ventas
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor) values ('BV1',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV2',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV3',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV4',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV5',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV6',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV7',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV8',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');
insert into Boletas_Ventas(Codigo, Fecha, Codigo_Vendedor,Codigo_Comprador) values ('BV9',TO_DATE('2016/12/07 15:00:00', 'yyyy/mm/dd hh24:mi:ss'),'Vend1','c1');


--Gastos 
insert into Gastos(Codigo, Tipo_Gasto) values ('G-1','Manten del bus');
insert into Gastos(Codigo, Tipo_Gasto) values ('G-2','Gasto Combustible');
insert into Gastos(Codigo, Tipo_Gasto) values ('G-3','Reparacion del bus');.
insert into Gastos(Codigo, Tipo_Gasto) values ('G-4','Empleados viaje');
insert into Gastos(Codigo, Tipo_Gasto) values ('G-5','Servicios');

--Gastos_Viajes
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-1','V-5',2500);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-2','V-5',4000);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-3','V-5',9500);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-4','V-5',9500);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-5','V-5',9999);

insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-1','V-6',1500);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-2','V-6',3650);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-3','V-6',800);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-4','V-6',5555);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-5','V-6',9800);

insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-1','V-7',3666);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-2','V-7',1500);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-3','V-7',7423);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-4','V-7',8721);
insert into Gastos_Viajes(Codigo_Gasto, Codigo_Viaje, Costo) values ('G-5','V-6',1456);











