CREATE DATABASE techzone;
CREATE TABLE "Productos"(
    "id" INTEGER NOT NULL,
    "nombre" VARCHAR(255) NOT NULL,
    "id_categoria" INTEGER NOT NULL,
    "id_proveedor" INTEGER NOT NULL,
    "codigo_barras" VARCHAR(255) NOT NULL,
    "precio_venta" DECIMAL(8, 2) NOT NULL,
    "cantidad_stock" INTEGER NOT NULL,
    "estado" CHAR(255) NOT NULL
);
ALTER TABLE
    "Productos" ADD PRIMARY KEY("id");
CREATE INDEX "productos_codigo_barras_index" ON
    "Productos"("codigo_barras");
CREATE TABLE "Proveedor"(
    "id" INTEGER NOT NULL,
    "nombre" VARCHAR(255) NOT NULL,
    "estado" BIGINT NOT NULL
);
ALTER TABLE
    "Proveedor" ADD PRIMARY KEY("id");
CREATE TABLE "Cliente"(
    "id" INTEGER NOT NULL,
    "nombre" VARCHAR(255) NOT NULL,
    "apellidos" VARCHAR(255) NOT NULL,
    "celular" NUMERIC(10,0) NOT NULL,
    "direccionbigint" VARCHAR(255) NOT NULL,
    "correo_electronico" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Cliente" ADD PRIMARY KEY("id");
CREATE INDEX "cliente_correo_electronico_index" ON
    "Cliente"("correo_electronico");
CREATE TABLE "Compras"(
    "id" INTEGER NOT NULL,
    "id_cliente" INTEGER NOT NULL,
    "fecha" DATE NOT NULL,
    "medio_pago" CHAR(255) NOT NULL,
    "comentario" VARCHAR(255) NOT NULL,
    "estado" CHAR(255) NOT NULL
);
ALTER TABLE
    "Compras" ADD PRIMARY KEY("id");

CREATE TABLE "compra_productos"(
    "id_compra" INTEGER NOT NULL,
    "id_producto" INTEGER NOT NULL,
    "cantidad" INTEGER NOT NULL,
    "total" DECIMAL(8, 2) NOT NULL,
    "estado" CHAR(255) NOT NULL,
    CONSTRAINT compras_productos_pk PRIMARY KEY (id_compra, id_producto),
    CONSTRAINT compras_productos_fk_compra FOREIGN KEY ("id_compra")
        REFERENCES "Compras"("id")
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT compras_productos_fk_producto FOREIGN KEY ("id_producto")
        REFERENCES "Productos"("id")
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
CREATE TABLE "Categoria"(
    "id" INTEGER NOT NULL,
    "descripcion" VARCHAR(255) NOT NULL,
    "estado" CHAR(255) NOT NULL
);
ALTER TABLE
    "Categoria" ADD PRIMARY KEY("id");
ALTER TABLE
    "Productos" ADD CONSTRAINT "productos_id_categoria_foreign" FOREIGN KEY("id_categoria") REFERENCES "Categoria"("id");
ALTER TABLE
    "Productos" ADD CONSTRAINT "productos_id_proveedor_foreign" FOREIGN KEY("id_proveedor") REFERENCES "Proveedor"("id");
ALTER TABLE "compra_productos" DROP CONSTRAINT compra_productos_id_compra_foreign;
ALTER TABLE
    "compra_productos" ADD CONSTRAINT "compra_productos_id_compra_foreign" FOREIGN KEY("id_compra") REFERENCES "Compras"("id");
ALTER TABLE "compra_productos" DROP CONSTRAINT compra_productos_id_producto_foreign;
ALTER TABLE
    "compra_productos" ADD CONSTRAINT "compra_productos_id_producto_foreign" FOREIGN KEY("id_producto") REFERENCES "Productos"("id");
ALTER TABLE
    "Compras" ADD CONSTRAINT "compra_id_foreign" FOREIGN KEY("id") REFERENCES "Cliente"("id");