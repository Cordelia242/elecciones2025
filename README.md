# Elecciones 2025

Datos y recursos sobre las elecciones generales 2025 en Bolivia

## Gestión de Dependencias

Este proyecto utiliza [Poetry](https://python-poetry.org/) para gestionar las dependencias de Python. 

### Instalación Rápida

```bash
# Instalar Poetry (si aún no lo tienes)
curl -sSL https://install.python-poetry.org | python3 -

# Agregar Poetry al PATH
export PATH="$HOME/.local/bin:$PATH"

# Instalar las dependencias del proyecto
poetry install
```

### Uso Rápido

Puedes usar el script de conveniencia `run.sh`:

```bash
# Ver ayuda
./run.sh help

# Iniciar Jupyter Notebook
./run.sh notebook

# Actualizar datos electorales
./run.sh actualizar

# Preparar datos procesados
./run.sh preparar
```

O usar Poetry directamente:

```bash
# Ejecutar scripts
poetry run python resultados/datos/actualizar.py
poetry run python resultados/datos/preparar.py

# Iniciar Jupyter Notebook
poetry run jupyter notebook

# Activar el entorno virtual
poetry shell
```

Ver [POETRY.md](POETRY.md) para más información detallada sobre el uso de Poetry.

## Estructura del Proyecto

- `geo/` - Datos geográficos electorales (asientos, recintos, circunscripciones)
- `resultados/` - Datos y visualizaciones de resultados electorales
- `resultados_historicos/` - Datos históricos de elecciones generales (1979-2020)

## Vínculos

- https://es.wikipedia.org/wiki/Elecciones_generales_de_Bolivia_de_2025
