-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-12-09 22:15:51.387

-- tables
-- Table: Afecciones
CREATE TABLE Afecciones (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Descripcion varchar2(70)  NOT NULL,
    CONSTRAINT Afecciones_pk PRIMARY KEY (Codigo)
) ;

-- Table: Afecciones_Medicamentos
CREATE TABLE Afecciones_Medicamentos (
    Codigo_Afeccion varchar2(5)  NOT NULL,
    Codigo_Medicamento varchar2(5)  NOT NULL,
    CONSTRAINT Afecciones_Medicamentos_pk PRIMARY KEY (Codigo_Afeccion,Codigo_Medicamento)
) ;

-- Table: Alergias
CREATE TABLE Alergias (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Descripcion varchar2(70)  NOT NULL,
    CONSTRAINT Alergias_pk PRIMARY KEY (Codigo)
) ;

-- Table: Alergias_Medicamentos
CREATE TABLE Alergias_Medicamentos (
    Codigo_Alergia varchar2(5)  NOT NULL,
    Codigo_Medicamento varchar2(5)  NOT NULL,
    CONSTRAINT Alergias_Medicamentos_pk PRIMARY KEY (Codigo_Alergia,Codigo_Medicamento)
) ;

-- Table: Asientos
CREATE TABLE Asientos (
    Codigo varchar2(5)  NOT NULL,
    Zona varchar2(10)  NOT NULL,
    Fila char(1)  NOT NULL,
    Numero number(2)  NOT NULL,
    Disponibilidad number(1)  NOT NULL,
    CONSTRAINT Asientos_pk PRIMARY KEY (Codigo)
) ;

-- Table: Autobuses
CREATE TABLE Autobuses (
    Codigo varchar2(5)  NOT NULL,
    Marca varchar2(5)  NOT NULL,
    Fecha_Adquisicion date  NOT NULL,
    Capacidad number(3)  NOT NULL,
    CONSTRAINT Autobuses_pk PRIMARY KEY (Codigo)
) ;

-- Table: Autobuses_Asientos
CREATE TABLE Autobuses_Asientos (
    Codigo_Autobus varchar2(5)  NOT NULL,
    Codigo_Asiento varchar2(5)  NOT NULL,
    CONSTRAINT Autobuses_Asientos_pk PRIMARY KEY (Codigo_Autobus,Codigo_Asiento)
) ;

-- Table: Autobuses_Facilidades
CREATE TABLE Autobuses_Facilidades (
    Codigo_Autobus varchar2(5)  NOT NULL,
    Codigo_Facilidad varchar2(5)  NOT NULL,
    CONSTRAINT Autobuses_Facilidades_pk PRIMARY KEY (Codigo_Autobus,Codigo_Facilidad)
) ;

-- Table: Autobuses_Ubicaciones
CREATE TABLE Autobuses_Ubicaciones (
    Codigo_Autobus varchar2(5)  NOT NULL,
    Codigo_Ubicacion varchar2(5)  NOT NULL,
    Fecha date  NOT NULL,
    Hora date  NOT NULL,
    CONSTRAINT Autobuses_Ubicaciones_pk PRIMARY KEY (Codigo_Autobus,Codigo_Ubicacion)
) ;

-- Table: Averias
CREATE TABLE Averias (
    Codigo varchar2(5)  NOT NULL,
    Tipo_Averia varchar2(5)  NOT NULL,
    Nivel_Gravedad varchar2(5)  NOT NULL,
    CONSTRAINT Averias_pk PRIMARY KEY (Codigo)
) ;

-- Table: Boletas
CREATE TABLE Boletas (
    Codigo varchar2(5)  NOT NULL,
    Codigo_Boleteria varchar2(5)  NOT NULL,
    Codigo_Viaje varchar2(5)  NOT NULL,
    Parada varchar2(5)  NOT NULL,
    Precio number(6,2)  NOT NULL,
    CONSTRAINT ck_Precio CHECK ((Precio >= 0) ),
    CONSTRAINT Boletas_pk PRIMARY KEY (Codigo)
) ;

-- Table: Boletas_Ventas
CREATE TABLE Boletas_Ventas (
    Codigo varchar2(5)  NOT NULL,
    Fecha date  NOT NULL,
    Codigo_Vendedor varchar2(5)  NOT NULL,
    Codigo_Comprador varchar2(5)  NULL,
    CONSTRAINT Boletas_Ventas_pk PRIMARY KEY (Codigo)
) ;

-- Table: Boletas_Ventas_Online
CREATE TABLE Boletas_Ventas_Online (
    Codigo_Venta_Online varchar2(5)  NOT NULL,
    Codigo_Venta varchar2(5)  NOT NULL,
    Codigo_Dispositivo varchar2(5)  NOT NULL,
    CONSTRAINT Boletas_Ventas_Online_pk PRIMARY KEY (Codigo_Venta_Online)
) ;

-- Table: Boleterias
CREATE TABLE Boleterias (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(20)  NOT NULL,
    Codigo_Estacion varchar2(5)  NOT NULL,
    CONSTRAINT Boleterias_pk PRIMARY KEY (Codigo)
) ;

-- Table: Boleterias_Empleados
CREATE TABLE Boleterias_Empleados (
    Fecha_Inicio_Labor date  NOT NULL,
    Codigo_Empleado varchar2(5)  NOT NULL,
    Codigo_Boleteria varchar2(5)  NOT NULL,
    Fecha_Fin_Labor date  NOT NULL,
    CONSTRAINT Boleterias_Empleados_pk PRIMARY KEY (Fecha_Inicio_Labor,Codigo_Empleado,Codigo_Boleteria)
) ;

-- Table: Cancelaciones
CREATE TABLE Cancelaciones (
    Codigo varchar2(5)  NOT NULL,
    Fecha_Cancelacion date  NOT NULL,
    Codigo_Reservacion varchar2(5)  NOT NULL,
    Motivo_Cancelacion varchar2(70)  NOT NULL,
    Tarifa varchar2(5)  NOT NULL,
    CONSTRAINT Cancelaciones_pk PRIMARY KEY (Codigo)
) ;

-- Table: Clientes
CREATE TABLE Clientes (
    Codigo varchar2(5)  NOT NULL,
    Codigo_Persona varchar2(5)  NOT NULL,
    Fecha_Registro date  NOT NULL,
    CONSTRAINT Clientes_pk PRIMARY KEY (Codigo)
) ;

-- Table: Clientes_Personas_Contacto
CREATE TABLE Clientes_Personas_Contacto (
    Codigo_Cliente varchar2(5)  NOT NULL,
    Codigo_Persona_Contacto varchar2(5)  NOT NULL,
    CONSTRAINT Clientes_Personas_Contacto_pk PRIMARY KEY (Codigo_Cliente,Codigo_Persona_Contacto)
) ;

-- Table: Clientes_Servicios_Viajes
CREATE TABLE Clientes_Servicios_Viajes (
    Codigo_Cliente varchar2(5)  NOT NULL,
    Codigo_Servicio varchar2(5)  NOT NULL,
    Codigo_Viaje varchar2(5)  NOT NULL,
    Codigo_Puntuacion varchar2(5)  NOT NULL,
    Fecha date  NOT NULL,
    Opinion varchar2(80)  NOT NULL,
    CONSTRAINT Clientes_Servicios_Viajes_pk PRIMARY KEY (Codigo_Cliente,Codigo_Servicio,Codigo_Viaje)
) ;

-- Table: Condiciones_Fisicas
CREATE TABLE Condiciones_Fisicas (
    Codigo varchar2(5)  NOT NULL,
    Estado varchar2(30)  NOT NULL,
    Comentario varchar2(40)  NOT NULL,
    Codigo_Estado_Salud varchar2(5)  NOT NULL,
    CONSTRAINT Condiciones_Fisicas_pk PRIMARY KEY (Codigo)
) ;

-- Table: Direcciones
CREATE TABLE Direcciones (
    Codigo varchar2(5)  NOT NULL,
    Calle varchar2(30)  NOT NULL,
    Numero number(3)  NOT NULL,
    Sector varchar2(5)  NOT NULL,
    CONSTRAINT ck_Numero CHECK (Numero >= 0),
    CONSTRAINT Direcciones_pk PRIMARY KEY (Codigo)
) ;

-- Table: Dispositivos
CREATE TABLE Dispositivos (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(20)  NOT NULL,
    Tipo varchar2(20)  NOT NULL,
    Marca varchar2(20)  NOT NULL,
    CONSTRAINT Dispositivos_pk PRIMARY KEY (Codigo)
) ;

-- Table: Dispositivos_Navegadores
CREATE TABLE Dispositivos_Navegadores (
    Codigo_Dispositivo varchar2(5)  NOT NULL,
    Codigo_Navegador varchar2(5)  NOT NULL,
    CONSTRAINT Dispositivos_Navegadores_pk PRIMARY KEY (Codigo_Dispositivo,Codigo_Navegador)
) ;

-- Table: Empleados
CREATE TABLE Empleados (
    Codigo varchar2(5)  NOT NULL,
    Codigo_Persona varchar2(5)  NOT NULL,
    Fecha_Ingreso date  NOT NULL,
    Posicion varchar2(20)  NOT NULL,
    Salario number(6,2)  NOT NULL,
    CONSTRAINT Empleados_pk PRIMARY KEY (Codigo)
) ;

-- Table: Enfermedades
CREATE TABLE Enfermedades (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Descripcion varchar2(70)  NOT NULL,
    CONSTRAINT Enfermedades_pk PRIMARY KEY (Codigo)
) ;

-- Table: Enfermedades_Medicamentos
CREATE TABLE Enfermedades_Medicamentos (
    Codigo_Enfermedad varchar2(5)  NOT NULL,
    Codigo_Medicamento varchar2(5)  NOT NULL,
    CONSTRAINT Enfermedades_Medicamentos_pk PRIMARY KEY (Codigo_Enfermedad,Codigo_Medicamento)
) ;

-- Table: Estaciones
CREATE TABLE Estaciones (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Codigo_Sector varchar2(5)  NOT NULL,
    CONSTRAINT Estaciones_pk PRIMARY KEY (Codigo)
) ;

-- Table: Estaciones_Horarios_Dias
CREATE TABLE Estaciones_Horarios_Dias (
    Codigo_Horario varchar2(5)  NOT NULL,
    Dia char(1)  NOT NULL,
    Codigo_Estacion varchar2(5)  NOT NULL,
    CONSTRAINT Estaciones_Horarios_Dias_pk PRIMARY KEY (Codigo_Horario,Dia,Codigo_Estacion)
) ;

-- Table: Estaciones_Medios_Contacto
CREATE TABLE Estaciones_Medios_Contacto (
    Codigo_Estacion varchar2(5)  NOT NULL,
    Codigo_Medio_Contacto varchar2(5)  NOT NULL,
    Valor varchar2(40)  NOT NULL,
    CONSTRAINT Estaciones_Medios_Contacto_pk PRIMARY KEY (Codigo_Estacion,Codigo_Medio_Contacto)
) ;

-- Table: Estados_Salud
CREATE TABLE Estados_Salud (
    Codigo varchar2(5)  NOT NULL,
    Fecha_Registrada date  NOT NULL,
    Observacion varchar2(80)  NOT NULL,
    Codigo_Cliente varchar2(5)  NOT NULL,
    CONSTRAINT Estados_Salud_pk PRIMARY KEY (Codigo)
) ;

-- Table: Estados_Salud_Afecciones
CREATE TABLE Estados_Salud_Afecciones (
    Codigo_Estado_Salud varchar2(5)  NOT NULL,
    Codigo_Afeccion varchar2(5)  NOT NULL,
    CONSTRAINT Estados_Salud_Afecciones_pk PRIMARY KEY (Codigo_Estado_Salud,Codigo_Afeccion)
) ;

-- Table: Estados_Salud_Alergias
CREATE TABLE Estados_Salud_Alergias (
    Codigo_Estado_Salud varchar2(5)  NOT NULL,
    Codigo_Alergia varchar2(5)  NOT NULL,
    CONSTRAINT Estados_Salud_Alergias_pk PRIMARY KEY (Codigo_Estado_Salud,Codigo_Alergia)
) ;

-- Table: Estados_Salud_Enfermedades
CREATE TABLE Estados_Salud_Enfermedades (
    Codigo_Estado_Salud varchar2(5)  NOT NULL,
    Codigo_Enfermedad varchar2(5)  NOT NULL,
    CONSTRAINT Estados_Salud_Enfermedades_pk PRIMARY KEY (Codigo_Estado_Salud,Codigo_Enfermedad)
) ;

-- Table: Eventos_Emergencia
CREATE TABLE Eventos_Emergencia (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Descripcion varchar2(70)  NOT NULL,
    CONSTRAINT Eventos_Emergencia_pk PRIMARY KEY (Codigo)
) ;

-- Table: Facilidades
CREATE TABLE Facilidades (
    Codigo varchar2(5)  NOT NULL,
    Tipo varchar2(20)  NOT NULL,
    CONSTRAINT Facilidades_pk PRIMARY KEY (Codigo)
) ;

-- Table: Gastos
CREATE TABLE Gastos (
    Codigo varchar2(5)  NOT NULL,
    Tipo_Gasto varchar2(20)  NOT NULL,
    CONSTRAINT Gastos_pk PRIMARY KEY (Codigo)
) ;

-- Table: Gastos_Viajes
CREATE TABLE Gastos_Viajes (
    Codigo_Gasto varchar2(5)  NOT NULL,
    Codigo_Viaje varchar2(5)  NOT NULL,
    Costo number(6,2)  NOT NULL,
    CONSTRAINT Gastos_Viajes_pk PRIMARY KEY (Codigo_Gasto,Codigo_Viaje)
) ;

-- Table: Horarios
CREATE TABLE Horarios (
    Codigo varchar2(5)  NOT NULL,
    Hora_Inicio date  NOT NULL,
    Hora_Fin date  NOT NULL,
    CONSTRAINT Horarios_pk PRIMARY KEY (Codigo)
) ;

-- Table: Horarios_Dias_Empleados
CREATE TABLE Horarios_Dias_Empleados (
    Codigo_Horario varchar2(5)  NOT NULL,
    Codigo_Empleado varchar2(5)  NOT NULL,
    Dia char(1)  NOT NULL,
    CONSTRAINT Horarios_Dias_Empleados_pk PRIMARY KEY (Codigo_Horario,Codigo_Empleado,Dia)
) ;

-- Table: Impuestos
CREATE TABLE Impuestos (
    Codigo varchar2(5)  NOT NULL,
    Tipo_Impuesto varchar2(5)  NOT NULL,
    Porcentaje_Impuesto number(4,2)  NOT NULL,
    CONSTRAINT Impuestos_pk PRIMARY KEY (Codigo)
) ;

-- Table: Marcas
CREATE TABLE Marcas (
    Codigo varchar2(5)  NOT NULL,
    Codigo_Modelo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Agno date  NOT NULL,
    CONSTRAINT Marcas_pk PRIMARY KEY (Codigo)
) ;

-- Table: Medicamentos
CREATE TABLE Medicamentos (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Descripcion varchar2(70)  NOT NULL,
    Aplicacion varchar2(30)  NOT NULL,
    CONSTRAINT Medicamentos_pk PRIMARY KEY (Codigo)
) ;

-- Table: Medios_Contacto
CREATE TABLE Medios_Contacto (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(20)  NOT NULL,
    CONSTRAINT Medios_Contacto_pk PRIMARY KEY (Codigo)
) ;

-- Table: Modelos
CREATE TABLE Modelos (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    CONSTRAINT Modelos_pk PRIMARY KEY (Codigo)
) ;

-- Table: Municipios
CREATE TABLE Municipios (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Provincia varchar2(5)  NOT NULL,
    CONSTRAINT Municipios_pk PRIMARY KEY (Codigo)
) ;

-- Table: Navegadores
CREATE TABLE Navegadores (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(20)  NOT NULL,
    CONSTRAINT Navegadores_pk PRIMARY KEY (Codigo)
) ;

-- Table: Navegadores_Tipos_Seguridad
CREATE TABLE Navegadores_Tipos_Seguridad (
    Codigo_Navegador varchar2(5)  NOT NULL,
    Codigo_Tipo_Seguridad varchar2(5)  NOT NULL,
    CONSTRAINT Navegadores_Tipos_Seguridad_pk PRIMARY KEY (Codigo_Navegador,Codigo_Tipo_Seguridad)
) ;

-- Table: Niveles_Alerta
CREATE TABLE Niveles_Alerta (
    Codigo varchar2(5)  NOT NULL,
    Color varchar2(10)  NOT NULL,
    Valoracion varchar2(10)  NOT NULL,
    CONSTRAINT Niveles_Alerta_pk PRIMARY KEY (Codigo)
) ;

-- Table: Paises
CREATE TABLE Paises (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Idioma varchar2(10)  NOT NULL,
    CONSTRAINT Paises_pk PRIMARY KEY (Codigo)
) ;

-- Table: Personas
CREATE TABLE Personas (
    Codigo varchar2(5)  NOT NULL,
    Primer_Nombre varchar2(30)  NOT NULL,
    Segundo_Nombre varchar2(30)  NULL,
    Primer_Apellido varchar2(30)  NOT NULL,
    Segundo_Apellido varchar2(30)  NULL,
    Fecha_Nacimiento date  NOT NULL,
    Sexo char(1)  NOT NULL,
    Direccion_Residencia varchar2(5)  NOT NULL,
    CONSTRAINT ck_Sexo CHECK ((Sexo = 'M' OR Sexo = 'F') ),
    CONSTRAINT Personas_pk PRIMARY KEY (Codigo)
) ;

-- Table: Personas_Contacto
CREATE TABLE Personas_Contacto (
    Codigo varchar2(5)  NOT NULL,
    Primer_Nombre varchar2(30)  NOT NULL,
    Segundo_Nombre varchar2(30)  NULL,
    Primer_Apellido varchar2(30)  NOT NULL,
    Segundo_Apellido varchar2(30)  NULL,
    Sexo char(1)  NOT NULL,
    Telefono varchar2(13)  NOT NULL,
    CONSTRAINT ck_Sexo_Pers_Contac CHECK (Sexo = 'M' OR Sexo = 'F'),
    CONSTRAINT Personas_Contacto_pk PRIMARY KEY (Codigo)
) ;

-- Table: Personas_Referencia
CREATE TABLE Personas_Referencia (
    Codigo varchar2(5)  NOT NULL,
    Primer_Nombre varchar2(20)  NOT NULL,
    Segundo_Nombre varchar2(20)  NOT NULL,
    Primer_Apellido varchar2(20)  NOT NULL,
    Segundo_Apellido varchar2(20)  NOT NULL,
    Fecha_Nacimiento date  NOT NULL,
    Sexo char(1)  NOT NULL,
    CONSTRAINT ck_Sexo_Pers_Ref CHECK (Sexo = 'M' OR Sexo = 'F'),
    CONSTRAINT Personas_Referencia_pk PRIMARY KEY (Codigo)
) ;

-- Table: Preferencias
CREATE TABLE Preferencias (
    Codigo_Preferencia varchar2(5)  NOT NULL,
    Codigo_Cliente varchar2(5)  NOT NULL,
    Comentario varchar2(50)  NOT NULL,
    CONSTRAINT Preferencias_pk PRIMARY KEY (Codigo_Preferencia)
) ;

-- Table: Provincias
CREATE TABLE Provincias (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Region varchar2(5)  NOT NULL,
    CONSTRAINT Provincias_pk PRIMARY KEY (Codigo)
) ;

-- Table: Puntuaciones
CREATE TABLE Puntuaciones (
    Codigo varchar2(5)  NOT NULL,
    Numero_Estrellas number(2)  NOT NULL,
    Valor number(3)  NOT NULL,
    CONSTRAINT Puntuaciones_pk PRIMARY KEY (Codigo)
) ;

-- Table: Regiones
CREATE TABLE Regiones (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Orientacion varchar2(20)  NOT NULL,
    Pais varchar2(5)  NOT NULL,
    CONSTRAINT Regiones_pk PRIMARY KEY (Codigo)
) ;

-- Table: Reservaciones_Online
CREATE TABLE Reservaciones_Online (
    Codigo varchar2(5)  NOT NULL,
    Fecha date  NOT NULL,
    Codigo_Cliente_Comprador varchar2(5)  NOT NULL,
    Codigo_Vendedor varchar2(5)  NOT NULL,
    Codigo_Boleta varchar2(5)  NOT NULL,
    CONSTRAINT Reservaciones_Online_pk PRIMARY KEY (Codigo)
) ;

-- Table: Reservas_D_Personas_R
CREATE TABLE Reservas_D_Personas_R (
    Codigo_Reserva_Detalle varchar2(5)  NOT NULL,
    Codigo_Reserva varchar2(5)  NOT NULL,
    Codigo_Persona_Referencia varchar2(5)  NOT NULL,
    CONSTRAINT Reservas_D_Personas_R_pk PRIMARY KEY (Codigo_Reserva_Detalle,Codigo_Reserva,Codigo_Persona_Referencia)
) ;

-- Table: Reservas_Detalle
CREATE TABLE Reservas_Detalle (
    Codigo_Detalle varchar2(5)  NOT NULL,
    Codigo_Reserva_Online varchar2(5)  NOT NULL,
    Codigo_Asiento_Reserva varchar2(5)  NOT NULL,
    CONSTRAINT Reservas_Detalle_pk PRIMARY KEY (Codigo_Detalle,Codigo_Reserva_Online)
) ;

-- Table: Reservas_Detalle_Impuestos
CREATE TABLE Reservas_Detalle_Impuestos (
    Codigo_Reserva_Detalle varchar2(5)  NOT NULL,
    Codigo_Reserva_Online varchar2(5)  NOT NULL,
    Codigo_Impuesto varchar2(5)  NOT NULL,
    CONSTRAINT Reservas_Detalle_Impuestos_pk PRIMARY KEY (Codigo_Reserva_Detalle,Codigo_Reserva_Online)
) ;

-- Table: Rutas
CREATE TABLE Rutas (
    Codigo varchar2(5)  NOT NULL,
    Numero_Ruta number(3)  NOT NULL,
    Origen varchar2(5)  NOT NULL,
    Destino varchar2(5)  NOT NULL,
    Tiempo_Estimado date  NOT NULL,
    Tipo varchar2(10)  NOT NULL,
    CONSTRAINT Rutas_pk PRIMARY KEY (Codigo)
) ;

-- Table: Rutas_Sectores
CREATE TABLE Rutas_Sectores (
    Codigo_Ruta varchar2(5)  NOT NULL,
    Codigo_Sector varchar2(5)  NOT NULL,
    CONSTRAINT Rutas_Sectores_pk PRIMARY KEY (Codigo_Ruta,Codigo_Sector)
) ;

-- Table: Sectores
CREATE TABLE Sectores (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Municipio varchar2(5)  NOT NULL,
    CONSTRAINT Sectores_pk PRIMARY KEY (Codigo)
) ;

-- Table: Sectores_Vias
CREATE TABLE Sectores_Vias (
    Codigo_Via varchar2(5)  NOT NULL,
    Codigo_Sector varchar2(5)  NOT NULL,
    CONSTRAINT Sectores_Vias_pk PRIMARY KEY (Codigo_Via,Codigo_Sector)
) ;

-- Table: Servicios
CREATE TABLE Servicios (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Tipo varchar2(20)  NOT NULL,
    Especificacion varchar2(70)  NOT NULL,
    CONSTRAINT Servicios_pk PRIMARY KEY (Codigo)
) ;

-- Table: Tarifas
CREATE TABLE Tarifas (
    Codigo varchar2(5)  NOT NULL,
    Clase varchar2(20)  NOT NULL,
    Justificacioin varchar2(30)  NOT NULL,
    Diferencia_Dias number(3)  NOT NULL,
    Precio number(6,2)  NOT NULL,
    CONSTRAINT ck_Precio_Tarifa CHECK (Precio >= 0),
    CONSTRAINT Tarifas_pk PRIMARY KEY (Codigo)
) ;

-- Table: Tarifas_Impuestos
CREATE TABLE Tarifas_Impuestos (
    Codigo_Tarifa varchar2(5)  NOT NULL,
    Codigo_Impuesto varchar2(5)  NOT NULL,
    CONSTRAINT Tarifas_Impuestos_pk PRIMARY KEY (Codigo_Tarifa,Codigo_Impuesto)
) ;

-- Table: Tipos_Averia
CREATE TABLE Tipos_Averia (
    Codigo varchar2(5)  NOT NULL,
    Tipo varchar2(20)  NOT NULL,
    Fecha date  NOT NULL,
    Hora date  NOT NULL,
    Descripcion_Averia varchar2(70)  NOT NULL,
    CONSTRAINT Tipos_Averia_pk PRIMARY KEY (Codigo)
) ;

-- Table: Tipos_Impuesto
CREATE TABLE Tipos_Impuesto (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(20)  NOT NULL,
    Descripcion varchar2(70)  NOT NULL,
    CONSTRAINT Tipos_Impuesto_pk PRIMARY KEY (Codigo)
) ;

-- Table: Tipos_Incidentes
CREATE TABLE Tipos_Incidentes (
    Codigo_Incidente varchar2(5)  NOT NULL,
    Tipologia varchar2(30)  NOT NULL,
    CONSTRAINT Tipos_Incidentes_pk PRIMARY KEY (Codigo_Incidente)
) ;

-- Table: Tipos_Seguridad
CREATE TABLE Tipos_Seguridad (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(20)  NOT NULL,
    Funcion varchar2(50)  NOT NULL,
    Descripcion varchar2(80)  NOT NULL,
    CONSTRAINT Tipos_Seguridad_pk PRIMARY KEY (Codigo)
) ;

-- Table: Ubicaciones_Geograficas
CREATE TABLE Ubicaciones_Geograficas (
    Codigo varchar2(5)  NOT NULL,
    Latitud varchar2(20)  NOT NULL,
    Longitud varchar2(20)  NOT NULL,
    Altitud number(10)  NOT NULL,
    CONSTRAINT Ubicaciones_Geograficas_pk PRIMARY KEY (Codigo)
) ;

-- Table: Vendedores
CREATE TABLE Vendedores (
    Codigo_Vendedor varchar2(5)  NOT NULL,
    Codigo_Empleado varchar2(5)  NOT NULL,
    Vendedor_Web number(1)  NULL,
    CONSTRAINT ck_Vendedor_Web CHECK ((Vendedor_Web = 1) ),
    CONSTRAINT Vendedores_pk PRIMARY KEY (Codigo_Vendedor)
) ;

-- Table: Ventas_Detalle
CREATE TABLE Ventas_Detalle (
    Codigo varchar2(5)  NOT NULL,
    Codigo_Venta varchar2(5)  NOT NULL,
    Codigo_Boleta varchar2(5)  NOT NULL,
    CONSTRAINT Ventas_Detalle_pk PRIMARY KEY (Codigo,Codigo_Venta)
) ;

-- Table: Ventas_Detalle_Impuestos
CREATE TABLE Ventas_Detalle_Impuestos (
    Codigo_Venta_Detalle varchar2(5)  NOT NULL,
    Codigo_Venta varchar2(5)  NOT NULL,
    Codigo_Impuesto varchar2(5)  NOT NULL,
    CONSTRAINT Ventas_Detalle_Impuestos_pk PRIMARY KEY (Codigo_Venta_Detalle,Codigo_Venta,Codigo_Impuesto)
) ;

-- Table: Viajes
CREATE TABLE Viajes (
    Codigo varchar2(5)  NOT NULL,
    Codigo_Ruta varchar2(5)  NOT NULL,
    Fecha_Planificada date  NOT NULL,
    Fecha_Salida date  NULL,
    Hora_Planificada_Salida date  NOT NULL,
    Hora_Salida date  NULL,
    Hora_Planificada_Llegada date  NOT NULL,
    Hora_Llegada date  NULL,
    Estado varchar2(20)  NULL,
    Duracion_Viaje date  NOT NULL,
    Distancia float(6)  NOT NULL,
    Tiempo_Espera date  NULL,
    CONSTRAINT Viajes_pk PRIMARY KEY (Codigo)
) ;

-- Table: Viajes_Autobuses
CREATE TABLE Viajes_Autobuses (
    Codigo_Viaje varchar2(5)  NOT NULL,
    Codigo_Autobus varchar2(5)  NOT NULL,
    Codigo_Autobus_Reserva varchar2(5)  NOT NULL,
    CONSTRAINT Viajes_Autobuses_pk PRIMARY KEY (Codigo_Viaje,Codigo_Autobus)
) ;

-- Table: Viajes_Averias
CREATE TABLE Viajes_Averias (
    Codigo_Viaje varchar2(5)  NOT NULL,
    Codigo_Averia varchar2(5)  NOT NULL,
    CONSTRAINT Viajes_Averias_pk PRIMARY KEY (Codigo_Viaje,Codigo_Averia)
) ;

-- Table: Viajes_Empleados
CREATE TABLE Viajes_Empleados (
    Codigo_Viaje varchar2(5)  NOT NULL,
    Codigo_Empleado varchar2(5)  NOT NULL,
    Rol varchar2(30)  NOT NULL,
    CONSTRAINT Viajes_Empleados_pk PRIMARY KEY (Codigo_Viaje)
) ;

-- Table: Viajes_Eventos_Emergencia
CREATE TABLE Viajes_Eventos_Emergencia (
    Codigo_Viaje varchar2(5)  NOT NULL,
    Codigo_Emergencia varchar2(5)  NOT NULL,
    Fecha date  NOT NULL,
    Hora_Suceso date  NOT NULL,
    Nivel_Gravedad varchar2(5)  NOT NULL,
    Descripcion_Emergencia varchar2(80)  NOT NULL,
    CONSTRAINT Viajes_Eventos_Emergencia_pk PRIMARY KEY (Codigo_Viaje,Codigo_Emergencia)
) ;

-- Table: Viajes_Servicios
CREATE TABLE Viajes_Servicios (
    Codigo_Viaje varchar2(5)  NOT NULL,
    Codigo_Servicio varchar2(5)  NOT NULL,
    CONSTRAINT Viajes_Servicios_pk PRIMARY KEY (Codigo_Viaje,Codigo_Servicio)
) ;

-- Table: Vias
CREATE TABLE Vias (
    Codigo varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Numeracion number(5)  NOT NULL,
    Longuitud varchar2(10)  NOT NULL,
    Tipo varchar2(10)  NOT NULL,
    CONSTRAINT Vias_pk PRIMARY KEY (Codigo)
) ;

-- Table: Zonas
CREATE TABLE Zonas (
    Codigo_Zona varchar2(5)  NOT NULL,
    Codigo_Via varchar2(5)  NOT NULL,
    Nombre varchar2(30)  NOT NULL,
    Numero number(3)  NOT NULL,
    CONSTRAINT Zonas_pk PRIMARY KEY (Codigo_Zona)
) ;

-- Table: Zonas_Datos_Trafico
CREATE TABLE Zonas_Datos_Trafico (
    Codigo_Zona_Afectada varchar2(5)  NOT NULL,
    Codigo_Dato_Trafico varchar2(5)  NOT NULL,
    Tipo_Incidente varchar2(5)  NOT NULL,
    Nivel_Alerta varchar2(5)  NOT NULL,
    Fecha date  NOT NULL,
    Hora date  NOT NULL,
    Descripcion varchar2(70)  NOT NULL,
    CONSTRAINT Zonas_Datos_Trafico_pk PRIMARY KEY (Codigo_Zona_Afectada,Codigo_Dato_Trafico)
) ;

-- Table: Zonas_Ubicaciones_Geograficas
CREATE TABLE Zonas_Ubicaciones_Geograficas (
    Codigo_Zona varchar2(5)  NOT NULL,
    Codigo_Ubicacion_Geografica varchar2(5)  NOT NULL,
    CONSTRAINT Zonas_Ubicaciones_Geografic_pk PRIMARY KEY (Codigo_Zona,Codigo_Ubicacion_Geografica)
) ;

-- foreign keys
-- Reference: AB_A_Asientos (table: Autobuses_Asientos)
ALTER TABLE Autobuses_Asientos ADD CONSTRAINT AB_A_Asientos
    FOREIGN KEY (Codigo_Asiento)
    REFERENCES Asientos (Codigo);

-- Reference: AB_A_Autobuses (table: Autobuses_Asientos)
ALTER TABLE Autobuses_Asientos ADD CONSTRAINT AB_A_Autobuses
    FOREIGN KEY (Codigo_Autobus)
    REFERENCES Autobuses (Codigo);

-- Reference: A_F_Autobuses (table: Autobuses_Facilidades)
ALTER TABLE Autobuses_Facilidades ADD CONSTRAINT A_F_Autobuses
    FOREIGN KEY (Codigo_Autobus)
    REFERENCES Autobuses (Codigo);

-- Reference: A_F_Facilidades (table: Autobuses_Facilidades)
ALTER TABLE Autobuses_Facilidades ADD CONSTRAINT A_F_Facilidades
    FOREIGN KEY (Codigo_Facilidad)
    REFERENCES Facilidades (Codigo);

-- Reference: A_UG_Ubicaciones (table: Autobuses_Ubicaciones)
ALTER TABLE Autobuses_Ubicaciones ADD CONSTRAINT A_UG_Ubicaciones
    FOREIGN KEY (Codigo_Ubicacion)
    REFERENCES Ubicaciones_Geograficas (Codigo);

-- Reference: A_U_Autobuses (table: Autobuses_Ubicaciones)
ALTER TABLE Autobuses_Ubicaciones ADD CONSTRAINT A_U_Autobuses
    FOREIGN KEY (Codigo_Autobus)
    REFERENCES Autobuses (Codigo);

-- Reference: Afecciones_Medicamentos_D (table: Afecciones_Medicamentos)
ALTER TABLE Afecciones_Medicamentos ADD CONSTRAINT Afecciones_Medicamentos_D
    FOREIGN KEY (Codigo_Afeccion)
    REFERENCES Afecciones (Codigo);

-- Reference: Afecciones_Medicamentos_I (table: Afecciones_Medicamentos)
ALTER TABLE Afecciones_Medicamentos ADD CONSTRAINT Afecciones_Medicamentos_I
    FOREIGN KEY (Codigo_Medicamento)
    REFERENCES Medicamentos (Codigo);

-- Reference: Alergias_Medicamentos_D (table: Alergias_Medicamentos)
ALTER TABLE Alergias_Medicamentos ADD CONSTRAINT Alergias_Medicamentos_D
    FOREIGN KEY (Codigo_Alergia)
    REFERENCES Alergias (Codigo);

-- Reference: Alergias_Medicamentos_I (table: Alergias_Medicamentos)
ALTER TABLE Alergias_Medicamentos ADD CONSTRAINT Alergias_Medicamentos_I
    FOREIGN KEY (Codigo_Medicamento)
    REFERENCES Medicamentos (Codigo);

-- Reference: Autobuses_Marcas (table: Autobuses)
ALTER TABLE Autobuses ADD CONSTRAINT Autobuses_Marcas
    FOREIGN KEY (Marca)
    REFERENCES Marcas (Codigo);

-- Reference: Averias_Niveles_Alertas (table: Averias)
ALTER TABLE Averias ADD CONSTRAINT Averias_Niveles_Alertas
    FOREIGN KEY (Nivel_Gravedad)
    REFERENCES Niveles_Alerta (Codigo);

-- Reference: Averias_Tipos_Averia (table: Averias)
ALTER TABLE Averias ADD CONSTRAINT Averias_Tipos_Averia
    FOREIGN KEY (Tipo_Averia)
    REFERENCES Tipos_Averia (Codigo);

-- Reference: BVO_Boletas_Ventas (table: Boletas_Ventas_Online)
ALTER TABLE Boletas_Ventas_Online ADD CONSTRAINT BVO_Boletas_Ventas
    FOREIGN KEY (Codigo_Venta)
    REFERENCES Boletas_Ventas (Codigo);

-- Reference: B_E_Boleterias (table: Boleterias_Empleados)
ALTER TABLE Boleterias_Empleados ADD CONSTRAINT B_E_Boleterias
    FOREIGN KEY (Codigo_Boleteria)
    REFERENCES Boleterias (Codigo);

-- Reference: B_VO_Dispositivos (table: Boletas_Ventas_Online)
ALTER TABLE Boletas_Ventas_Online ADD CONSTRAINT B_VO_Dispositivos
    FOREIGN KEY (Codigo_Dispositivo)
    REFERENCES Dispositivos (Codigo);

-- Reference: B_V_Vendedores (table: Boletas_Ventas)
ALTER TABLE Boletas_Ventas ADD CONSTRAINT B_V_Vendedores
    FOREIGN KEY (Codigo_Vendedor)
    REFERENCES Vendedores (Codigo_Vendedor);

-- Reference: Boletas_Boleterias (table: Boletas)
ALTER TABLE Boletas ADD CONSTRAINT Boletas_Boleterias
    FOREIGN KEY (Codigo_Boleteria)
    REFERENCES Boleterias (Codigo);

-- Reference: Boletas_Estaciones (table: Boletas)
ALTER TABLE Boletas ADD CONSTRAINT Boletas_Estaciones
    FOREIGN KEY (Parada)
    REFERENCES Estaciones (Codigo);

-- Reference: Boletas_Ventas_Clientes (table: Boletas_Ventas)
ALTER TABLE Boletas_Ventas ADD CONSTRAINT Boletas_Ventas_Clientes
    FOREIGN KEY (Codigo_Comprador)
    REFERENCES Clientes (Codigo);

-- Reference: Boletas_Viajes (table: Boletas)
ALTER TABLE Boletas ADD CONSTRAINT Boletas_Viajes
    FOREIGN KEY (Codigo_Viaje)
    REFERENCES Viajes (Codigo);

-- Reference: Boleterias_Empleados_Empleados (table: Boleterias_Empleados)
ALTER TABLE Boleterias_Empleados ADD CONSTRAINT Boleterias_Empleados_Empleados
    FOREIGN KEY (Codigo_Empleado)
    REFERENCES Empleados (Codigo);

-- Reference: Boleterias_Estaciones (table: Boleterias)
ALTER TABLE Boleterias ADD CONSTRAINT Boleterias_Estaciones
    FOREIGN KEY (Codigo_Estacion)
    REFERENCES Estaciones (Codigo);

-- Reference: CF_Estados_Salud (table: Condiciones_Fisicas)
ALTER TABLE Condiciones_Fisicas ADD CONSTRAINT CF_Estados_Salud
    FOREIGN KEY (Codigo_Estado_Salud)
    REFERENCES Estados_Salud (Codigo);

-- Reference: CR_Online (table: Cancelaciones)
ALTER TABLE Cancelaciones ADD CONSTRAINT CR_Online
    FOREIGN KEY (Codigo_Reservacion)
    REFERENCES Reservaciones_Online (Codigo);

-- Reference: C_PC_Clientes (table: Clientes_Personas_Contacto)
ALTER TABLE Clientes_Personas_Contacto ADD CONSTRAINT C_PC_Clientes
    FOREIGN KEY (Codigo_Cliente)
    REFERENCES Clientes (Codigo);

-- Reference: C_PC_Personas_Contacto (table: Clientes_Personas_Contacto)
ALTER TABLE Clientes_Personas_Contacto ADD CONSTRAINT C_PC_Personas_Contacto
    FOREIGN KEY (Codigo_Persona_Contacto)
    REFERENCES Personas_Contacto (Codigo);

-- Reference: C_S_V_Clientes (table: Clientes_Servicios_Viajes)
ALTER TABLE Clientes_Servicios_Viajes ADD CONSTRAINT C_S_V_Clientes
    FOREIGN KEY (Codigo_Cliente)
    REFERENCES Clientes (Codigo);

-- Reference: C_S_V_Puntuaciones (table: Clientes_Servicios_Viajes)
ALTER TABLE Clientes_Servicios_Viajes ADD CONSTRAINT C_S_V_Puntuaciones
    FOREIGN KEY (Codigo_Puntuacion)
    REFERENCES Puntuaciones (Codigo);

-- Reference: C_S_V_Servicios (table: Clientes_Servicios_Viajes)
ALTER TABLE Clientes_Servicios_Viajes ADD CONSTRAINT C_S_V_Servicios
    FOREIGN KEY (Codigo_Servicio)
    REFERENCES Servicios (Codigo);

-- Reference: C_S_V_Viajes (table: Clientes_Servicios_Viajes)
ALTER TABLE Clientes_Servicios_Viajes ADD CONSTRAINT C_S_V_Viajes
    FOREIGN KEY (Codigo_Viaje)
    REFERENCES Viajes (Codigo);

-- Reference: Cancelaciones_Tarifas (table: Cancelaciones)
ALTER TABLE Cancelaciones ADD CONSTRAINT Cancelaciones_Tarifas
    FOREIGN KEY (Tarifa)
    REFERENCES Tarifas (Codigo);

-- Reference: Clientes_Personas (table: Clientes)
ALTER TABLE Clientes ADD CONSTRAINT Clientes_Personas
    FOREIGN KEY (Codigo_Persona)
    REFERENCES Personas (Codigo);

-- Reference: Codigo_Vias (table: Zonas)
ALTER TABLE Zonas ADD CONSTRAINT Codigo_Vias
    FOREIGN KEY (Codigo_Via)
    REFERENCES Vias (Codigo);

-- Reference: D_N_Dispositivos (table: Dispositivos_Navegadores)
ALTER TABLE Dispositivos_Navegadores ADD CONSTRAINT D_N_Dispositivos
    FOREIGN KEY (Codigo_Dispositivo)
    REFERENCES Dispositivos (Codigo);

-- Reference: D_N_Navegadores (table: Dispositivos_Navegadores)
ALTER TABLE Dispositivos_Navegadores ADD CONSTRAINT D_N_Navegadores
    FOREIGN KEY (Codigo_Navegador)
    REFERENCES Navegadores (Codigo);

-- Reference: Destinos_Estaciones (table: Rutas)
ALTER TABLE Rutas ADD CONSTRAINT Destinos_Estaciones
    FOREIGN KEY (Destino)
    REFERENCES Estaciones (Codigo);

-- Reference: Direcciones_Sectores (table: Direcciones)
ALTER TABLE Direcciones ADD CONSTRAINT Direcciones_Sectores
    FOREIGN KEY (Sector)
    REFERENCES Sectores (Codigo);

-- Reference: EH_D_Horarios (table: Estaciones_Horarios_Dias)
ALTER TABLE Estaciones_Horarios_Dias ADD CONSTRAINT EH_D_Horarios
    FOREIGN KEY (Codigo_Horario)
    REFERENCES Horarios (Codigo);

-- Reference: E_HD_Estaciones (table: Estaciones_Horarios_Dias)
ALTER TABLE Estaciones_Horarios_Dias ADD CONSTRAINT E_HD_Estaciones
    FOREIGN KEY (Codigo_Estacion)
    REFERENCES Estaciones (Codigo);

-- Reference: E_MC_Estaciones (table: Estaciones_Medios_Contacto)
ALTER TABLE Estaciones_Medios_Contacto ADD CONSTRAINT E_MC_Estaciones
    FOREIGN KEY (Codigo_Estacion)
    REFERENCES Estaciones (Codigo);

-- Reference: E_MC_Medios_Contacto (table: Estaciones_Medios_Contacto)
ALTER TABLE Estaciones_Medios_Contacto ADD CONSTRAINT E_MC_Medios_Contacto
    FOREIGN KEY (Codigo_Medio_Contacto)
    REFERENCES Medios_Contacto (Codigo);

-- Reference: Empleados_Personas (table: Empleados)
ALTER TABLE Empleados ADD CONSTRAINT Empleados_Personas
    FOREIGN KEY (Codigo_Persona)
    REFERENCES Personas (Codigo);

-- Reference: Enfermedades_Medicamentos_D (table: Enfermedades_Medicamentos)
ALTER TABLE Enfermedades_Medicamentos ADD CONSTRAINT Enfermedades_Medicamentos_D
    FOREIGN KEY (Codigo_Enfermedad)
    REFERENCES Enfermedades (Codigo);

-- Reference: Enfermedades_Medicamentos_I (table: Enfermedades_Medicamentos)
ALTER TABLE Enfermedades_Medicamentos ADD CONSTRAINT Enfermedades_Medicamentos_I
    FOREIGN KEY (Codigo_Medicamento)
    REFERENCES Medicamentos (Codigo);

-- Reference: Estaciones_Sectores (table: Estaciones)
ALTER TABLE Estaciones ADD CONSTRAINT Estaciones_Sectores
    FOREIGN KEY (Codigo_Sector)
    REFERENCES Sectores (Codigo);

-- Reference: Estados_Salud_Afecciones_D (table: Estados_Salud_Afecciones)
ALTER TABLE Estados_Salud_Afecciones ADD CONSTRAINT Estados_Salud_Afecciones_D
    FOREIGN KEY (Codigo_Estado_Salud)
    REFERENCES Estados_Salud (Codigo);

-- Reference: Estados_Salud_Afecciones_I (table: Estados_Salud_Afecciones)
ALTER TABLE Estados_Salud_Afecciones ADD CONSTRAINT Estados_Salud_Afecciones_I
    FOREIGN KEY (Codigo_Afeccion)
    REFERENCES Afecciones (Codigo);

-- Reference: Estados_Salud_Alergias_D (table: Estados_Salud_Alergias)
ALTER TABLE Estados_Salud_Alergias ADD CONSTRAINT Estados_Salud_Alergias_D
    FOREIGN KEY (Codigo_Estado_Salud)
    REFERENCES Estados_Salud (Codigo);

-- Reference: Estados_Salud_Alergias_I (table: Estados_Salud_Alergias)
ALTER TABLE Estados_Salud_Alergias ADD CONSTRAINT Estados_Salud_Alergias_I
    FOREIGN KEY (Codigo_Alergia)
    REFERENCES Alergias (Codigo);

-- Reference: Estados_Salud_Clientes (table: Estados_Salud)
ALTER TABLE Estados_Salud ADD CONSTRAINT Estados_Salud_Clientes
    FOREIGN KEY (Codigo_Cliente)
    REFERENCES Clientes (Codigo);

-- Reference: Estados_Salud_Enfermedades_D (table: Estados_Salud_Enfermedades)
ALTER TABLE Estados_Salud_Enfermedades ADD CONSTRAINT Estados_Salud_Enfermedades_D
    FOREIGN KEY (Codigo_Estado_Salud)
    REFERENCES Estados_Salud (Codigo);

-- Reference: Estados_Salud_Enfermedades_I (table: Estados_Salud_Enfermedades)
ALTER TABLE Estados_Salud_Enfermedades ADD CONSTRAINT Estados_Salud_Enfermedades_I
    FOREIGN KEY (Codigo_Enfermedad)
    REFERENCES Enfermedades (Codigo);

-- Reference: G_V_Gastos (table: Gastos_Viajes)
ALTER TABLE Gastos_Viajes ADD CONSTRAINT G_V_Gastos
    FOREIGN KEY (Codigo_Gasto)
    REFERENCES Gastos (Codigo);

-- Reference: Gastos_Viajes_Viajes (table: Gastos_Viajes)
ALTER TABLE Gastos_Viajes ADD CONSTRAINT Gastos_Viajes_Viajes
    FOREIGN KEY (Codigo_Viaje)
    REFERENCES Viajes (Codigo);

-- Reference: HD_E_Empleados (table: Horarios_Dias_Empleados)
ALTER TABLE Horarios_Dias_Empleados ADD CONSTRAINT HD_E_Empleados
    FOREIGN KEY (Codigo_Empleado)
    REFERENCES Empleados (Codigo);

-- Reference: HD_E_Horarios (table: Horarios_Dias_Empleados)
ALTER TABLE Horarios_Dias_Empleados ADD CONSTRAINT HD_E_Horarios
    FOREIGN KEY (Codigo_Horario)
    REFERENCES Horarios (Codigo);

-- Reference: Impuestos_Tipos_Impuestos (table: Impuestos)
ALTER TABLE Impuestos ADD CONSTRAINT Impuestos_Tipos_Impuestos
    FOREIGN KEY (Tipo_Impuesto)
    REFERENCES Tipos_Impuesto (Codigo);

-- Reference: Marcas_Modelos (table: Marcas)
ALTER TABLE Marcas ADD CONSTRAINT Marcas_Modelos
    FOREIGN KEY (Codigo_Modelo)
    REFERENCES Modelos (Codigo);

-- Reference: Municipios_Provincias (table: Municipios)
ALTER TABLE Municipios ADD CONSTRAINT Municipios_Provincias
    FOREIGN KEY (Provincia)
    REFERENCES Provincias (Codigo);

-- Reference: N_TS_Navegadores (table: Navegadores_Tipos_Seguridad)
ALTER TABLE Navegadores_Tipos_Seguridad ADD CONSTRAINT N_TS_Navegadores
    FOREIGN KEY (Codigo_Navegador)
    REFERENCES Navegadores (Codigo);

-- Reference: N_TS_Tipos_Seguridad (table: Navegadores_Tipos_Seguridad)
ALTER TABLE Navegadores_Tipos_Seguridad ADD CONSTRAINT N_TS_Tipos_Seguridad
    FOREIGN KEY (Codigo_Tipo_Seguridad)
    REFERENCES Tipos_Seguridad (Codigo);

-- Reference: Origenes_Estaciones (table: Rutas)
ALTER TABLE Rutas ADD CONSTRAINT Origenes_Estaciones
    FOREIGN KEY (Origen)
    REFERENCES Estaciones (Codigo);

-- Reference: Personas_Direcciones (table: Personas)
ALTER TABLE Personas ADD CONSTRAINT Personas_Direcciones
    FOREIGN KEY (Direccion_Residencia)
    REFERENCES Direcciones (Codigo);

-- Reference: Preferencias_Clientes (table: Preferencias)
ALTER TABLE Preferencias ADD CONSTRAINT Preferencias_Clientes
    FOREIGN KEY (Codigo_Cliente)
    REFERENCES Clientes (Codigo);

-- Reference: Provincias_Regiones (table: Provincias)
ALTER TABLE Provincias ADD CONSTRAINT Provincias_Regiones
    FOREIGN KEY (Region)
    REFERENCES Regiones (Codigo);

-- Reference: RD_I_Impuestos (table: Reservas_Detalle_Impuestos)
ALTER TABLE Reservas_Detalle_Impuestos ADD CONSTRAINT RD_I_Impuestos
    FOREIGN KEY (Codigo_Impuesto)
    REFERENCES Impuestos (Codigo);

-- Reference: RD_I_Reservas_Detalle (table: Reservas_Detalle_Impuestos)
ALTER TABLE Reservas_Detalle_Impuestos ADD CONSTRAINT RD_I_Reservas_Detalle
    FOREIGN KEY (Codigo_Reserva_Detalle,Codigo_Reserva_Online)
    REFERENCES Reservas_Detalle (Codigo_Detalle,Codigo_Reserva_Online);

-- Reference: RD_PR_Personas_Referencia (table: Reservas_D_Personas_R)
ALTER TABLE Reservas_D_Personas_R ADD CONSTRAINT RD_PR_Personas_Referencia
    FOREIGN KEY (Codigo_Persona_Referencia)
    REFERENCES Personas_Referencia (Codigo);

-- Reference: RD_PR_Reservas_Detalle (table: Reservas_D_Personas_R)
ALTER TABLE Reservas_D_Personas_R ADD CONSTRAINT RD_PR_Reservas_Detalle
    FOREIGN KEY (Codigo_Reserva_Detalle,Codigo_Reserva)
    REFERENCES Reservas_Detalle (Codigo_Detalle,Codigo_Reserva_Online);

-- Reference: RD_R (table: Reservas_Detalle)
ALTER TABLE Reservas_Detalle ADD CONSTRAINT RD_R
    FOREIGN KEY (Codigo_Reserva_Online)
    REFERENCES Reservaciones_Online (Codigo);

-- Reference: RO_Vendedores (table: Reservaciones_Online)
ALTER TABLE Reservaciones_Online ADD CONSTRAINT RO_Vendedores
    FOREIGN KEY (Codigo_Vendedor)
    REFERENCES Vendedores (Codigo_Vendedor);

-- Reference: RS_Rutas (table: Rutas_Sectores)
ALTER TABLE Rutas_Sectores ADD CONSTRAINT RS_Rutas
    FOREIGN KEY (Codigo_Ruta)
    REFERENCES Rutas (Codigo);

-- Reference: RS_Sectores (table: Rutas_Sectores)
ALTER TABLE Rutas_Sectores ADD CONSTRAINT RS_Sectores
    FOREIGN KEY (Codigo_Sector)
    REFERENCES Sectores (Codigo);

-- Reference: Regiones_Paises (table: Regiones)
ALTER TABLE Regiones ADD CONSTRAINT Regiones_Paises
    FOREIGN KEY (Pais)
    REFERENCES Paises (Codigo);

-- Reference: Reservaciones_Online_Boletas (table: Reservaciones_Online)
ALTER TABLE Reservaciones_Online ADD CONSTRAINT Reservaciones_Online_Boletas
    FOREIGN KEY (Codigo_Boleta)
    REFERENCES Boletas (Codigo);

-- Reference: Reservaciones_Online_Clientes (table: Reservaciones_Online)
ALTER TABLE Reservaciones_Online ADD CONSTRAINT Reservaciones_Online_Clientes
    FOREIGN KEY (Codigo_Cliente_Comprador)
    REFERENCES Clientes (Codigo);

-- Reference: Reservas_Detalle_Asientos (table: Reservas_Detalle)
ALTER TABLE Reservas_Detalle ADD CONSTRAINT Reservas_Detalle_Asientos
    FOREIGN KEY (Codigo_Asiento_Reserva)
    REFERENCES Asientos (Codigo);

-- Reference: Sectores_Municipios (table: Sectores)
ALTER TABLE Sectores ADD CONSTRAINT Sectores_Municipios
    FOREIGN KEY (Municipio)
    REFERENCES Municipios (Codigo);

-- Reference: Sectores_Vias_Sectores (table: Sectores_Vias)
ALTER TABLE Sectores_Vias ADD CONSTRAINT Sectores_Vias_Sectores
    FOREIGN KEY (Codigo_Sector)
    REFERENCES Sectores (Codigo);

-- Reference: Sectores_Vias_Vias (table: Sectores_Vias)
ALTER TABLE Sectores_Vias ADD CONSTRAINT Sectores_Vias_Vias
    FOREIGN KEY (Codigo_Via)
    REFERENCES Vias (Codigo);

-- Reference: T_I_Impuestos (table: Tarifas_Impuestos)
ALTER TABLE Tarifas_Impuestos ADD CONSTRAINT T_I_Impuestos
    FOREIGN KEY (Codigo_Impuesto)
    REFERENCES Impuestos (Codigo);

-- Reference: T_I_Tarifas (table: Tarifas_Impuestos)
ALTER TABLE Tarifas_Impuestos ADD CONSTRAINT T_I_Tarifas
    FOREIGN KEY (Codigo_Tarifa)
    REFERENCES Tarifas (Codigo);

-- Reference: VD_I_Impuestos (table: Ventas_Detalle_Impuestos)
ALTER TABLE Ventas_Detalle_Impuestos ADD CONSTRAINT VD_I_Impuestos
    FOREIGN KEY (Codigo_Impuesto)
    REFERENCES Impuestos (Codigo);

-- Reference: VD_I_Ventas_Detalle (table: Ventas_Detalle_Impuestos)
ALTER TABLE Ventas_Detalle_Impuestos ADD CONSTRAINT VD_I_Ventas_Detalle
    FOREIGN KEY (Codigo_Venta_Detalle,Codigo_Venta)
    REFERENCES Ventas_Detalle (Codigo,Codigo_Venta);

-- Reference: V_AB_Viajes (table: Viajes_Autobuses)
ALTER TABLE Viajes_Autobuses ADD CONSTRAINT V_AB_Viajes
    FOREIGN KEY (Codigo_Viaje)
    REFERENCES Viajes (Codigo);

-- Reference: V_A_Autobuses (table: Viajes_Autobuses)
ALTER TABLE Viajes_Autobuses ADD CONSTRAINT V_A_Autobuses
    FOREIGN KEY (Codigo_Autobus)
    REFERENCES Autobuses (Codigo);

-- Reference: V_A_Autobuses_Reserva (table: Viajes_Autobuses)
ALTER TABLE Viajes_Autobuses ADD CONSTRAINT V_A_Autobuses_Reserva
    FOREIGN KEY (Codigo_Autobus_Reserva)
    REFERENCES Autobuses (Codigo);

-- Reference: V_EVE_Eventos_Emergencia (table: Viajes_Eventos_Emergencia)
ALTER TABLE Viajes_Eventos_Emergencia ADD CONSTRAINT V_EVE_Eventos_Emergencia
    FOREIGN KEY (Codigo_Emergencia)
    REFERENCES Eventos_Emergencia (Codigo);

-- Reference: V_EVE_Viajes (table: Viajes_Eventos_Emergencia)
ALTER TABLE Viajes_Eventos_Emergencia ADD CONSTRAINT V_EVE_Viajes
    FOREIGN KEY (Codigo_Viaje)
    REFERENCES Viajes (Codigo);

-- Reference: V_E_E_Niveles_Alerta (table: Viajes_Eventos_Emergencia)
ALTER TABLE Viajes_Eventos_Emergencia ADD CONSTRAINT V_E_E_Niveles_Alerta
    FOREIGN KEY (Nivel_Gravedad)
    REFERENCES Niveles_Alerta (Codigo);

-- Reference: V_S_Servicios (table: Viajes_Servicios)
ALTER TABLE Viajes_Servicios ADD CONSTRAINT V_S_Servicios
    FOREIGN KEY (Codigo_Servicio)
    REFERENCES Servicios (Codigo);

-- Reference: V_S_Viajes (table: Viajes_Servicios)
ALTER TABLE Viajes_Servicios ADD CONSTRAINT V_S_Viajes
    FOREIGN KEY (Codigo_Viaje)
    REFERENCES Viajes (Codigo);

-- Reference: Vendedores_Empleados (table: Vendedores)
ALTER TABLE Vendedores ADD CONSTRAINT Vendedores_Empleados
    FOREIGN KEY (Codigo_Empleado)
    REFERENCES Empleados (Codigo);

-- Reference: Ventas_Detalle_Boletas (table: Ventas_Detalle)
ALTER TABLE Ventas_Detalle ADD CONSTRAINT Ventas_Detalle_Boletas
    FOREIGN KEY (Codigo_Boleta)
    REFERENCES Boletas (Codigo);

-- Reference: Ventas_Detalle_Boletas_Ventas (table: Ventas_Detalle)
ALTER TABLE Ventas_Detalle ADD CONSTRAINT Ventas_Detalle_Boletas_Ventas
    FOREIGN KEY (Codigo_Venta)
    REFERENCES Boletas_Ventas (Codigo);

-- Reference: Viajes_Averias_Averias (table: Viajes_Averias)
ALTER TABLE Viajes_Averias ADD CONSTRAINT Viajes_Averias_Averias
    FOREIGN KEY (Codigo_Averia)
    REFERENCES Averias (Codigo);

-- Reference: Viajes_Averias_Viajes (table: Viajes_Averias)
ALTER TABLE Viajes_Averias ADD CONSTRAINT Viajes_Averias_Viajes
    FOREIGN KEY (Codigo_Viaje)
    REFERENCES Viajes (Codigo);

-- Reference: Viajes_Empleados_Empleados (table: Viajes_Empleados)
ALTER TABLE Viajes_Empleados ADD CONSTRAINT Viajes_Empleados_Empleados
    FOREIGN KEY (Codigo_Empleado)
    REFERENCES Empleados (Codigo);

-- Reference: Viajes_Empleados_Viajes (table: Viajes_Empleados)
ALTER TABLE Viajes_Empleados ADD CONSTRAINT Viajes_Empleados_Viajes
    FOREIGN KEY (Codigo_Viaje)
    REFERENCES Viajes (Codigo);

-- Reference: Viajes_Rutas (table: Viajes)
ALTER TABLE Viajes ADD CONSTRAINT Viajes_Rutas
    FOREIGN KEY (Codigo_Ruta)
    REFERENCES Rutas (Codigo);

-- Reference: Zonas_Datos_Trafico_D (table: Zonas_Datos_Trafico)
ALTER TABLE Zonas_Datos_Trafico ADD CONSTRAINT Zonas_Datos_Trafico_D
    FOREIGN KEY (Nivel_Alerta)
    REFERENCES Niveles_Alerta (Codigo);

-- Reference: Zonas_Datos_Trafico_I (table: Zonas_Datos_Trafico)
ALTER TABLE Zonas_Datos_Trafico ADD CONSTRAINT Zonas_Datos_Trafico_I
    FOREIGN KEY (Tipo_Incidente)
    REFERENCES Tipos_Incidentes (Codigo_Incidente);

-- Reference: Zonas_Datos_Trafico_Zonas (table: Zonas_Datos_Trafico)
ALTER TABLE Zonas_Datos_Trafico ADD CONSTRAINT Zonas_Datos_Trafico_Zonas
    FOREIGN KEY (Codigo_Zona_Afectada)
    REFERENCES Zonas (Codigo_Zona);

-- Reference: Zonas_Ubicaciones_D (table: Zonas_Ubicaciones_Geograficas)
ALTER TABLE Zonas_Ubicaciones_Geograficas ADD CONSTRAINT Zonas_Ubicaciones_D
    FOREIGN KEY (Codigo_Zona)
    REFERENCES Zonas (Codigo_Zona);

-- Reference: Zonas_Ubicaciones_I (table: Zonas_Ubicaciones_Geograficas)
ALTER TABLE Zonas_Ubicaciones_Geograficas ADD CONSTRAINT Zonas_Ubicaciones_I
    FOREIGN KEY (Codigo_Ubicacion_Geografica)
    REFERENCES Ubicaciones_Geograficas (Codigo);

-- End of file.

