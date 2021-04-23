��          �               ,  
   -  	   8     B     J     [  �   b  e    e   }  {   �  p   _  c   �  z   4  �   �  �   d  �     y   �  �       �	     �	     �	     �	     
  �   
  h  �
  n   G  �   �  s   8  n   �  �     �   �  �     �   U  w   �   Background Changelog Example Extension Fields Issues Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. The [Framework for disclosure in Public Private Partnerships](http://pubdocs.worldbank.org/en/773541448296707678/Disclosure-in-PPPs-Framework.pdf) requires disclosure of instances of performance failures during the the life of a contract, along with the penalties or abatements defined, imposed and paid in relation to each category of performance failures. The following JSON snippet models the performance failures reported for a single period and category. The new property is an array of `PerformanceFailure` objects. The `PerformanceFailure` object has the following properties: This extension introduces the `performanceFailures` property to the `implementation` section of an OCDS release. `category` - a free text field used to describe the category of performance failures being reported `events` - a number field used to state the number of performance failure events in the period and category being reported `penaltyContracted` - a free text field used to describe the penalty or abatement defined in the contract for the number, category and period of performance failures being reported `penaltyImposed` - a free text field used to describe the penalty or abatement actually imposed for the number, category and period of performance failures being reported `penaltyPaid` - a boolean field indicating whether the penalty imposed has been paid. A value of `true` indicates that the penalty has been paid `period` - an OCDS `period` object defining the reporting period to applicable to the performance failures being reported Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-05 17:31-0500
PO-Revision-Date: 2019-03-14 18:30+0000
Last-Translator: James McKinney, 2019
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 Antecedentes Registro de cambios Ejemplo Campos de Extensión Issues Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. El [Marco de divulgación en las Asociaciones Público-Privadas] (http://pubdocs.worldbank.org/en/773541448296707678/Disclosure-in-PPPs-Framework.pdf) requiere la divulgación de casos de incumplimiento durante la duración de un contrato, junto con las sanciones o reducciones definidas, impuestas y pagadas en relación con cada categoría de incumplimiento. El fragmento de JSON a continuación modela los incumplimientos reportados para un solo período y categoría. La nueva propiedad es una lista de objetos `PerformanceFailure`. El objeto `PerformanceFailure` tiene las siguientes propiedades: Esta extensión introduce la propiedad `performanceFailures` a la sección `implementation` de una entrega de OCDS. `category` - un campo de texto libre utilizado para describir la categoría de incumplimientos que se reportan `events` - un campo numérico utilizado para indicar el número de eventos de incumplimiento en el período y la categoría que se reporta `penaltyContracted` - un campo de texto libre que se utiliza para describir la penalización o la reducción definida en el contrato para el número, la categoría y el período de los incumplimientos que se reportan `penaltyImposed` - un campo de texto libre que se utiliza para describir la penalización o la reducción definida en el contrato para el número, la categoría y el período de los incumplimientos que se reportan `penaltyPaid` - un campo booleano que indica si la penalización impuesta ha sido pagada. Un valor de `true` indica que la penalización ha sido pagada `period` - un objeto `period` de OCDS que define el período de reporte aplicable a los incumplimientos que se informan 