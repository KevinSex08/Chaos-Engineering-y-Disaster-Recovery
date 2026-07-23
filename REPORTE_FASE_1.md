# Fase 1 – Hardening & Aprovisionamiento

## Objetivo cumplido

Parcialmente. Se creó y validó el archivo de Docker Compose, pero no fue posible aprovisionar ni certificar el servidor Ubuntu porque esta sesión corresponde a Windows y no dispone de una distribución WSL ni de una conexión SSH configurada hacia el servidor.

## Acciones realizadas

- Se comprobó el entorno de ejecución real.
- Se confirmó que no hay una distribución WSL instalada ni una configuración SSH disponible.
- Se comprobó la presencia del cliente Docker 28.3.2 y Docker Compose v2.39.1-desktop.1 en Windows.
- Se creó `docker-compose.yml` con PostgreSQL 17, el contenedor `postgres_lab`, las variables solicitadas, el puerto 5432 y el volumen persistente `postgres_data`.
- No se ejecutó `docker compose up` ni se levantó ningún contenedor.

## Verificaciones

- `docker compose config`: correcto, código de salida 0.
- `docker version`: el cliente responde, pero el daemon Docker de Windows devuelve acceso denegado.
- `hostname -I`: no está disponible en Windows.
- `whoami`: `nandox\codexsandboxoffline` (cuenta Windows; no es el usuario Ubuntu).
- La pertenencia del usuario Ubuntu al grupo `docker` y el funcionamiento de Docker sin `sudo` no pudieron verificarse sin acceso al servidor Ubuntu.

## Resultado

⚠️ El Compose está listo y validado, pero no es posible certificar que el entorno Ubuntu esté listo para la Fase 2 hasta ejecutar allí las comprobaciones y la configuración del grupo `docker`.
