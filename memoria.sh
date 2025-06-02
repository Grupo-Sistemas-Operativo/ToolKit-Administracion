#!/bin/bash

while true; do
    clear
    echo "==================== USO DE MEMORIA ===================="
    echo "1. Ver uso de memoria RAM y SWAP (free -h)"
    echo "2. Ver información de /proc/meminfo"
    echo "3. Ver estadística de memoria con vmstat"
    echo "0. Volver al menú principal"
    echo "========================================================"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            echo
            echo ">>> Uso de memoria RAM y SWAP:"
            free -h
            ;;
        2)
            echo
            echo ">>> Contenido de /proc/meminfo (primeras 20 líneas):"
            head -n 20 /proc/meminfo
            ;;
        3)
            echo
            echo ">>> Salida de vmstat:"
            vmstat
            ;;
        0)
            break
            ;;
        *)
            echo "Opción inválida. Intente nuevamente."
            ;;
    esac
    echo
    read -p "Presione Enter para continuar..."
done
