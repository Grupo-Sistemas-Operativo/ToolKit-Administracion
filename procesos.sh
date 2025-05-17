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
matar_proceso() {
    echo -n "Ingrese el PID del proceso que desea terminar: "
    read pid
    if kill $pid 2>/dev/null; then
        echo "Proceso $pid terminado correctamente."
    else
        echo "Error al terminar proceso $pid. Verifique que el PID sea correcto y que tenga permisos."
    fi
    echo ""
}

mostrar_menu_procesos() {
    echo "====== Módulo Procesos ======"
    echo "1) Mostrar procesos activos"
    echo "2) Buscar proceso por nombre"
    echo "3) Terminar proceso por PID"
    echo "0) Volver al menú principal"
    echo -n "Seleccione una opción: "
}

while true; do
    mostrar_menu_procesos
    read opcion
    case $opcion in
        1) mostrar_procesos ;;
        2) buscar_proceso ;;
        3) matar_proceso ;;
        0) exit 0 ;;
        *) echo "Opción inválida. Intente nuevamente." ;;
    esac
done