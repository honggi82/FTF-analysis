# Análisis de valor F tiempo-frecuencia (FTF)
![F-value time-frequency (FTF) analysis](FTF_analysis.JPG)

<div align="center">
  <a href="README.md">English</a> |
  <a href="README.de.md">Deutsch</a> |
  <a href="README.es.md"><strong>Español</strong></a> |
  <a href="README.fr.md">français</a> |
  <a href="README.ja.md">日本語</a> |
  <a href="README.ko.md">한국어</a> |
  <a href="README.pt.md">Português</a> |
  <a href="README.ru.md">Русский</a> |
  <a href="README.zh.md">中文</a>
</div>

Este repositorio proporciona el código MATLAB para el método de análisis de valor F tiempo-frecuencia (FTF) propuesto en el artículo "Análisis de valor F tiempo-frecuencia (FTF): análisis de varianza entre dentro".

## Algoritmo: análisis de tiempo-frecuencia (FTF) de valor F

El análisis FTF es una técnica novedosa que visualiza la significación estadística en un mapa de tiempo-frecuencia aplicando el valor F de un análisis de varianza (ANOVA). Está diseñado para identificar y cuantificar diferencias entre múltiples condiciones en datos de series temporales, como la electroencefalografía (EEG).

### Características clave y metodología
* **Visualización estadística**: a diferencia de los gráficos de tiempo-frecuencia tradicionales que solo muestran potencia o amplitud, el gráfico FTF visualiza directamente el valor F en cada punto de tiempo-frecuencia. Esto permite a los investigadores identificar inmediatamente dónde residen las diferencias más significativas entre las condiciones experimentales.
* **Análisis de varianza**: El núcleo del método es calcular la relación entre la varianza entre condiciones y la varianza dentro de las condiciones. Un valor F alto indica que la variación entre las condiciones es significativamente mayor que la variación dentro de cada condición, lo que sugiere un efecto verdadero.
* **Interpretación intuitiva**: el mapa FTF resultante resalta los puntos de tiempo específicos y las bandas de frecuencia donde las señales divergen significativamente según las condiciones. Esto proporciona una herramienta intuitiva y potente para analizar señales neuronales complejas, como las de tareas de imágenes motoras, sin la necesidad de realizar pruebas estadísticas post hoc en los propios mapas de potencia.

El código MATLAB de este repositorio incluye las funciones y scripts de ejemplo necesarios para realizar el análisis FTF en sus propios datos de series temporales.

## Citación

Si utiliza este código para su investigación, cite el siguiente artículo:

* Yeom, HG (2021). Análisis de valor F tiempo-frecuencia (FTF): análisis de varianza entre-dentro. *Fronteras de la neurociencia*, 15, 729449.
    (https://doi.org/10.3389/fnins.2021.729449)

## Uso

Para obtener instrucciones detalladas, consulte los scripts y la documentación de MATLAB en este repositorio.
https://doi.org/10.3389/fnins.2021.729449
