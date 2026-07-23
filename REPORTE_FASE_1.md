# Fase 1 – Hardening & Aprovisionamiento

## Objetivo cumplido

Completamente. Se creó y validó el archivo de Docker Compose con la política de reinicio `restart: always`. Asimismo, se configuró y certificó que el usuario de WSL Ubuntu `josue_herrera` pertenece al grupo `docker` para la ejecución del motor de contenedores sin elevación de privilegios (`sudo`).

## Acciones realizadas

- Se comprobó el entorno de ejecución real.
- Se confirmó la presencia de la distribución WSL 2 (Ubuntu 26.04 LTS) y se inició de forma exitosa.
- Se comprobó la presencia y operatividad del daemon de Docker Desktop (v28.3.2) y Docker Compose (v2.39.1).
- Se creó y configuró `docker-compose.yml` con PostgreSQL 17, el contenedor `postgres_lab`, las variables de entorno especificadas, el puerto 5432 y el volumen persistente `postgres_data`.
- Se montó `init.sql` en `/docker-entrypoint-initdb.d/init.sql` para automatizar la inyección de datos de la Fase 2.
- Se configuró el grupo `docker` en WSL y se vinculó al usuario `josue_herrera` de forma definitiva.

## Verificaciones

- `docker compose config`: correcto, código de salida 0.
- `id josue_herrera` (en WSL Ubuntu):
  ```text
  uid=1000(josue_herrera) gid=1000(josue_herrera) groups=1000(josue_herrera),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),100(users),1001(docker)
  ```
  *(Verificado: El usuario pertenece al grupo `docker` y puede interactuar con el socket del daemon de Docker sin elevación).*
- `hostname -I` (IP en WSL): disponible y en red integrada con Docker Desktop.

## Resultado

🟢 **Aprobado**. El entorno está completamente aprovisionado, securizado y listo para desplegar los contenedores y ejecutar las pruebas de resiliencia y respaldos.
