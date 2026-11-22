SELECT 
    s.id_sesion,
    p.nombre,
    p.area,
    p.turno,
    s.fecha_hora,
    s.ip_cliente,
    s.puerto_destino,
    CASE 
        WHEN s.ip_cliente NOT LIKE '192.168.%'
         AND s.ip_cliente NOT LIKE '10.%'
         AND (SUBSTR(s.fecha_hora, 12, 8) < p.inicio_turno OR SUBSTR(s.fecha_hora, 12, 8) > p.fin_turno)
            THEN 'ALTA - IP externa fuera de turno'
        WHEN s.ip_cliente NOT LIKE '192.168.%' AND s.ip_cliente NOT LIKE '10.%'
            THEN 'MEDIA - IP externa en horario'
        WHEN SUBSTR(s.fecha_hora, 12, 8) < p.inicio_turno OR SUBSTR(s.fecha_hora, 12, 8) > p.fin_turno
            THEN 'MEDIA - Red interna fuera de turno'
        ELSE 'BAJA - Normal'
    END AS nivel_alerta
FROM sesiones_red s
JOIN personal_turnos p ON s.id_usuario = p.id_usuario
WHERE UPPER(s.resultado) = 'EXITOSO'
ORDER BY s.fecha_hora;
