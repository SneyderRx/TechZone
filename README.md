Proyecto TechZone: Gestión de E-commerce
Descripción del Proyecto
Este proyecto es una base de datos diseñada para gestionar la información de un e-commerce ficticio llamado TechZone. La base de datos incluye tablas para productos, categorías, proveedores, clientes y ventas, permitiendo un control completo sobre el inventario y las transacciones comerciales. Su propósito es simular un entorno de datos real para realizar análisis, consultas y operaciones de gestión.

Modelo de Entidad-Relación (E-R)
El diseño de la base de datos se basa en el siguiente modelo de entidad-relación, que muestra las tablas y sus relaciones.

!

Puedes encontrar el archivo en modelo_er.png en la raíz del proyecto.

Instrucciones de Instalación y Uso
Para usar esta base de datos, necesitas tener PostgreSQL instalado en tu sistema. A continuación, se detallan los pasos para importar y ejecutar los scripts SQL.

Crear la base de datos:
Abre una terminal o el Shell de PostgreSQL y ejecuta el siguiente comando para crear la base de datos techzone:

CREATE DATABASE techzone;

Crear las tablas:
Conéctate a la base de datos recién creada y ejecuta el script db.sql para generar el esquema.

psql -d techzone -f db.sql

Insertar los datos de prueba:
Ejecuta el script insert.sql para poblar las tablas con los 15 valores de prueba.

psql -d techzone -f insert.sql

Ejecutar consultas y procedimientos:
Puedes cargar los scripts de consultas (queries.sql) y procedimientos almacenados (procedure.sql) para utilizar las funcionalidades adicionales.

psql -d techzone -f queries.sql
psql -d techzone -f procedure.sql

Descripción de los Scripts
**db.sql**: Contiene las sentencias CREATE TABLE y ALTER TABLE para definir la estructura de la base de datos. Este script crea las tablas, las claves primarias y las relaciones entre ellas.

**insert.sql**: Este script contiene las sentencias INSERT INTO para poblar todas las tablas con 15 registros de prueba. Los datos están diseñados para simular una variedad de escenarios de negocio, como productos sin stock, precios extremos y ventas canceladas.

**queries.sql**: Incluye una serie de consultas SELECT predefinidas para realizar tareas de análisis y reporte, como buscar productos por categoría, obtener el total de ventas, o listar clientes con más compras.

**procedure.sql**: Contiene la definición de un procedimiento almacenado. Este procedimiento realiza una tarea específica, como actualizar el stock de un producto después de una venta o generar un reporte de ventas diarias.

Ejemplo de Ejecución
Para ejecutar las consultas o llamar al procedimiento almacenado, conéctate a la base de datos y usa los siguientes comandos.

1. Ejecutar las consultas de queries.sql
psql -d techzone -f queries.sql

2. Llamar al procedimiento almacenado (ejemplo)
Para ejecutar un procedimiento almacenado, puedes usar el comando CALL seguido del nombre del procedimiento y sus parámetros.

psql -d techzone -c "CALL tu_procedimiento_almacenado(param1, param2);"
