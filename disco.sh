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
        3)
            read -p "Ingrese el directorio: " directorio
            echo
            echo ">>> Archivos en $directorio con permisos:"
            ls -l "$directorio" 2>/dev/null || echo "Directorio no válido"
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
