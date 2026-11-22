# Auditoría SQL y Ciberseguridad

Portafolio de prácticas y consultas SQL enfocadas en auditoría de seguridad, detección de anomalías y control de activos, ejecutadas en SQLite.

## Contenido actual (Proyecto 1)
- `01_schema_y_datos.sql` y `01_activos_y_actividad.sql`: creación de tablas (`DROP TABLE IF EXISTS`, `CREATE TABLE`) y carga de datos de prueba (`INSERT INTO`).
- `02_consultas_auditoria.sql` y `03_consultas_auditoria.sql`: consultas de auditoría con `COUNT`, `GROUP BY`, `HAVING`, `LEFT JOIN` + `IS NULL` y filtrado de activos en estado `Baja`.
- `02_consultas_auditoria.png` y `03_consultas_auditoria.png`: capturas de evidencia de los resultados obtenidos en SQLite Online.

## Próximos pasos
- **Proyecto 2:** Análisis de sesiones de red por turno, IP externa y reincidencia (`CASE`, `SUBSTR`, `NOT LIKE`, CTE con `WITH` y `HAVING`).
- **Proyectos posteriores:** Escalamiento gradual en dificultad en nuevas sesiones.
