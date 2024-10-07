# Proyecto de Optimización de Inventarios para AMC-Drinks

## Caso de Negocio
AMC-Drinks, una distribuidora de tamaño mediano que maneja una amplia gama de bebidas alcohólicas, enfrenta dificultades en la gestión de inventarios. El problema principal incluye falta de stock en algunos productos, exceso en otros y altos costos de almacenamiento. Este proyecto busca optimizar los niveles de inventario, reducir costos y mejorar la disponibilidad de productos.

## Fuentes de Datos
Trabajaremos con datasets detallados que incluyen transacciones de inventario (compras, ventas, ajustes), datos históricos de demanda, tiempos de entrega de proveedores y costos asociados.

Fuente de datos: [Kaggle - Inventory Analysis Case Study](https://www.kaggle.com/datasets/bhanupratapbiswas/inventory-analysis-case-study)

### Descripción de los Datos
Los datos se encuentran en formato CSV y contienen información sobre ventas históricas, inventario y costos relacionados hasta finales de 2016.

## Plan de Análisis
El análisis se realizará a través de:
- Previsión de la demanda futura con datos históricos.
- Clasificación ABC de productos para priorizar inventarios.
- Cálculo de la Cantidad Económica de Pedido (EOQ) para minimizar costos.
- Análisis de puntos de reorden y tiempos de entrega.
- Evaluación de costos de almacenamiento.
- Recomendaciones para mejorar el proceso de aprovisionamiento.

## Tareas y Tecnologías
El proyecto se desarrollará en las siguientes fases utilizando tecnologías como Python, Power BI y SQL:

### Limpieza y Preparación de Datos
- Validación y limpieza de datos para consistencia y calidad.
- Creación y almacenamiento en una base de datos SQL.

### Análisis Descriptivo y Predictivo
- Análisis ABC para la priorización de productos.
- Modelado predictivo para estimar demanda futura.
- Cálculo de EOQ y puntos de reorden.

### Visualización y Reporte
- Uso de Power BI para crear dashboards interactivos que permitan evaluar la disponibilidad de inventario, costos, y optimizar procesos.

## Sprints del Proyecto

### Sprint 1
- Recopilación y validación de datos.
- Preparación del entorno y creación de base de datos en SQL.
- Creación de un flujo ETL para automatizar la carga de datos.
- Documentación en el archivo README.

**Entregables:**
- Base de datos funcional.
- README con detalles del proyecto.

### Sprint 2
- Creación del archivo Power BI (.pbix).
- Limpieza y transformación de datos, y elaboración de un diccionario de datos.
- Análisis descriptivo y predictivo.
- Creación de medidas y visualizaciones interactivas en Power BI.

**Entregables:**
- Dashboard interactivo en Power BI.
- Documentación del análisis y conclusiones.

## Objetivos
El objetivo principal es optimizar la gestión de inventarios, minimizando la falta y exceso de stock, mejorando los puntos de reorden y eficientando el aprovisionamiento para reducir costos y aumentar la satisfacción del cliente.

## Resultados Esperados & Impacto
Se espera lograr niveles óptimos de inventario, identificar productos críticos mediante un análisis ABC y mejorar los tiempos de reaprovisionamiento. Esto impactará en la reducción de costos y la mejora en la disponibilidad de productos, aumentando la satisfacción del cliente y la rentabilidad de la distribuidora.

## Herramientas Utilizadas
- **Python**: Numpy, Pandas, Matplotlib para análisis de datos.
- **Power BI**: Para visualización de resultados.
- **SQL**: Para almacenamiento y procesamiento de datos.
- **GitHub**: Control de versiones y documentación.

## Contribución
Si deseas contribuir a este proyecto, asegúrate de seguir la estructura de carpetas definida y realizar un pull request con los cambios.

## Contacto
Para más información, puedes contactarnos a través del repositorio.

