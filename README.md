# 🛠️ Toolkit de Administración Jr.

Este proyecto es un conjunto de scripts en Bash para realizar tareas básicas de administración en sistemas Linux. Fue desarrollado con fines educativos y está pensado para facilitar el monitoreo y la gestión del sistema desde la terminal, especialmente en entornos donde no hay personal técnico especializado.

---

## 📦 Instrucciones de instalación y ejecución

### Requisitos

- Sistema operativo: 🐧**Linux**🐧 (probado en distribuciones basadas en Debian y Ubuntu)
- Intérprete de comandos Bash (viene instalado por defecto en la mayoría de los sistemas)

### Instalación

```bash
git clone https://github.com/Grupo-Sistemas-Operativo/ToolKit-Administracion
cd Toolkit-Administracion
chmod +x *.sh
```

### Ejecución

```bash
./main_toolkit.sh
```

> ⚠️ Recomendado: Ejecutar como superusuario para acceder a todas las funcionalidades  
> ```bash
> sudo ./main_toolkit.sh
> ```

---

## 🧩 Descripción de los módulos

| Script            | Funcionalidad principal                                                                 |
|-------------------|-----------------------------------------------------------------------------------------|
| `main_toolkit.sh` | Menú principal del toolkit                                                              |
| `procesos.sh`     | Muestra y permite gestionar procesos activos                                            |
| `memoria.sh`      | Visualiza el uso actual de la memoria RAM y SWAP                                        |
| `disco.sh`        | Reporta el uso de espacio en disco y puntos de montaje                                  |
| `usuarios.sh`     | Consulta, creación y modificación de usuarios                                           |
| `seguridad.sh`    | Auditoría básica del sistema: accesos, eventos y permisos críticos                      |

---

## ⚙️ Comandos utilizados y dependencias

### Comandos principales usados

```bash
ps, kill, top, free, vmstat, df, du, lsblk,
id, adduser, passwd, last, journalctl,
chmod, ls -l, grep, awk, cut, echo, read.
```

### Dependencias

- No requiere instalaciones adicionales.
- Para funciones completas, especialmente `seguridad.sh`, se recomienda correr como superusuario (`sudo`).

---

## ✅ Recomendaciones de uso

- Pensado para lugares con pocos recursos tecnológicos, como escuelas o pequeñas empresas.
- No se necesita experiencia avanzada en Linux.
- Leer los comentarios dentro de cada script para entender o extender sus funcionalidades.
- No sustituye herramientas profesionales, pero automatiza tareas frecuentes de forma sencilla y segura.

---

> 🧑‍💻 Desarrollado con fines educativos para facilitar la administración de sistemas Linux mediante Bash. "LigaDevPro"
