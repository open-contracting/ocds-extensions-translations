��          |               �      �      �   �   �   �   �  k   u  \   �  d   >    �  %   �  u   �  �   [  �       �     �  �   �  �   �  �   �	  y   &
  �   �
  P  4  ,   �  �   �  �   D   Issues Metrics Extension Metrics are structured like an [OLAP data cube](https://en.wikipedia.org/wiki/OLAP_cube) with each instance of `Metric` representing a single **observation**, categorized by a number of **dimensions**. Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. The `implementation` stage for actual performance information (e.g. actual demand, availability, KPIs etc.) The `planning` stage for forecasts for the contracting process (e.g. forecast demand levels) The `tender` stage for targets for the contracting process (e.g. target availability levels or KPIs) The metrics extension can also be used to report on the physical progress of a contract. The following JSON snippet shows how the metrics extension could be used to report on progress for the construction of a highway, both by percent completion and number of kilometres constructed: The metrics extension can be used at: The metrics extension provides a common building block for reporting structured performance information on contracts. Where the metrics extension is used to model targets for a contracting process, the `description` field can be used to start whether the target is a minimum or recommended target. Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-08-20 17:17-0400
PO-Revision-Date: 2019-03-14 18:26+0000
Last-Translator: James McKinney, 2019
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 Issues Extensión de Métricas Las métricas están estructuradas como un [cubo de datos OLAP](https://en.wikipedia.org/wiki/OLAP_cube) con cada instancia de `Metric` representando una sola **observación**, categorizada por un número de **dimensiones**. Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. La etapa  `implementation`  para la información de desempeño actual (por ejemplo: demanda actual, disponibilidad o indicadores claves de rendimiento) La etapa `planning` para predicciones sobre el proceso de contratación (ejemplo: predicciones de los niveles de demanda) La etapa `tender` para objetivos del proceso de contrataciones (por ejemplo: niveles de disponibilidad objetivo o indicadores clave de rendimiento) La extensión de métricas también puede ser utilizada para reportar el progreso físico de un contrato. El siguiente fragmento de JSON muestra como la extensión de métrica puede ser utilizada para reportar el progreso en la construcción de una carretera, tanto por porcentaje completado como por número de kilómetros construidos: La extensión de métricas se puede usar en: La extensión de métricas proporciona un bloque de construcción común para reportar información estructurada de rendimiento de los contratos. Cuando la extensión de métricas se utiliza para modelar objetivos para un proceso de contratación, el campo `description` puede utilizarse para iniciar si el objetivo es un objetivo mínimo o recomendado. 