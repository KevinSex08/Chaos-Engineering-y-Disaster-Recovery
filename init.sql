CREATE TABLE IF NOT EXISTS transacciones (
    id SERIAL PRIMARY KEY,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    monto DECIMAL(10, 2) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    estado VARCHAR(50) DEFAULT 'COMPLETADA'
);

INSERT INTO transacciones (monto, descripcion) VALUES
(150.50, 'Pago de servicios - Agua'),
(45.00, 'Suscripción mensual - Software'),
(1200.00, 'Nómina - Empleado 1'),
(850.75, 'Compra de equipos de oficina'),
(20.00, 'Recarga de saldo móvil'),
(340.20, 'Pago a proveedores - Limpieza'),
(500.00, 'Alquiler de oficina - Mensualidad'),
(75.50, 'Mantenimiento de servidores'),
(110.00, 'Publicidad en redes sociales'),
(95.25, 'Compra de insumos de cafetería'),
(2200.00, 'Venta de servicios de consultoría'),
(15.99, 'Licencia de antivirus'),
(300.00, 'Bono por cumplimiento de metas'),
(55.60, 'Gastos de representación - Almuerzo'),
(180.00, 'Renovación de dominios web');
