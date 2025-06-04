#!/bin/bash

while true; do
    clear
    echo "============= SEGURIDAD BÁSICA ============="
    echo "1. Ver últimos intentos de login (last)"
    echo "2. Ver intentos fallidos de login (lastb)"
    echo "3. Ver permisos de archivos críticos"
    echo "4. Ver últimos logs de autenticación"
    echo "0. Volver al menú principal"
    echo "============================================"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            echo ">>> Últimos intentos de login:"
            last | head -n 20
            read -p "Presione Enter para continuar..."
            ;;
        2)
            echo ">>> Últimos intentos fallidos de login:"
            sudo lastb | head -n 20
            read -p "Presione Enter para continuar..."
            ;;
        3)
            echo ">>> Permisos de archivos críticos:"
            ls -l /etc/passwd /etc/shadow /etc/group /etc/sudoers 2>/dev/null
            read -p "Presione Enter para continuar..."
            ;;
        4)
            echo ">>> Últimas líneas del log de autenticación:"
            if [ -f /var/log/auth.log ]; then
                sudo tail -n 20 /var/log/auth.log
            else
                sudo journalctl -xe | grep -i "auth" | tail -n 20
            fi
            read -p "Presione Enter para continuar..."
            ;;
        0)
            break
            ;;
        *)
            echo "Opción inválida. Intente nuevamente."
            sleep 2
            ;;
    esac
done