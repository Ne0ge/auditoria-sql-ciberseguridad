CREATE TABLE empleados (
    id_empleado INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    departamento TEXT NOT NULL,
    turno_asignado TEXT NOT NULL
);

CREATE TABLE accesos_red (
    id_acceso INTEGER PRIMARY KEY,
    id_empleado INTEGER NOT NULL,
    hora_conexion TEXT NOT NULL,
    ip_origen TEXT NOT NULL,
    estado_acceso TEXT NOT NULL
);

INSERT INTO empleados (id_empleado, nombre, departamento, turno_asignado) VALUES
(1, 'Carlos Mendoza', 'Sistemas', 'Matutino'),
(2, 'Laura Gómez', 'Ventas', 'Matutino'),
(3, 'Sofía Ruiz', 'Finanzas', 'Nocturno'),
(4, 'Miguel Torres', 'Operaciones', 'Matutino');

INSERT INTO accesos_red (id_acceso, id_empleado, hora_conexion, ip_origen, estado_acceso) VALUES
(1, 1, '08:25:00', '192.168.1.10', 'EXITOSO'),
(2, 2, '09:10:00', '192.168.1.15', 'EXITOSO'),
(3, 4, '02:15:00', '185.220.101.4', 'FALLIDO'),
(4, 4, '02:17:00', '185.220.101.4', 'FALLIDO'),
(5, 4, '02:19:00', '185.220.101.4', 'FALLIDO'),
(6, 3, '03:00:00', '185.220.101.99', 'EXITOSO');

SELECT 
    e.nombre,
    a.ip_origen,
    COUNT(*) AS total_fallos
FROM accesos_red a
JOIN empleados e ON a.id_empleado = e.id_empleado
WHERE a.estado_acceso = 'FALLIDO'
GROUP BY e.nombre, a.ip_origen
HAVING COUNT(*) >= 3;