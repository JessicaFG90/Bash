# 🐚 Scripts Bash — Ejercicios de clase

Colección de scripts de **Bash** desarrollados durante las clases de **Fundamentos de Programación** (1º DAM · Ucademy · Curso 2025/2026).

---

## 📋 Descripción

Scripts de consola escritos en Bash para Linux que cubren conceptos fundamentales del scripting: variables, condicionales, bucles, funciones, menús interactivos, generación de números aleatorios y comandos del sistema.

---

## 📂 Scripts incluidos

### 🎮 Juegos y aleatoriedad

| Script | Descripción |
|---|---|
| `dado.sh` | Simula la tirada de un dado de 6 caras usando `$RANDOM` |
| `lanzamiento_moneda.sh` | Lanza una moneda al aire: cara o cruz con probabilidad 50/50 |
| `lanzamiento_moneda_trucada.sh` | Moneda con probabilidad ajustable: 70% cara / 30% cruz |
| `loteria01.sh` | Lotería de Navidad con número ganador fijo definido en el código |
| `loteria02.sh` | Lotería de Navidad con número ganador aleatorio en cada ejecución |
| `piedra_papel_tijera.sh` | Juego completo contra la máquina con contador de victorias, derrotas y empates |

### 🛠️ Utilidades

| Script | Descripción |
|---|---|
| `cajero_automatico.sh` | Cajero interactivo con menú: consultar saldo, ingresar y retirar dinero con validaciones |
| `generador_password.sh` | Generador de contraseñas personalizables: longitud, mayúsculas, números y caracteres especiales. Guarda las contraseñas en `password.txt` |
| `menu_bucle.sh` | Menú de sistema con opciones para ver la fecha, usuarios activos y espacio en disco |
| `ciber_analisis.sh` | Herramienta de análisis básico de red: configuración, ping, rutas, DNS, conexiones activas y dirección MAC |

---

## 💡 Conceptos de Bash aplicados

- Variables y tipos de datos (`$variable`, `$((expresión))`)
- Entrada de usuario con `read` y `read -p`
- Condicionales `if / elif / else` con operadores `-eq`, `-le`, `-ge`, `-gt`, `-lt`
- Expresiones regulares con `=~` para validar entradas
- Bucles `while true` con `break` y `continue`
- Menús interactivos con `case / esac`
- Funciones definidas por el usuario
- Generación de números aleatorios con `$RANDOM`
- Manipulación de strings (`${variable,,}` para minúsculas, `${#variable}` para longitud)
- Redirección de salida a fichero con `>>` (append) y `>` (sobreescribir)
- Comandos del sistema: `date`, `who`, `df`, `ip`, `ping`, `ss`, `nslookup`
- `exit 0` (salida correcta) y `exit 1` (salida por error)
- `clear` para limpiar la terminal y `sleep` para pausas

---

## 🛠️ Tecnologías

![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

---

## ▶️ Cómo ejecutar los scripts

Necesitas un sistema **Linux** o **WSL** (Windows Subsystem for Linux) con Bash instalado.

```bash
# 1. Dale permisos de ejecución al script
chmod +x nombre_script.sh

# 2. Ejecútalo
./nombre_script.sh
```

> ⚠️ El script `ciber_analisis.sh` usa comandos de red (`ip`, `ss`, `nslookup`) que pueden requerir privilegios de administrador o tener el paquete `net-tools` instalado.

---

## 📁 Estructura del proyecto

```
📄 cajero_automatico.sh
📄 ciber_analisis.sh
📄 dado.sh
📄 generador_password.sh
📄 lanzamiento_moneda.sh
📄 lanzamiento_moneda_trucada.sh
📄 loteria01.sh
📄 loteria02.sh
📄 menu_bucle.sh
📄 piedra_papel_tijera.sh
```

---

## 🎓 Contexto académico

> Ejercicios de clase de **Fundamentos de Programación** · 1º DAM · Ucademy · 2025/2026
