��          �               L  
   M  
   X  
   c  
   n  >   y     �  	   �    �     �     �     �            *   ,  �   W  ^       k  �  m  �    
   �  
   �  
   	  
   	  D   	     c	     |	  _  �	     �
     �
     �
  "        )  /   D  �   t  w   :    �  �  �   2018-05-08 2019-01-30 2019-03-20 2020-04-24 Add `minProperties`, `minItems` and/or `minLength` properties. Budget Breakdown Changelog Disclosing structured data on multi-source budgets allows users to understand how much of the funds for a project come from government or from a specific department, whilst structured data on multi-year budgets allows users to understand the expected spend profile of a contract. Examples Guidance Issues Multi-source budgets Multi-year budgets Remove obsolete `mergeStrategy` properties Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Set `"uniqueItems": true` on array fields, and add `"minLength": 1` on required string fields. This extension provides a way to describe the budget in greater detail, including multi-year budgets or budgets sourced from multiple organizations. In the case of PPPs, budgets may be sourced from the private sector or from multi-lateral development banks. Where `budget.budgetBreakdown` is used to express a multi-source budget but the organization details are not known for one or more parts of the budget, for example in a PPP where part of the budget will be provided by the successful private sector bidder, the `sourceParty.name` field should be used to provide a free text explanation of the source of the budget, e.g. "Private sector investment from successful bidder". Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-05-30 00:39-0400
PO-Revision-Date: 2019-03-14 18:32+0000
Last-Translator: James McKinney, 2024
Language: es
Language-Team: Spanish (https://app.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2018-05-08 2019-01-30 2019-03-20 2020-04-24 Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Desglose del presupuesto Registro de cambios La divulgación de datos estructurados de presupuestos de fuentes múltiples permite a los usuarios entender cuánto de los fondos para un proyecto provienen del gobierno o de un departamento específico, mientras que los datos estructurados sobre presupuestos multi-anuales permiten a los usuarios entender el perfil de gasto esperado de un contrato. Ejemplos Guía Issues Presupuestos de múltiples fuentes Presupuestos multi-anuales Eliminar la propiedad obsoleta `mergeStrategy`. Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Establecer `"uniqueItems ": true` en los campos matriz y agregar `"minLength": 1` en los campos de cadena obligatorios. Esta extensión permite describir el presupuesto con mayor detalle, incluidos los presupuestos plurianuales o los presupuestos procedentes de múltiples organizaciones. En el caso de las APP, los presupuestos pueden proceder del sector privado o de bancos de desarrollo multilaterales. Cuando se utiliza `budget.budgetBreakdown` para expresar un presupuesto de múltiples fuentes pero los detalles de la organización no se conocen para una o más partes del presupuesto, por ejemplo, en una APP donde el licitador del sector privado proporcionará parte del presupuesto , el campo `sourceParty.name` debe usarse para proporcionar una explicación de texto libre de la fuente del presupuesto, por ejemplo "Inversión del sector privado del licitador ganador". 