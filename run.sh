#!/bin/bash

# Script de conveniencia para ejecutar comandos comunes del proyecto
# usando el entorno virtual de Poetry

# Asegurar que Poetry esté en el PATH
export PATH="$HOME/.local/bin:$PATH"

# Función para mostrar ayuda
show_help() {
    cat << EOF
Uso: ./run.sh [comando]

Comandos disponibles:
    actualizar      - Actualizar los datos electorales desde la fuente
    preparar        - Preparar los datos procesados (recintos y resultados)
    notebook        - Iniciar Jupyter Notebook
    jupyter         - Alias para notebook
    shell           - Activar el shell de Poetry con todas las dependencias
    install         - Instalar/actualizar todas las dependencias
    add [paquete]   - Agregar una nueva dependencia
    show            - Mostrar todas las dependencias instaladas
    update          - Actualizar todas las dependencias
    help            - Mostrar este mensaje de ayuda

Ejemplos:
    ./run.sh actualizar
    ./run.sh notebook
    ./run.sh add numpy
    ./run.sh shell

EOF
}

# Verificar que Poetry esté instalado
if ! command -v poetry &> /dev/null; then
    echo "Error: Poetry no está instalado."
    echo "Instálalo con: curl -sSL https://install.python-poetry.org | python3 -"
    exit 1
fi

# Procesar comando
case "$1" in
    actualizar)
        echo "Actualizando datos electorales..."
        poetry run python resultados/datos/actualizar.py
        ;;
    preparar)
        echo "Preparando datos procesados..."
        poetry run python resultados/datos/preparar.py
        ;;
    notebook|jupyter)
        echo "Iniciando Jupyter Notebook..."
        poetry run jupyter notebook
        ;;
    shell)
        echo "Activando shell de Poetry..."
        poetry shell
        ;;
    install)
        echo "Instalando dependencias..."
        poetry install
        ;;
    add)
        if [ -z "$2" ]; then
            echo "Error: Especifica el nombre del paquete a agregar."
            echo "Ejemplo: ./run.sh add numpy"
            exit 1
        fi
        echo "Agregando paquete: $2"
        poetry add "$2"
        ;;
    show)
        poetry show --tree
        ;;
    update)
        echo "Actualizando dependencias..."
        poetry update
        ;;
    help|--help|-h|"")
        show_help
        ;;
    *)
        echo "Error: Comando desconocido '$1'"
        echo ""
        show_help
        exit 1
        ;;
esac
