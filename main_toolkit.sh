#!/bin/bash

# Archivo: main_toolkit.sh
# Descripción: Menú principal del toolkit de administración.

# Función para mostrar el menú
mostrar_menu() {
    clear
    echo "=============================="
    echo " Toolkit de Administración Jr."
    echo "=============================="
    echo "1) Gestión de procesos"
    echo "2) Uso de memoria"
    echo "3) Sistema de archivos"
    echo "4) Administración de usuarios"
    echo "5) Seguridad básica"
    echo "0) Salir"
    echo "=============================="
    echo -n "Seleccione una opción: "
}