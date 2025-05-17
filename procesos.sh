#!/bin/bash

# Archivo: procesos.sh
# Descripción: Módulo para gestión y monitoreo de procesos.

mostrar_procesos() {
    echo "Listado de procesos activos (usuario, PID, %CPU, %MEM, comando):"
    ps aux --sort=-%cpu | awk 'NR==1 || NR<=11 {print $1, $2, $3, $4, $11}'
    echo ""
}

buscar_proceso() {
    echo -n "Ingrese el nombre o parte del nombre del proceso a buscar: "
    read proc
    echo "Procesos que coinciden con '$proc':"
    ps aux | grep -i "$proc" | grep -v grep
    echo ""
}