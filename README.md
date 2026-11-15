# Análisis y Gestión de Inventarios con SQL (SQLite)

Proyecto práctico orientado a la optimización de inventarios aplicando principios de **Ingeniería Industrial** y consultas analíticas en **SQL (SQLite)**.

## 🎯 Objetivo
Modelar una base de datos relacional para controlar productos y movimientos de almacén, permitiendo calcular indicadores clave de gestión operativa:
- Valorización total del inventario.
- Identificación de productos en estado crítico (debajo del Punto de Reorden / ROP).
- Clasificación ABC según el valor de consumo / inventario.

## 🛠️ Herramientas utilizadas
- **SQLite / DB Browser for SQLite** (Diseño de tablas y consultas analíticas)
- **Ingeniería Industrial** (Control de stock, ROP, Clasificación ABC)

## 📂 Estructura del repositorio
- `01_crear_tablas.sql`: Script de creación de la base de datos y carga de datos de prueba.
- `02_consultas_analisis.sql`: Consultas SQL para KPIs de inventario y alertas de reposición.
  
## 📊 Hallazgos y Recomendaciones Operativas

A partir de la ejecución de las consultas analíticas sobre el inventario simulado, se obtuvieron las siguientes conclusiones para la toma de decisiones:

* **Mitigación de Riesgo de Parada (Alertas ROP):** Se identificaron los SKUs críticos cuyo stock actual cayó por debajo de su Punto de Reorden (ej. insumos con déficit inmediato). *Recomendación:* Emitir órdenes de compra urgentes para estos ítems y revisar los *lead times* de sus proveedores para evitar paros en la línea de producción.
* **Control de Capital Inmovilizado:** La valorización del inventario permitió detectar qué categorías concentran la mayor inversión financiera en almacén. *Recomendación:* Aplicar políticas de revisión periódica más estrictas en los artículos de alto costo unitario (Clasificación A) para optimizar el flujo de caja sin comprometer la disponibilidad operativa.
* **Visibilidad de Datos:** Los resultados exportados se encuentran disponibles directamente en `inventarios.csv` y `resumen_alertas_rop.csv` para su consulta inmediata sin necesidad de ejecutar el motor de base de datos.
