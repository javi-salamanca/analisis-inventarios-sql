-- =========================================================================
-- PROYECTO: Análisis y Gestión de Inventarios con SQL (SQLite)
-- SCRIPT 02: Consultas Analíticas e Indicadores Clave de Operaciones (KPIs)
-- Autor: Javier Salamanca
-- =========================================================================

-- CONSULTA 1: Valorización total del inventario actual en almacén
-- Permite conocer cuánto capital monetario está inmovilizado en stock.
SELECT 
    COUNT(id_producto) AS total_skus,
    SUM(stock_actual) AS unidades_totales,
    ROUND(SUM(stock_actual * costo_unitario), 2) AS valor_total_inventario_usd
FROM productos;


-- CONSULTA 2: Alertas de Stock Crítico (Productos bajo el Punto de Reorden / ROP)
-- Identifica qué materiales necesitan orden de compra urgente para evitar paradas de planta.
SELECT 
    codigo_sku,
    nombre_producto,
    categoria,
    stock_actual,
    stock_minimo_rop AS rop_requerido,
    (stock_minimo_rop - stock_actual) AS deficit_reposicion
FROM productos
WHERE stock_actual < stock_minimo_rop
ORDER BY deficit_reposicion DESC;


-- CONSULTA 3: Valoración de la demanda anual y costo potencial de inventario
-- Ayuda a dimensionar el flujo financiero anual por categoría de insumo.
SELECT 
    categoria,
    COUNT(id_producto) AS cantidad_items,
    SUM(demanda_anual_estimada) AS demanda_anual_total_unidades,
    ROUND(SUM(demanda_anual_estimada * costo_unitario), 2) AS costo_anual_estimado_usd
FROM productos
GROUP BY categoria
ORDER BY costo_anual_estimado_usd DESC;
