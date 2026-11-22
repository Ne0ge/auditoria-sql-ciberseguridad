CREATE TABLE equipos_autorizados (
    id_equipo INTEGER PRIMARY KEY,
    codigo_activo TEXT NOT NULL,
    area TEXT NOT NULL,
    estado_activo TEXT NOT NULL
);

CREATE TABLE actividad_equipos (
    id_evento INTEGER PRIMARY KEY,
    codigo_activo TEXT NOT NULL,
    software_detectado TEXT NOT NULL,
    nivel_riesgo TEXT NOT NULL,
    fecha_reporte TEXT NOT NULL
);

INSERT INTO equipos_autorizados (id_equipo, codigo_activo, area, estado_activo) VALUES
(1, 'PC-OPE-01', 'Operaciones', 'Activo'),
(2, 'PC-FIN-02', 'Finanzas', 'Activo'),
(3, 'LAP-VEN-03', 'Ventas', 'Baja');

INSERT INTO actividad_equipos (id_evento, codigo_activo, software_detectado, nivel_riesgo, fecha_reporte) VALUES
(10, 'PC-OPE-01', 'Excel_Oficial', 'Bajo', '2026-11-19 08:15'),
(11, 'PC-EXT-99', 'AnyDesk_Remoto', 'Alto', '2026-11-19 01:40'),
(12, 'LAP-VEN-03', 'Navegador_Web', 'Medio', '2026-11-19 10:05'),
(13, 'PC-FIN-02', 'Script_No_Firmado', 'Alto', '2026-11-19 11:20');