


15. Calcular la rentabilidad de una estación según sus gastos y beneficios (beneficios por la venta de boletas y gastos por gasolina, servicios, empleados 


select Est.Nombre, (sum(Precio) - sum(salario))  from Estaciones Est, Boleterias Bol, Boletas B, Empleados E, Boleterias_Empleados BE, Boletas_Ventas BV,  Ventas_Detalle VD where
  Est.Codigo = Bol.Codigo_Estacion AND
  Bol.Codigo = B.Codigo_Boleteria AND
  BE.Codigo_Boleteria = Bol.Codigo AND
  BE.Codigo_Empleado = E.Codigo AND
  BV.Codigo = VD.Codigo_Venta AND
  VD.Codigo_Boleta = B.Codigo group by Est.Nombre;







select E.Nombre , sum(salario) as Gastos from Empleados Em, Estaciones E, Boleterias B, Boleterias_Empleados BE where EXTRACT(year from BE.Fecha_Inicio_Labor) = '2016' AND
B.Codigo = BE.Codigo_Boleteria AND
BE.Codigo_Empleado = Em.Codigo AND
E.Codigo = B.Codigo_Estacion group by E.Nombre;

select E.Nombre , sum(Precio) as Ganancia from Estaciones E, Boletas B, Ventas_Detalle VD, Boleterias Bol, Boletas_Ventas BV where
B.Codigo_Boleteria = Bol.Codigo AND
 B.Codigo = VD.Codigo_Boleta  AND 
E.Codigo = Bol.Codigo_Estacion AND 
BV.Codigo = VD.Codigo_Venta AND EXTRACT(year from BV.Fecha) = '2016' group by E.Nombre;
 
 select E.Nombre, (sum(Precio) - sum(salario)) from Estaciones E, Empleados Em, Ventas_Detalle VD, Boleterias Bol, Boleterias_Empleados BE, Boletas B, Boletas_Ventas BV where
 Bol.Codigo = BE.Codigo_Boleteria AND
 BE.Codigo_Empleado = Em.Codigo AND
 Bol.Codigo = VD.Codigo_Boleta  AND 
 E.Codigo = Bol.Codigo_Estacion AND  EXTRACT(year from BE.Fecha_Inicio_Labor) = '2016'  AND EXTRACT(year from BV.Fecha) = '2016' group by E.Nombre;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 

 

 
 

select codigo_empleado from Empleados E, Boleterias_Empleados BE, Estaciones Est, Boleterias B where
E.Codigo = BE.Codigo_Empleado AND
BE.Codigo_Boleteria = B.Codigo AND
B.Codigo_Estacion = Est.Codigo AND Est.Codigo ='Est1';


select Codigo_Viaje, sum(Precio) from Boletas B, Ventas_Detalle VD where B.Codigo = VD.Codigo_Boleta group by B.Codigo_Viaje;


SELECT EXTRACT(month FROM order_date) "Month",   COUNT(order_date) "No. of Orders"   FROM orders   GROUP BY EXTRACT(month FROM order_date)   ORDER BY "No. of Orders" DESC;



select Codigo_Viaje, sum(GV.costo) from Gastos_Viajes GV group by Codigo_Viaje;














