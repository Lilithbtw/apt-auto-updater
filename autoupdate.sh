#!/usr/bin/env bash

HOME_DIR="<YOUR HOME DIRECTORY>"
LOG_FILE="${HOME_DIR}/logs/autoupdate.log"

mkdir -p "$(dirname "$LOG_FILE")"

echo "=== [$(date)] Iniciando actualización ===" >> "$LOG_FILE"

if apt -y update && apt -y upgrade >> "$LOG_FILE" 2>&1; then
    echo "[INFO] Actualización completada correctamente, reiniciando..." >> "$LOG_FILE"
    reboot
else
    echo "[ERROR] Falló la actualización, revisa el log antes de reiniciar." >> "$LOG_FILE"
fi
