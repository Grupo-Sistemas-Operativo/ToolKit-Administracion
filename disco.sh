#!/bin/bash

while true; do
    clear
    echo "==================== GESTIÓN DE DISCO ==================="
    echo "1. Ver espacio libre y usado en los sistemas de archivos (df -h)"
    echo "2. Ver tamaño de un archivo o directorio (du -sh <ruta>)"
    echo "3. Listar archivos de un directorio con permisos (ls -l)"
    echo "0. Volver al menú principal"
    echo "========================================================="
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            echo
            echo ">>> Espacio libre y usado:"
            df -h
            ;;
        2)
            read -p "Ingrese la ruta del archivo/directorio: " ruta
            echo
            echo ">>> Tamaño ocupado por $ruta:"
            du -sh "$ruta" 2>/dev/null || echo "Ruta no válida"
            ;;