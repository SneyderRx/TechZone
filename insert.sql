-- Inserts para la tabla Categoria
-- Se insertan 15 categorías diferentes.
INSERT INTO "Categoria" ("id", "descripcion", "estado") VALUES
(1, 'Electrónica', 'Activo'),
(2, 'Computadoras', 'Activo'),
(3, 'Smartphones', 'Activo'),
(4, 'Accesorios de PC', 'Activo'),
(5, 'Componentes de PC', 'Activo'),
(6, 'Televisores y Audio', 'Activo'),
(7, 'Electrodomésticos', 'Activo'),
(8, 'Videojuegos', 'Activo'),
(9, 'Software', 'Activo'),
(10, 'Redes y Conectividad', 'Activo'),
(11, 'Impresoras y Escáneres', 'Activo'),
(12, 'Cámaras y Drones', 'Activo'),
(13, 'Gadgets Wearables', 'Activo'),
(14, 'Almacenamiento', 'Activo'),
(15, 'Seguridad', 'Activo');

-- Inserts para la tabla Proveedor
-- Se insertan 15 proveedores.
INSERT INTO "Proveedor" ("id", "nombre", "estado") VALUES
(1, 'Tech Supplies S.A.', 1),
(2, 'Global Electronics Inc.', 1),
(3, 'Component Masters', 1),
(4, 'Software Solutions', 1),
(5, 'Smart Gadgets Ltda.', 1),
(6, 'Network World', 1),
(7, 'Data Storage Corp.', 1),
(8, 'Secure Tech', 1),
(9, 'Hardware Inc.', 1),
(10, 'Gaming Gear', 1),
(11, 'Visual Tech', 1),
(12, 'Audio Max', 1),
(13, 'Printer Express', 1),
(14, 'Mobile Gear Co.', 1),
(15, 'Digital Innovators', 1);

-- Inserts para la tabla Productos
-- Se insertan 15 productos, incluyendo productos sin stock (cantidad_stock = 0),
-- productos muy caros, y productos muy baratos.
INSERT INTO "Productos" ("id", "nombre", "id_categoria", "id_proveedor", "codigo_barras", "precio_venta", "cantidad_stock", "estado") VALUES
(1, 'Mouse Gamer HyperX Pulsefire', 4, 1, '123456789012', 45.99, 150, 'Activo'),
(2, 'Teclado Mecánico RGB', 4, 1, '123456789013', 89.99, 75, 'Activo'),
(3, 'Monitor 27" 4K', 6, 2, '123456789014', 499.99, 30, 'Activo'),
(4, 'SSD 1TB M.2 NVMe', 14, 3, '123456789015', 120.00, 200, 'Activo'),
(5, 'Procesador Intel Core i9', 5, 3, '123456789016', 750.50, 15, 'Activo'),
(6, 'Smartphone Samsung S21', 3, 2, '123456789017', 899.00, 5, 'Activo'),
(7, 'Tarjeta de Video RTX 3080', 5, 3, '123456789018', 1200.00, 0, 'Activo'), -- Producto sin stock
(8, 'Webcam HD Logitech', 4, 1, '123456789019', 35.00, 100, 'Activo'),
(9, 'Router WiFi 6 Gigabit', 10, 6, '123456789020', 150.75, 50, 'Activo'),
(10, 'Auriculares Inalámbricos', 6, 12, '123456789021', 25.99, 250, 'Activo'),
(11, 'Impresora Multifuncional', 11, 13, '123456789022', 180.00, 20, 'Activo'),
(12, 'Smartwatch Xiaomi', 13, 5, '123456789023', 95.50, 60, 'Activo'),
(13, 'Software Antivirus Pro', 9, 4, '123456789024', 59.99, 300, 'Activo'),
(14, 'Cable HDMI 2.1', 4, 1, '123456789025', 15.00, 500, 'Activo'),
(15, 'Drone DJI Mini 2', 12, 11, '123456789026', 450.00, 10, 'Activo');

-- Inserts para la tabla Cliente
-- Se insertan 15 clientes.
INSERT INTO "Cliente" ("id", "nombre", "apellidos", "celular", "direccionbigint", "correo_electronico") VALUES
(1, 'Ana', 'García Pérez', 3101234567, 'Calle 10 # 5-20', 'ana.garcia@mail.com'),
(2, 'Juan', 'Rodríguez López', 3112345678, 'Avenida 20 # 30-45', 'juan.rodriguez@mail.com'),
(3, 'María', 'Fernández Gil', 3123456789, 'Carrera 50 # 15-10', 'maria.fernandez@mail.com'),
(4, 'Pedro', 'Sánchez Torres', 3134567890, 'Calle 70 # 8-35', 'pedro.sanchez@mail.com'),
(5, 'Sofía', 'Ramírez Castro', 3145678901, 'Avenida 80 # 25-50', 'sofia.ramirez@mail.com'),
(6, 'Luis', 'Díaz Morales', 3156789012, 'Carrera 10 # 40-75', 'luis.diaz@mail.com'),
(7, 'Elena', 'Vargas Jiménez', 3167890123, 'Calle 90 # 65-90', 'elena.vargas@mail.com'),
(8, 'Carlos', 'Ruiz Herrera', 3178901234, 'Avenida 30 # 5-55', 'carlos.ruiz@mail.com'),
(9, 'Laura', 'Gómez Martín', 3189012345, 'Calle 25 # 7-12', 'laura.gomez@mail.com'),
(10, 'Diego', 'Hernández Muñoz', 3190123456, 'Carrera 45 # 2-80', 'diego.hernandez@mail.com'),
(11, 'Paula', 'Moreno Santos', 3201234567, 'Avenida 15 # 60-30', 'paula.moreno@mail.com'),
(12, 'Javier', 'Ortega Cano', 3212345678, 'Calle 85 # 10-40', 'javier.ortega@mail.com'),
(13, 'Andrea', 'Castro Rubio', 3223456789, 'Carrera 35 # 55-95', 'andrea.castro@mail.com'),
(14, 'Pablo', 'Molina Rico', 3234567890, 'Avenida 55 # 20-15', 'pablo.molina@mail.com'),
(15, 'Marta', 'Gil Soto', 3245678901, 'Calle 40 # 75-5', 'marta.gil@mail.com');

-- Inserts para la tabla Compras
-- Se insertan 15 compras con diferentes estados (Entregada, Cancelada, Pendiente)
-- y comentarios variados.
INSERT INTO "Compras" ("id", "id_cliente", "fecha", "medio_pago", "comentario", "estado") VALUES
(1, 1, '2023-01-10', 'Tarjeta de crédito', 'Entrega urgente solicitada', 'Entregada'),
(2, 2, '2023-01-11', 'PayPal', 'No hay comentarios', 'Entregada'),
(3, 3, '2023-01-12', 'Transferencia bancaria', 'Confirmar dirección de envío', 'Pendiente'),
(4, 4, '2023-01-13', 'Efectivo', 'Pago contra entrega', 'Entregada'),
(5, 5, '2023-01-14', 'Tarjeta de crédito', 'El cliente no estaba en casa', 'Cancelada'),
(6, 6, '2023-01-15', 'PayPal', 'Recoger en tienda', 'Entregada'),
(7, 7, '2023-01-16', 'Transferencia bancaria', 'Problemas con la dirección', 'Cancelada'),
(8, 8, '2023-01-17', 'Tarjeta de crédito', 'Entrega a conserjería', 'Entregada'),
(9, 9, '2023-01-18', 'Efectivo', 'Necesita factura', 'Pendiente'),
(10, 10, '2023-01-19', 'Transferencia bancaria', 'No hay comentarios', 'Entregada'),
(11, 11, '2023-01-20', 'PayPal', 'Problema con el stock del producto', 'Cancelada'),
(12, 12, '2023-01-21', 'Tarjeta de crédito', 'Todo correcto', 'Entregada'),
(13, 13, '2023-01-22', 'Efectivo', 'Entrega en oficina', 'Entregada'),
(14, 14, '2023-01-23', 'Transferencia bancaria', 'Revisar datos de cliente', 'Pendiente'),
(15, 15, '2023-01-24', 'Tarjeta de crédito', 'No hay comentarios', 'Entregada');

-- Inserts para la tabla compra_productos
-- Se insertan datos que reflejan los diferentes escenarios de ventas,
-- incluyendo ventas de un solo producto, múltiples productos, cantidades altas y bajas.
-- Se asume que los precios y las cantidades de cada producto en la compra son consistentes.
INSERT INTO "compra_productos" ("id_compra", "id_producto", "cantidad", "total", "estado") VALUES
(1, 1, 2, 91.98, 'Entregada'),
(2, 2, 1, 89.99, 'Entregada'),
(3, 3, 1, 499.99, 'Pendiente'),
(4, 4, 3, 360.00, 'Entregada'),
(5, 5, 1, 750.50, 'Cancelada'),
(6, 6, 1, 899.00, 'Entregada'),
(7, 7, 1, 1200.00, 'Cancelada'), -- Venta de un producto sin stock
(8, 8, 5, 175.00, 'Entregada'),
(9, 9, 2, 301.50, 'Pendiente'),
(10, 10, 10, 259.90, 'Entregada'),
(11, 11, 1, 180.00, 'Cancelada'),
(12, 12, 3, 286.50, 'Entregada'),
(13, 13, 1, 59.99, 'Entregada'),
(14, 14, 20, 300.00, 'Pendiente'),
(15, 15, 1, 450.00, 'Entregada'),
(1, 8, 1, 35.00, 'Entregada'),
(2, 14, 5, 75.00, 'Entregada'),
(4, 15, 1, 450.00, 'Entregada'),
(6, 10, 2, 51.98, 'Entregada'),
(8, 2, 1, 89.99, 'Entregada'),
(12, 13, 1, 59.99, 'Entregada');
