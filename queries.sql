-- 1️⃣ Listar los productos con stock menor a 5 unidades.
SELECT id, nombre
FROM "Productos"
WHERE cantidad_stock < 5;

-- 2️⃣ Calcular ventas totales de un mes específico.
SELECT
    DATE_TRUNC('month', c.fecha)::date AS mes,
    COUNT(DISTINCT c.id) AS numero_compras,
    SUM(cp.total) AS ventas_totales
FROM "Compras" c
JOIN "compra_productos" cp ON c.id = cp.id_compra
GROUP BY mes
ORDER BY mes;

-- 3️⃣ Obtener el cliente con más compras realizadas.
SELECT c.id, c.nombre || ' ' || c.apellidos AS cliente,
COUNT(DISTINCT co.id) AS compras
FROM "Cliente" c
FROM "Compras" co ON c.id = co.id_cliente
GROUP BY c.id, cliente;