��          �               �  
   �  
   �  
   �  
   �  >   �  J     	   S     ]  	   e     o  A   v  '   �  7   �       �   *     �  �     ^   �  v     d   �  %   �  u     �   �  �  I  
   I	  
   T	  
   _	  
   j	  D   u	  L   �	     
     
     #
     0
  E   7
  2   }
  3   �
     �
  �   �
     �  �   �  w   �  �   ,  �   �  ,   J  �   w  �   	   2018-05-01 2018-05-08 2019-03-20 2020-04-24 Add `minProperties`, `minItems` and/or `minLength` properties. Add title and description to `Observation.period` and `Observation.value`. Changelog Example Forecasts Issues Make `Observation.dimensions` non-nullable (undo earlier change). Make `Observation.dimensions` nullable. Make `Observation.unit` non-nullable, like `Item.unit`. Metrics Extension Metrics are structured like an [OLAP data cube](https://en.wikipedia.org/wiki/OLAP_cube) with each instance of `Metric` representing a single **observation**, categorized by a number of **dimensions**. Physical progress Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Set `"uniqueItems": true` on array fields, and add `"minLength": 1` on required string fields. The `awards` and `contracts` stages for targets agreed with the successful supplier (e.g. availability levels or KPIs) The `tender` stage for targets for the contracting process (e.g. target availability levels or KPIs) The metrics extension can be used at: The metrics extension provides a common building block for reporting structured performance information on contracts. Where the metrics extension is used to model targets for a contracting process, the `description` field can be used to indicate whether the target is a minimum or recommended target. Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-05-30 00:39-0400
PO-Revision-Date: 2019-03-14 18:26+0000
Last-Translator: Maria Esther Cervantes <mcervantes@cds.com.py>, 2022
Language: es
Language-Team: Spanish (https://app.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2018-05-01 2018-05-08 2019-03-20 2020-04-24 Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Agregar título y descripción a `Observation.period` y `Observation.value`. Registro de cambios Ejemplo Pronósticos Issues Hacer `Observation.dimensions` no nulo (deshacer el cambio anterior). Hacer que `Observation.dimensions` pueda ser nulo. Hacer `Observation.unit` no nulo, como `Item.unit`. Extensión de Métricas Las métricas están estructuradas como un [cubo de datos OLAP](https://en.wikipedia.org/wiki/OLAP_cube) con cada instancia de `Metric` representando una sola **observación**, categorizada por un número de **dimensiones**. Progreso físico Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Establecer `"uniqueItems ": true` en los campos matriz y agregar `"minLength": 1` en los campos de cadena obligatorios. Las etapas `awards` y `contracts` para los objetivos acordados con el proveedor adjudicado (por ejemplo, niveles de disponibilidad o KPI) La etapa `tender` para objetivos del proceso de contrataciones (por ejemplo: niveles de disponibilidad objetivo o indicadores clave de rendimiento) La extensión de métricas se puede usar en: La extensión de métricas proporciona un bloque de construcción común para reportar información estructurada de rendimiento de los contratos. Dónde se usa la extensión métricas para modelar objetivos para un proceso de contratación, el campo `description` puede usarse para indicar si el objetivo es un mínimo o un objetivo recomendando.  