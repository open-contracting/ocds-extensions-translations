��    !      $              ,  �   -  
   �     �  	            #     ,  P   =  G   �     �  $   �                  w   3  *   �  �   �  J   �  &  �  �   �  D   �  D   �  �   +	  �   �	  N   3
     �
  �  �
  d   -  `   �  Y   �  �   M  '   �  �  !  �   �     �     �     �  _  �     K     T  \   l  \   �     &  3   ,     `  "   g     �  �   �  7   7  �   o  M   5  T  �  �   �  O   �  O   �  �   0  �   �  b   L  	   �  �  �  k   �  m   �  f   m  �   �  &   �   2018-05-08 - Make `budgetBreakdown/id` required and non-nullable to support revision tracking and [list merging](http://standard.open-contracting.org/latest/en/schema/merging/#lists). Background Budget Breakdown Changelog Disclosing structured data on multi-source budgets allows users to understand how much of the funds for a project come from government or from a specific department, whilst structured data on multi-year budgets allows users to understand the expected spend profile of a contract. Examples Extension fields Finalize guidance on use of extended fields in the core `planning.budget` field. Finalize guidance where source entity is not known at time of budgeting Guidance In the core `planning.budget` block: Issues Multi-source budgets Multi-year budgets OCDS core includes a single `budget.amount` field to capture the total value of the budget for the contracting process. Providing more detailed budget information Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. See issue [#377](https://github.com/open-contracting/standard/issues/377). Some OCDS implementations require more detailed information on budgets to be disclosed, for example multi-year budgets or budgets sourced from multiple different government departments. In the case of PPPs, budgets may be sourced from the private sector or from multi-lateral development banks. The `planning` section of OCDS can be used to describe the background to a contracting process, which may include details of the budget from which funds are drawn. The following JSON snippet models a multi-year single source budget: The following JSON snippet models a single year multi-source budget: This extension adds a `budgetBreakdown` property to the `planning` section of OCDS. `budgetBreakdown` is an array of `budget` blocks. This extension also extends the `budget` block with the following additional properties for use in the `budgetBreakdown` section: This extension provides a way to describe multi-year and multi-source budgets. To do Where `budget.budgetBreakdown` is used to express a multi-source budget but the organization details are not known for one or more parts of the budget, for example in a PPP where part of the budget will be provided by the successful private sector bidder, the `sourceParty.name` field should be used to provide a free text explanation of the source of the budget, e.g. "Private sector investment from successful bidder". `budget.amount` should be used to capture the total value of the budget for the contracting process. `budget.period` - a period block, describing the period to which this part of the budget applies `budget.period` should be used to capture the total period over which the budget applies. `budget.sourceParty` - an organization reference, linking to the entry in the `parties` section describing the organization providing the funds for this part of the budget `budget.sourceParty` should be omitted. Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-01-09 11:10-0500
PO-Revision-Date: 2019-03-14 18:32+0000
Last-Translator: Yohanna Lisnichuk <ylisnichuk@idatosabiertos.org>, 2019
Language: es
Language-Team: Spanish (https://www.transifex.com/OpenDataServices/teams/95084/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 2018-05-08 - Hacer obligatorio y no nullable `budgetBreakdown/id`  para apoyar el seguimiento de revisión y [list merging](http://standard.open-contracting.org/latest/en/schema/merging/#lists). Antecedentes Desglose del presupuesto Registro de cambios La divulgación de datos estructurados de presupuestos de fuentes múltiples permite a los usuarios entender cuánto de los fondos para un proyecto provienen del gobierno o de un departamento específico, mientras que los datos estructurados sobre presupuestos multi-anuales permiten a los usuarios entender el perfil de gasto esperado de un contrato. Ejemplos Campos de la extensión Finaliza la guía sobre el uso de campos extendidos en el campo principal `planning.budget`. Finaliza la guía cuando la entidad fuente no se conoce en el momento de la presupuestación Guía En la parte principal del bloque `planning.budget`: Issues Presupuestos de múltiples fuentes Presupuestos multi-anuales La estructura principal OCDS incluye un solo campo `budget.amount` para capturar el monto total del presupuesto para el proceso de contratación. Proporcionar información presupuestaria más detallada Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Ver el issue [#377](https://github.com/open-contracting/standard/issues/377). Algunas implementaciones de OCDS requieren información más detallada sobre los presupuestos divulgados, por ejemplo presupuestos plurianuales o presupuestos provenientes de varios departamentos gubernamentales diferentes. En el caso de las APP, los presupuestos pueden provenir del sector privado o de bancos multilaterales de desarrollo. La sección `planning` del OCDS puede usarse para describir los antecedentes de un proceso de contratación, que puede incluir detalles del presupuesto del cual se extraen los fondos. El siguiente fragmento JSON modela un presupuesto multi-anual de fuente única: El siguiente fragmento JSON modela un presupuesto multi-fuente de un solo año: Esta extensión agrega una propiedad `budgetBreakdown` a la sección `planning` del OCDS. `BudgetBreakdown` es una lista de bloques `budget`. Esta extensión también extiende el bloque `budget` con las siguientes propiedades adicionales para su uso en la sección `budgetBreakdown`. Esta extensión proporciona una manera de describir los presupuestos multi-anuales y multi-fuente. Por hacer Cuando se utiliza `budget.budgetBreakdown` para expresar un presupuesto de múltiples fuentes pero los detalles de la organización no se conocen para una o más partes del presupuesto, por ejemplo, en una APP donde el licitador del sector privado proporcionará parte del presupuesto , el campo `sourceParty.name` debe usarse para proporcionar una explicación de texto libre de la fuente del presupuesto, por ejemplo "Inversión del sector privado del licitador ganador". `budget.amount` se debe usar para capturar el valor total del presupuesto para el proceso de contratación. `budget.period` - un bloque de período, que describe el período al que se aplica esta parte del presupuesto `budget.period` debe utilizarse para capturar el período total sobre el que se aplica el presupuesto. `budget.sourceParty` - una referencia a la organización, que se vincula a la entrada en la sección  `parties` que describe la organización que proporciona los fondos para esta parte del presupuesto `budget.sourceParty`  debe de omitirse 