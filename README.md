# 🔄 Debian Auto-Updater

Script sencillo en **Bash** para automatizar las actualizaciones del sistema en **Debian** o **Ubuntu**.  
Cada vez que se ejecuta:
1. Registra la fecha y hora de ejecución en un archivo de log.
2. Ejecuta `apt update` y `apt upgrade` de forma no interactiva.
3. Guarda toda la salida en el log.
4. Reinicia el servidor automáticamente.

Este script nació como parte de mi proyecto de **home server**, donde busco mantener el sistema siempre actualizado y minimizar el riesgo de vulnerabilidades sin intervención manual.

---

## Requisitos
- Distribución basada en **Debian** (Debian 12, Ubuntu 20.04+, etc.)
- Usuario con permisos de **sudo** o ejecutar desde **root**
- `apt`, `crontab` y `bash` disponibles en el sistema

---

## Instalación

Clona el repositorio y dale permisos de ejecución al script:

```bash
git clone https://github.com/tu-usuario/debian-auto-updater.git
cd debian-auto-updater
chmod +x autoupdate.sh
```
Ahora crea la entry en crontab
```bash
sudo crontab -e
```
Y añade la linea
```bash
0 3 * * * /ruta/completa/al/script/autoupdate.sh
```
Esto ejecutará el script cada día a las 3:00 AM.
