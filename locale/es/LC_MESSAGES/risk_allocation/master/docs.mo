��          �               |  
   }  
   �  
   �  
   �  /   �  >   �  Z     	   s     }     �  �   �       �   #  )   �       �     �   �  _   R  �   �  �   =    �  �  �  
   �	  
   �	  
   �	  
   �	  >   �	  D   )
  m   n
     �
     �
     �
  �   �
     �  �   �  3   x     �  �   �  �   h  g   #  �   �  �   (  T  �   2018-05-08 2019-03-20 2020-04-24 2020-06-04 Add `"minLength": 1` on required string fields. Add `minProperties`, `minItems` and/or `minLength` properties. Additional free text information on the risk can be provided using the `Risk.notes` field. Changelog Example Issues Make `Risk.id` required to support revision tracking and [list merging](http://standard.open-contracting.org/latest/en/schema/merging/#lists) Overview Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Review normative and non-normative words. Risk allocation Risk allocations can be represented using an array of `Risk` objects in the `riskAllocation` field of the `contracts` section of an OCDS release. The [framework for disclosure in PPPs](http://pubdocs.worldbank.org/en/773541448296707678/Disclosure-in-PPPs-Framework.pdf) calls for individual risk allocation information. The description of the risk should be provided as free text using the `Risk.description` field. The party retaining each risk should be represented using the `Risk.allocation` field using values from the `riskAllocation.csv` codelist. The risk allocation extension is used to provide structured data on the risk allocations defined in a public private partnership's contract. The risk category can be represented using the `Risk.category` field using values from the `riskCategory.csv` codelist based on the APMG PPP Certification Program. The codelist's Category column indicates the stage or aspect of the contracting process to which the risk category applies. Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-05 17:31-0500
PO-Revision-Date: 2019-03-14 18:32+0000
Last-Translator: Natalia Valdez <nataliavaldez@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 2018-05-08 2019-03-20 2020-04-24 2020-06-04 Agregar `"minLength": 1` en los campos de cadena obligatorios. Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Se puede proporcionar información adicional de texto libre sobre el riesgo utilizando el campo `Risk.notes`. Registro de cambios Ejemplo Issues Hacer que `Risk.id` sea obligatorio para soportar el seguimiento de revisiones y [fusión de listas](http://standard.open-contracting.org/latest/es/schema/merging/#lists) Resumen Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Revisar de las palabras normativas y no normativas. Asignación de riesgos Las asignaciones de riesgo pueden representarse mediante una matriz de objetos `Risk` en el campo `riskAllocation` de la sección `contracts` de un comunicado OCDS. El [marco para la divulgación de APP](http://pubdocs.worldbank.org/en/773541448296707678/Disclosure-in-PPPs-Framework.pdf) exige información individual sobre la asignación de riesgos. La descripción del riesgo debe proporcionarse como texto libre utilizando el campo `Risk.description`. La parte que retiene cada riesgo debe representarse mediante el campo `Risk.allocation` utilizando los valores de la lista de códigos `riskAllocation.csv`. La extensión de asignación de riesgos se usa para dar datos estructurados sobre la asignación de riesgos que se define en un contrato de una asociación público privada. La categoría de riesgo puede representarse mediante el campo `Risk.category` utilizando los valores de la lista de códigos `riskCategory.csv` basada en el Programa de Certificación APMG PPP. La columna "Categoría" de la lista de códigos indica la fase o el aspecto del proceso de contratación al que se aplica la categoría de riesgo. 