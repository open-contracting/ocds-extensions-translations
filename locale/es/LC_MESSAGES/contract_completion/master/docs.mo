��                        �  �   �  D   �  V   &  S   }  Q   �  �   #  
   
  
     e      z   �  .     >   0  	   o     y     �  {   �       ;    �   U  k  .	  �   �
  (   O  �   x  �     �   �  e   �  =   �  6   7  ,   n  �  �    t  F   v  \   �  Z     b   u    �  
   �  
   �  o     �   t  1   �  D   ,     q     �     �  {   �     (  ,  /  �   \  �  L  �   �  /   �  �   �  �   �  �   7  i   4  E   �  B   �  ;   '   **Amendments** can be described using the `contracts.amendments` array, and with past values provided using the OCDS [releases model as described here](http://standard.open-contracting.org/latest/en/implementation/amendments/). **Contract documents** can be linked to under `contracts.documents`. **Details of payments** can be provided under `contracts.implementation.transactions`. **Performance reports** can be provided under `contracts.implementation.documents`. **Progress details** can be provided using `contracts.implementation.milestones`. **Supplier details**  should be recorded within the `awards` section, linked via `contracts.awardID` (even if you are only releasing information at the contract stage, you may provide information in the tender and award sections). 2020-04-24 2020-06-04 A release that contains a confirmed end date, final value, and the explanation of variation in these. A release that includes an amendment to the contract to increase the total value, as well as initial payment transactions; A release that provides details of a contract; Add `minProperties`, `minItems` and/or `minLength` properties. Changelog Contracts completion Example In the Excel file, it is possible to see three releases describing the three key moments from the same contracting process. Issues Milestones may have a `status` of 'scheduled', 'met', 'notMet' or 'partiallyMet'. By providing at least one milestone for a contract, and then ensuring `milestones.status` is updated when `implementation.endDate` you can indicate whether a contract ended with successful delivery of all milestones and deliverables. Note the difference between the contract `period` and `value` (as agreed in the contract, or amended contract), and the implementation `finalValue` and `endDate`, along with the explanation provided of this variance. OCDS contains many existing fields that can be used as part of a Contracts Register. These are documented [in the schema reference](http://standard.open-contracting.org/latest/en/schema/reference/). This extension does not modify any of these fields. However, the following list is provided for convenience of those considering the design of a contracts register: Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Review normative and non-normative words The Open Contracting Data Standard can be used to provide information on all stages of a contracting process, from planning through to implementation. The [examples](https://github.com/open-contracting-extensions/ocds_contract_completion_extension/tree/master/examples) directory contains a full worked example with: This extension introduces four fields that can be used at the end of a contracting process to provide details of the final date and value of the contract, and, where there is variation, to provide a justification of this. This extension was originally discussed in <https://github.com/open-contracting/standard/issues/703>. This is also provided as an OCDS record and as an Excel file. Using existing OCDS fields within a contracts register Using milestones to show contract completion Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-07-31 13:34-0400
PO-Revision-Date: 2019-03-14 18:30+0000
Last-Translator: Maria Esther Cervantes <mcervantes@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **Enmiendas** pueden describirse utilizando la lista `contracts.amendments`, y con los valores anteriores proporcionados mediante el OCDS [modelo de entregas como se describe aquí](http://standard.open-contracting.org/latest/en/implementation/amendments/). **Documentos del contrato** se puede enlazar en `contracts.documents`. **Detalles de los pagos** se pueden proporcionar en `contracts.implementation.transactions`. **Reportes de desempeño** se pueden proporcionar en `contracts.implementation.documents`. **Los detalles del progreso** se pueden proporcionar usando `contracts.implementation.milestones`. **Los detalles del proveedor** deben registrarse dentro de la sección  `awards`, enlazada a través de` contract.awardID` (incluso si solo está publicando información en la etapa del contrato, puede proporcionar información en las secciones de licitación y adjudicación). 2020-04-24 2020-06-04 Un lanzamiento que contiene una fecha final confirmada, el valor final y la explicación de variación en ellas Un lanzamiento que incluye una enmienda al contrato para incrementar el valor total, así como el valor inicial de las transacciones; Un lanzamiento que da detalles sobre un contrato; Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Registro de cambios Finalización de los contratos Ejemplo En el archivo Excel, es posible ver tres entregas que describen los tres momentos clave del mismo proceso de contratación. Issues Los hitos pueden tener un `status` de 'scheduled', 'met', 'notMet' o 'partiallyMet'. Al dar al menos un hito por contrato, y asegurar que `milestone/status` se actualice cuando `implementation/endDate` se puede indicar que un contrato terminó con la entrega exitosa de todos los hitos y entregables. Observe la diferencia entre `period` y `value` del contrato (según lo acordado en el contrato, o en el contrato modificado o enmendado), y el `finalValue` y  `endDate`,  de la implementación, junto con la explicación de esta diferencia. El OCDS tiene muchos campos que pueden usarse como parte de un Registro de Contratos. Estos están documentados en el  [esquema](http://standard.opencontracting.org/latest/es/schema/reference/). Esta extensión no modifica ninguno de estos campos. De cualquier manera, la siguiente lista se da para la conveniencia de las personas que están considerado el diseño de un registro de contratos.  Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Revisar las palabras normativas y no-normativas El Estándar de Datos de Contrataciones Abiertas se puede usar para dar información sobre todas las etapas del proceso de contrataciones, desde la planeación hasta la implementación. El directorio de [ejemplos](https://github.com/open-contracting-extensions/ocds_contract_completion_extension/tree/master/examples) contiene un completo ejemplo práctico con: Esta extensión introduce cuatro campos que pueden usarse al final de un proceso de contratación para dar detalles sobre la fecha final y valor del contrato, también se pueden utilizar cuando hay variaciones para dar una justificación de las mismas. Esta extensión se discutió originalmente en  <https://github.com/open-contracting/standard/issues/703>. Esto también se proporciona como registro OCDS y como archivo Excel. Utilizar campos OCDS existentes dentro de un registro de contratos Utilizar hitos para mostrar la finalización de un contrato 