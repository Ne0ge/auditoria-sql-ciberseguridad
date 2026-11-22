WITH eventos_sospechosos AS (
  SELECT
  	p.id_usuario,
    p.nombre,
    p.area,
    s.ip_cliente,
    s.resultado,
    s.puerto_destino
  FROM sesiones_red s 
  JOIN personal_turnos p ON s.id_usuario = p.id_usuario
  WHERE s.resultado = 'FALLIDO'
  	or (s.ip_cliente NOT LIKE '192.168.%' AND s.ip_cliente NOT LIKE '10.%')
  	or (SUBSTR(s.fecha_hora, 12, 8) < p.inicio_turno OR SUBSTR(s.fecha_hora, 12, 8) > p.fin_turno)
  )
  SELECT
  	nombre,
    area,
    COUNT(*) AS total_eventos_anomalos,
    COUNT(DISTINCT ip_cliente) as ips_distintas
  FROM eventos_sospechosos
  GROUP BY id_usuario, nombre, area
  HAVING COUNT(*) >= 2
  ORDER by total_eventos_anomalos DESC;
