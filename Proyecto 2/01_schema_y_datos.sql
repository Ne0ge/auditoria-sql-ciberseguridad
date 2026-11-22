CREATE table personal_turnos (
  id_usuario INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL,
  area TEXT NOT NULL,
  turno TEXT NOT NULL,
  inicio_turno TEXT NOT NULL,
  fin_turno TEXT NOT NULL
);

CREATE TABLE sesiones_red (
  id_sesion INTEGER PRIMARY KEY,
  id_usuario INTEGER NOT NULL,
  fecha_hora TEXT NOT NULL,
  ip_cliente TEXT NOT NULL,
  resultado TEXT NOT NULL,
  puerto_destino INTEGER NOT NULL
);

INSERT INTO personal_turnos (id_usuario, nombre, area, turno, inicio_turno, fin_turno) VALUES
(1, 'Carlos Mendoza', 'Sistemas', 'Matutino', '08:00:00', '16:00:00'),
(2, 'Laura Gomez', 'Ventas', 'Matutino', '09:00:00', '18:00:00'),
(3, 'Sofia Ruis', 'Finanzas', 'Nocturno', '22:00:00', '06:00:00'),
(4, 'Miguel Torres', 'Operaciones', 'Matutino', '08:00:00', '17:00:00');
 
INSERT into sesiones_red (id_sesion, id_usuario, fecha_hora, ip_cliente, resultado, puerto_destino) VALUES
(101, 1, '2026-11-20 08:15:00', '192.168.1.29', 'Exitoso', 443),
(102, 2, '2026-11-20 21:45:00', '185.220.101.12', 'Exitoso', 3389),
(103, 2, '2026-11-20 22:05:00', '185.220.101.12', 'Exitoso', 22),
(104, 3, '2026-11-20 02:30:00', '10.0.5.8', 'Exitoso', 443),
(105, 4, '2026-11-20 01:10:00', '185.220.101.4', 'Fallido', 22),
(106, 4, '2026-11-20 01:12:00', '185.220.101.4', 'Fallido', 22),
(107, 4, '2026-11-20 23:50:00', '177.244.15.90', 'Exitoso', 3389);
