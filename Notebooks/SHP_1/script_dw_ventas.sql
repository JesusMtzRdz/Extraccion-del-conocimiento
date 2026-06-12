CREATE DATABASE dw_ventas;

CREATE TABLE dim_cliente(
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100),
    edad INT
);

CREATE TABLE dim_producto(
    id_producto SERIAL PRIMARY KEY,
    producto VARCHAR(100),
    categoria VARCHAR(100)
);

CREATE TABLE dim_fecha(
    id_fecha SERIAL PRIMARY KEY,
    fecha DATE,
    mes INT,
    anio INT
);

CREATE TABLE fact_ventas(
    id_venta SERIAL PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    id_fecha INT,
    cantidad INT,
    total NUMERIC(10,2)
);