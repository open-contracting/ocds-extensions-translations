��          �               ,  
   -  
   8  
   C  
   N  /   Y  >   �  	   �     �     �  �   �  q   }  *   �       �   /  e  �  e   J  �  �  
   �  
   �  
   �  
   �  >   �  D   �     9     M     U  �   \  p   	  5   ~	     �	  �   �	  h  �
  n   �   2018-01-29 2018-05-08 2019-03-20 2020-04-24 Add `"minLength": 1` on required string fields. Add `minProperties`, `minItems` and/or `minLength` properties. Changelog Example Issues Make `PerformanceFailure.id` required to support revision tracking and [list merging](http://standard.open-contracting.org/latest/en/schema/merging/#lists) Make `PerformanceFailure.period` non-nullable (undo earlier change), given that it refers to the `Period` object. Make `PerformanceFailure.period` nullable. Performance failures Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. The [Framework for disclosure in Public Private Partnerships](http://pubdocs.worldbank.org/en/773541448296707678/Disclosure-in-PPPs-Framework.pdf) requires disclosure of instances of performance failures during the the life of a contract, along with the penalties or abatements defined, imposed and paid in relation to each category of performance failures. The following JSON snippet models the performance failures reported for a single period and category. Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-03-07 18:41-0300
PO-Revision-Date: 2019-03-14 18:30+0000
Last-Translator: Maria Esther Cervantes <mcervantes@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2018-01-29 2018-05-08 2019-03-20 2020-04-24 Agregar `"minLength": 1` en los campos de cadena obligatorios. Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Registro de cambios Ejemplo Issues Hacer `PerformanceFailure.id` obligatorio para soportar el seguimiento de revisiones y [fusión de listas](http://standard.open-contracting.org/latest/es/schema/merging/#lists) Hacer `PerformanceFailure.period` no nulo (deshacer el cambio anterior), dado que se refiere al objeto `Period`. Hacer que `PerformanceFailure.period` pueda ser nulo. Fallas de desempeño Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. El [Marco de divulgación en las Asociaciones Público-Privadas] (http://pubdocs.worldbank.org/en/773541448296707678/Disclosure-in-PPPs-Framework.pdf) requiere la divulgación de casos de incumplimiento durante la duración de un contrato, junto con las sanciones o reducciones definidas, impuestas y pagadas en relación con cada categoría de incumplimiento. El fragmento de JSON a continuación modela los incumplimientos reportados para un solo período y categoría. 