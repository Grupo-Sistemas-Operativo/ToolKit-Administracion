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

