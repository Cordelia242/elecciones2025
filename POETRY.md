# Gestión de Dependencias con Poetry

Este proyecto utiliza [Poetry](https://python-poetry.org/) para gestionar las dependencias de Python.

## Instalación de Poetry

Si aún no tienes Poetry instalado, ejecuta:

```bash
curl -sSL https://install.python-poetry.org | python3 -
```

Luego agrega Poetry a tu PATH (añade esto a tu `~/.bashrc` o `~/.zshrc`):

```bash
export PATH="$HOME/.local/bin:$PATH"
```

## Uso Básico

### Instalar dependencias

Para instalar todas las dependencias del proyecto:

```bash
poetry install
```

### Activar el entorno virtual

Poetry crea automáticamente un entorno virtual. Para activarlo:

```bash
poetry shell
```

O ejecuta comandos directamente con:

```bash
poetry run python script.py
```

### Ejecutar los scripts del proyecto

```bash
poetry run python resultados/datos/actualizar.py
poetry run python resultados/datos/preparar.py
```

### Trabajar con Jupyter Notebooks

Para ejecutar Jupyter dentro del entorno de Poetry:

```bash
poetry run jupyter notebook
```

O si activaste el shell de Poetry:

```bash
poetry shell
jupyter notebook
```

### Agregar nuevas dependencias

Para agregar una nueva dependencia al proyecto:

```bash
poetry add nombre-paquete
```

Para agregar una dependencia de desarrollo:

```bash
poetry add --group dev nombre-paquete
```

### Actualizar dependencias

Para actualizar todas las dependencias a sus últimas versiones compatibles:

```bash
poetry update
```

Para actualizar una dependencia específica:

```bash
poetry update nombre-paquete
```

### Ver dependencias instaladas

```bash
poetry show
```

Para ver el árbol de dependencias:

```bash
poetry show --tree
```

### Remover dependencias

```bash
poetry remove nombre-paquete
```

## Dependencias del Proyecto

### Dependencias principales

- **pandas**: Análisis y manipulación de datos
- **geopandas**: Operaciones con datos geoespaciales
- **requests**: Cliente HTTP para descargar datos
- **matplotlib**: Visualización de datos
- **tqdm**: Barras de progreso
- **fiona, shapely, pyproj, rtree**: Dependencias geoespaciales

### Dependencias de desarrollo

- **jupyter**: Ambiente Jupyter completo
- **ipython**: Shell interactivo mejorado
- **notebook**: Servidor de Jupyter Notebook

## Solución de Problemas

### El entorno virtual no se activa correctamente

Reinicia tu terminal o ejecuta:

```bash
source ~/.bashrc  # o ~/.zshrc según tu shell
```

### Conflictos de dependencias

Si encuentras conflictos, intenta:

```bash
poetry lock --no-update
poetry install
```

### Reinstalar todas las dependencias

```bash
rm -rf $(poetry env info --path)
poetry install
```

## Más Información

Consulta la [documentación oficial de Poetry](https://python-poetry.org/docs/) para más detalles.
