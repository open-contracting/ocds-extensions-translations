��          �               �  
   �  
   �  
   �  
   �  >   �       	       #     ;     D  �   M     �  �   �     �     �  �   �  *     �   �  ^   _  D   �  D       H  �  J  �  �	  
   �  
   �  
   �  
   �  D   �     A     Z  _  n     �     �  �   �     z  �   �  "   9     \  �   w  .   a  �   �  w   V  O   �  O       n  �  �   2018-05-08 2019-01-30 2019-03-20 2020-04-24 Add `minProperties`, `minItems` and/or `minLength` properties. Budget Breakdown Changelog Disclosing structured data on multi-source budgets allows users to understand how much of the funds for a project come from government or from a specific department, whilst structured data on multi-year budgets allows users to understand the expected spend profile of a contract. Examples Guidance In the core `planning.budget` block, `budget.amount` should be used to capture the total value of the budget for the contracting process. Issues Make `BudgetBreakdown.id` required and non-nullable to support revision tracking and [list merging](http://standard.open-contracting.org/latest/en/schema/merging/#lists) Multi-source budgets Multi-year budgets OCDS' `planning.budget` object can be used to describe the budget from which funds are drawn. It includes a single `budget.amount` field to capture the total value of the budget for the contracting process. Remove obsolete `mergeStrategy` properties Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Set `"uniqueItems": true` on array fields, and add `"minLength": 1` on required string fields. The following JSON snippet models a multi-year single source budget: The following JSON snippet models a single year multi-source budget: This extension provides a way to describe the budget in greater detail, including multi-year budgets or budgets sourced from multiple organizations. In the case of PPPs, budgets may be sourced from the private sector or from multi-lateral development banks. Where `budget.budgetBreakdown` is used to express a multi-source budget but the organization details are not known for one or more parts of the budget, for example in a PPP where part of the budget will be provided by the successful private sector bidder, the `sourceParty.name` field should be used to provide a free text explanation of the source of the budget, e.g. "Private sector investment from successful bidder". Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-07-31 13:34-0400
PO-Revision-Date: 2019-03-14 18:32+0000
Last-Translator: Dulce Jazmín Areco Maggereger <dulceareco@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 2018-05-08 2019-01-30 2019-03-20 2020-04-24 Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Desglose del presupuesto Registro de cambios La divulgación de datos estructurados de presupuestos de fuentes múltiples permite a los usuarios entender cuánto de los fondos para un proyecto provienen del gobierno o de un departamento específico, mientras que los datos estructurados sobre presupuestos multi-anuales permiten a los usuarios entender el perfil de gasto esperado de un contrato. Ejemplos Guía En el bloque principal de `planning.budget`, se debe utilizar` budget.amount` para capturar el valor total del presupuesto para el proceso de contratación. Issues Hacer obligatorio y no nulo `BudgetBreakdown.id` para permitir el seguimiento de revisiones y [fusión de listas](http://standard.open-contracting.org/latest/es/schema/merging/#lists) Presupuestos de múltiples fuentes Presupuestos multi-anuales El objeto `planning.budget` del OCDS puede utilizarse para describir el presupuesto del que se extraen los fondos. Incluye un único campo `budget.amount` para capturar el valor total del presupuesto para el proceso de contratación. Remover la propiedad obsoleta `mergeStrategy`. Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Establecer `"uniqueItems ": true` en los campos matriz y agregar `"minLength": 1` en los campos de cadena obligatorios. El siguiente fragmento JSON modela un presupuesto multi-anual de fuente única: El siguiente fragmento JSON modela un presupuesto multi-fuente de un solo año: Esta extensión permite describir el presupuesto con mayor detalle, incluidos los presupuestos plurianuales o los presupuestos procedentes de múltiples organizaciones. En el caso de las APP, los presupuestos pueden proceder del sector privado o de bancos de desarrollo multilaterales. Cuando se utiliza `budget.budgetBreakdown` para expresar un presupuesto de múltiples fuentes pero los detalles de la organización no se conocen para una o más partes del presupuesto, por ejemplo, en una APP donde el licitador del sector privado proporcionará parte del presupuesto , el campo `sourceParty.name` debe usarse para proporcionar una explicación de texto libre de la fuente del presupuesto, por ejemplo "Inversión del sector privado del licitador ganador". 