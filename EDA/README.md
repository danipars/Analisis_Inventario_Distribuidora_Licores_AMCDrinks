# Exploratory Data Analysis (EDA) & Data Cleaning for Inventory Analysis

## Descripción

Este folder contiene el análisis exploratorio de datos (EDA) y los scripts de limpieza de datos necesarios para realizar el análisis de inventario de AMC-Drinks. El objetivo principal es entender mejor los patrones de los datos de inventario y ventas, así como garantizar que la información esté correctamente estructurada y limpia para análisis posteriores.

## Objetivos del EDA

El **Exploratory Data Analysis (EDA)** busca:
- Identificar patrones de ventas e inventario.
- Examinar distribuciones de variables clave como demanda, precios de compra y cantidades en inventario.
- Detectar valores atípicos (outliers) y tendencias estacionales.
- Realizar visualizaciones para comprender la dinámica del inventario y la demanda.
- Examinar relaciones entre variables importantes como cantidad vendida, nivel de inventario y tiempos de entrega.

## Objetivos de la Limpieza de Datos

El proceso de **Limpieza de Datos** se enfoca en:
- Eliminar duplicados y datos inconsistentes.
- Manejar valores faltantes de forma adecuada.
- Corregir errores tipográficos o formatos incorrectos.
- Convertir datos a tipos apropiados para su análisis (por ejemplo, convertir columnas de fechas).
- Crear nuevas columnas o variables relevantes (por ejemplo, calcular el inventario final, si es necesario).

## Estructura del Directorio

Dentro de este folder, encontrarás los siguientes archivos:

1. **EDA.ipynb**: Jupyter notebook que contiene todo el análisis exploratorio de datos, incluyendo gráficos y resúmenes estadísticos.
2. **data_cleaning.py**: Script de Python que realiza la limpieza de datos, estandarizando y preparando los datos para análisis posteriores.
3. **inventory_analysis.csv**: Dataset limpio y preparado que se usará en el análisis de inventario y visualización en Power BI.
4. **graphs/**: Carpeta que contiene visualizaciones clave generadas durante el EDA (gráficos de barras, líneas de tiempo, distribuciones, etc.).

## Tecnologías Utilizadas

El análisis fue realizado utilizando las siguientes bibliotecas de Python:
- **Pandas**: Para la manipulación y análisis de datos tabulares.
- **Numpy**: Para cálculos numéricos eficientes.
- **Matplotlib** y **Seaborn**: Para la creación de gráficos y visualizaciones.
- **Scikit-learn**: Para el análisis preliminar de patrones de demanda (en caso de implementarse algoritmos de Machine Learning para pronósticos).

## Cómo Usar

1. Clona el repositorio en tu entorno local:
   ```bash
   git clone https://github.com/danipars/Analisis_Inventario_Distribuidora_Licores_AMCDrinks.git
   ```
2. Navega a la carpeta `EDA`:
   ```bash
   cd Analisis_Inventario_Distribuidora_Licores_AMCDrinks/EDA
   ```
3. Para ejecutar el Jupyter notebook del EDA:
   ```bash
   jupyter notebook EDA.ipynb
   ```
4. Para ejecutar el script de limpieza de datos:
   ```bash
   python data_cleaning.py
   ```

## Resultados del EDA

Los resultados del análisis exploratorio proporcionarán información clave sobre los siguientes aspectos:

- **Patrones de Venta**: Identificación de productos con alta o baja demanda, análisis estacional o tendencias recurrentes.
- **Análisis ABC**: Clasificación de productos en categorías A, B y C para priorizar aquellos que son críticos para la gestión de inventarios.
- **Tendencias de Inventario**: Detección de cambios en los niveles de inventario a lo largo del tiempo, ayudando a predecir posibles stockouts o excesos de inventario.
- **Visualizaciones Clave**: Gráficos que muestran la evolución de las ventas, la demanda por producto, y la comparación entre inventarios iniciales y finales.

## Próximos Pasos

Después de completar el EDA y la limpieza de datos, los datos limpios estarán listos para realizar análisis más profundos como la optimización del inventario utilizando las siguientes técnicas:

1. **EOQ (Economic Order Quantity)**: Cálculo de la cantidad óptima de pedido para minimizar costos de almacenamiento y de pedido.
2. **ROP (Reorder Point)**: Identificación del punto de reorden para evitar la falta de stock.
3. **Análisis Predictivo**: Pronóstico de la demanda futura basado en patrones históricos utilizando modelos de Machine Learning.
4. **Visualización en Power BI**: Creación de dashboards interactivos para la visualización de patrones de inventario y ventas.

## Colaboración en Equipo

Somos un equipo de 5 analistas de datos trabajando en conjunto para este proyecto. Para facilitar la colaboración:

1. **Uso de GitHub**:
   - Cada miembro puede trabajar en diferentes partes del análisis y crear **pull requests** para revisar cambios.
   - Las ramas deben nombrarse de acuerdo con la funcionalidad que se está desarrollando (por ejemplo, `feature/abc-analysis`, `fix/data-cleaning`).
   - Revisiones de código serán realizadas antes de fusionar a la rama principal.

2. **Reuniones de Sincronización**:
   - Realizar reuniones regulares para discutir avances y coordinar el trabajo pendiente.
   - Las tareas se asignarán en GitHub Issues para facilitar el seguimiento.

3. **Estándares de Código**:
   - Mantener un formato y estilo de código consistente (utilizando herramientas como `flake8` o `black` para asegurar una buena calidad de código).
   - Documentar las funciones y scripts usando docstrings.

## Contribución

Si deseas contribuir a este proyecto, por favor realiza un **fork** del repositorio, implementa tus cambios y envía un **pull request**. Asegúrate de seguir las pautas de estilo y documentación para mantener la coherencia del proyecto.

## Contacto

Para cualquier pregunta sobre este proyecto o contribución, no dudes en contactarnos en:  
[daniel.parra.sanabria@gmail.com] (Asegúrate de cambiar este correo por el real).
```