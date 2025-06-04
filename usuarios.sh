#!/bin/bash

while true; do
    clear
    echo "=============== GESTIÓN DE USUARIOS Y GRUPOS ==============="
    echo "1. Listar usuarios del sistema"
    echo "2. Crear un nuevo usuario"
    echo "3. Agregar usuario a un grupo"
    echo "4. Listar grupos del sistema"
    echo "0. Volver al menú principal"
    echo "============================================================"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            echo
            echo ">>> Usuarios del sistema:"
            getent passwd | cut -d: -f1
            read -p "Presione Enter para continuar..."
            ;;
        2)
            read -p "Ingrese el nombre del nuevo usuario: " nuevo_usuario
            if id "$nuevo_usuario" &>/dev/null; then
                echo "El usuario '$nuevo_usuario' ya existe."
            else
                sudo useradd "$nuevo_usuario" && echo "Usuario creado correctamente."
                read -p "¿Desea asignar una contraseña ahora? (s/n): " resp
                if [[ $resp == "s" ]]; then
                    sudo passwd "$nuevo_usuario"
                fi
            fi
            read -p "Presione Enter para continuar..."
            ;;
        3)
            read -p "Ingrese el nombre del usuario: " usuario
            read -p "Ingrese el grupo al que desea añadirlo: " grupo
            sudo usermod -aG "$grupo" "$usuario" && echo "Usuario añadido al grupo correctamente." || echo "Error: verifique usuario y grupo."
            read -p "Presione Enter para continuar..."
            ;;
        4)
            echo
            echo ">>> Grupos del sistema:"
            getent group | cut -d: -f1
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

