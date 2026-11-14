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
