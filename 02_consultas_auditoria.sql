SELECT 
    act.codigo_activo,
    act.software_detectado,
    act.nivel_riesgo,
    act.fecha_reporte
FROM actividad_equipos act
LEFT JOIN equipos_autorizados aut ON act.codigo_activo = aut.codigo_activo
WHERE aut.codigo_activo IS NULL;